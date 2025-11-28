const std = @import("std");
const rknn = @import("rknn").rknn_api;
const zigimg = @import("zigimg");

fn check_err(ret: c_int, msg: []const u8) !void {
    if (ret != 0) {
        std.debug.print("{s} failed: {}\n", .{ msg, ret });
        return error.RKNNError;
    }
}

pub fn loadModel(alloc: std.mem.Allocator, path: []const u8) ![]u8 {
    const file = try std.fs.cwd().openFile(path, .{});
    defer file.close();

    const file_size = try file.getEndPos();
    const buffer = try alloc.alloc(u8, file_size);
    errdefer alloc.free(buffer);

    _ = try file.read(buffer[0..file_size]);
    return buffer;
}

fn iou(box1: [4]f32, box2: [4]f32) f32 {
    const x1 = @max(box1[0], box2[0]);
    const y1 = @max(box1[1], box2[1]);
    const x2 = @min(box1[2], box2[2]);
    const y2 = @min(box1[3], box2[3]);

    const w = @max(0.0, x2 - x1);
    const h = @max(0.0, y2 - y1);

    const inter = w * h;
    const area1 = (box1[2] - box1[0]) * (box1[3] - box1[1]);
    const area2 = (box2[2] - box2[0]) * (box2[3] - box2[1]);

    return inter / (area1 + area2 - inter);
}

fn nms(alloc: std.mem.Allocator, boxes: [][4]f32, scores: []f32, iou_thres: f32) ![]usize {
    const N = scores.len;
    std.mem.sort(f32, scores, {}, comptime std.sort.desc(f32));

    var keep = try alloc.alloc(usize, N);
    defer alloc.free(keep);
    var keep_count: usize = 0;

    for (0..N) |idx| {
        var discard = false;
        for (keep[0..keep_count]) |k| {
            if (iou(boxes[idx], boxes[k]) > iou_thres) {
                discard = true;
                break;
            }
        }
        if (!discard) {
            keep[keep_count] = idx;
            keep_count += 1;
        }
    }

    const result = try alloc.alloc(usize, keep_count);
    @memcpy(result, keep[0..keep_count]);

    return result;
}

fn drawRect(pixels: []zigimg.color.Rgb24, width: usize, height: usize, x1: usize, y1: usize, x2: usize, y2: usize) void {
    const sx = std.math.clamp(x1, 0, width - 1);
    const sy = std.math.clamp(y1, 0, height - 1);
    const ex = std.math.clamp(x2, 0, width - 1);
    const ey = std.math.clamp(y2, 0, height - 1);

    // top + bottom border
    for (sx..ex) |x| {
        pixels[sy * width + x] = .{ .r = 0, .g = 255, .b = 0 };
        pixels[ey * width + x] = .{ .r = 0, .g = 255, .b = 0 };
    }

    // left + right border
    for (sy..ey) |y| {
        pixels[y * width + sx] = .{ .r = 0, .g = 255, .b = 0 };
        pixels[y * width + ex] = .{ .r = 0, .g = 255, .b = 0 };
    }
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const alloc = gpa.allocator();

    var ctx: rknn.rknn_context = undefined;
    const model_data = try loadModel(alloc, "./yolov8n_100e_full.rknn");
    defer alloc.free(model_data);
    var ret = rknn.rknn_init(&ctx, model_data.ptr, @intCast(model_data.len), 0, null);
    try check_err(ret, "rknn_init");

    var io_num: rknn.rknn_input_output_num = undefined;
    ret = rknn.rknn_query(ctx, rknn.RKNN_QUERY_IN_OUT_NUM, &io_num, @sizeOf(rknn.rknn_input_output_num));
    try check_err(ret, "RKNN_QUERY_IN_OUT_NUM");
    std.debug.print("Num of inputs: {d}\n", .{io_num.n_input});
    std.debug.print("Num of outputs: {d}\n", .{io_num.n_output});

    const input_attrs = try alloc.alloc(rknn.rknn_tensor_attr, io_num.n_input);
    defer alloc.free(input_attrs);
    for (input_attrs, 0..) |*attr, i| {
        attr.* = .{};
        attr.index = @intCast(i);
        ret = rknn.rknn_query(ctx, rknn.RKNN_QUERY_INPUT_ATTR, attr, @sizeOf(rknn.rknn_tensor_attr));
        try check_err(ret, "RKNN_QUERY_INPUT_ATTR");

        // Print input dimensions
        std.debug.print("Input {d} dims: ", .{i});
        for (0..attr.n_dims) |j| {
            std.debug.print("{d} ", .{attr.dims[j]});
        }
        std.debug.print("\n", .{});
    }

    const out_attrs = try alloc.alloc(rknn.rknn_tensor_attr, io_num.n_input);
    defer alloc.free(out_attrs);
    for (out_attrs, 0..) |*attr, i| {
        attr.* = .{};
        attr.index = @intCast(i);
        ret = rknn.rknn_query(ctx, rknn.RKNN_QUERY_OUTPUT_ATTR, attr, @sizeOf(rknn.rknn_tensor_attr));
        try check_err(ret, "RKNN_QUERY_OUTPUT_ATTR");

        // Print input dimensions
        std.debug.print("Output type: {d}\n", .{attr.type});
        std.debug.print("Output dims: {d}\n", .{i});
        for (0..attr.n_dims) |j| {
            std.debug.print("{d} ", .{attr.dims[j]});
        }
        std.debug.print("\n", .{});
    }

    var read_buffer: [zigimg.io.DEFAULT_BUFFER_SIZE]u8 = undefined;
    var image = try zigimg.Image.fromFilePath(alloc, @constCast("./test_images/test_input_640x640_1.jpg"), read_buffer[0..]);
    defer image.deinit(alloc);

    try image.convert(alloc, .rgb24);
    const orig_w = image.width;
    const orig_h = image.height;
    std.debug.print("Original image: {d}x{d}\n", .{ orig_w, orig_h });

    const pixels = image.pixels.rgb24;
    var normalized: [640 * 640 * 3]f32 = undefined;
    for (pixels, 0..) |px, i| {
        const r: f32 = @floatFromInt(px.r);
        const g: f32 = @floatFromInt(px.g);
        const b: f32 = @floatFromInt(px.b);
        normalized[i * 3 + 0] = r / 255.0;
        normalized[i * 3 + 1] = g / 255.0;
        normalized[i * 3 + 2] = b / 255.0;
    }

    const inputs = try alloc.alloc(rknn.rknn_input, io_num.n_input);
    defer alloc.free(inputs);
    for (0..io_num.n_input) |i| {
        inputs[i] = rknn.rknn_input{
            .index = @intCast(i),
            .type = rknn.RKNN_TENSOR_FLOAT32,
            .buf = &normalized[0],
            .size = @sizeOf(f32) * normalized.len,
            .fmt = rknn.RKNN_TENSOR_NHWC,
        };
    }

    ret = rknn.rknn_inputs_set(ctx, io_num.n_input, inputs.ptr);
    try check_err(ret, "rknn_input_set");

    ret = rknn.rknn_run(ctx, null);
    try check_err(ret, "rknn_run");

    const outputs = try alloc.alloc(rknn.rknn_output, io_num.n_output);
    defer alloc.free(outputs);
    for (0..io_num.n_output) |i| {
        outputs[i] = .{
            .want_float = 1,
        };
    }

    ret = rknn.rknn_outputs_get(ctx, io_num.n_output, outputs.ptr, null);
    try check_err(ret, "rknn_outputs_get");

    for (0..io_num.n_output) |i| {
        std.debug.print("Output shape: {d}\n", .{outputs[i].size});
    }

    const N = 8400;
    // const C = 5;
    const buf_f32: [*]f32 = @ptrCast(@alignCast(outputs[0].buf.?));

    // center x, center y, w, h
    var cxcywh: [N][4]f32 = undefined;
    var scores: [N]f32 = undefined;

    for (0..N) |i| {
        cxcywh[i][0] = buf_f32[0 * N + i]; // cx
        cxcywh[i][1] = buf_f32[1 * N + i]; // cy
        cxcywh[i][2] = buf_f32[2 * N + i]; // w
        cxcywh[i][3] = buf_f32[3 * N + i]; // h
        scores[i] = buf_f32[4 * N + i]; // score
    }

    const conf_thres: f32 = 0.10;
    // Count how many boxes pass the threshold
    var keep_count: usize = 0;
    for (scores) |s| {
        if (s > conf_thres) keep_count += 1;
    }

    std.debug.print("Number of boxes pass threshold: {d}\n", .{keep_count});

    var boxes_xywh = try alloc.alloc([4]f32, keep_count);
    defer alloc.free(boxes_xywh);
    var filtered_scores = try alloc.alloc(f32, keep_count);
    defer alloc.free(filtered_scores);

    var idx: usize = 0;
    for (scores, 0..) |s, i| {
        if (s > conf_thres) {
            boxes_xywh[idx] = cxcywh[i];
            filtered_scores[idx] = s;
            idx += 1;
        }
    }

    const boxes_xyxy: [][4]f32 = boxes_xywh;
    for (boxes_xyxy) |*box| {
        const cx = box[0];
        const cy = box[1];
        const w = box[2];
        const h = box[3];

        box[0] = cx - w / 2;
        box[1] = cy - h / 2;
        box[2] = cx + w / 2;
        box[3] = cy + h / 2;
    }

    const keep_indices = try nms(alloc, boxes_xyxy, filtered_scores, 0.45);
    defer alloc.free(keep_indices);
    std.debug.print("Keep indices len: {d}\n", .{keep_indices.len});
    var final_boxes = try alloc.alloc([4]f32, keep_indices.len);
    defer alloc.free(final_boxes);
    var final_scores = try alloc.alloc(f32, keep_indices.len);
    defer alloc.free(final_scores);

    for (keep_indices, 0..) |ind, i| {
        final_boxes[i] = boxes_xyxy[ind];
        final_scores[i] = filtered_scores[ind];
    }

    for (final_boxes, 0..) |box, i| {
        const x1: usize = @intFromFloat(box[0]);
        const y1: usize = @intFromFloat(box[1]);
        const x2: usize = @intFromFloat(box[2]);
        const y2: usize = @intFromFloat(box[3]);
        const conf = final_scores[i];
        _ = conf;

        drawRect(pixels, 640, 640, x1, y1, x2, y2);
    }

    var write_buffer: [zigimg.io.DEFAULT_BUFFER_SIZE]u8 = undefined;
    try image.writeToFilePath(alloc, "output.png", write_buffer[0..], .{ .png = .{} });
    std.debug.print("Saved output.png\n", .{});

    std.debug.print("Rknn zig example\n", .{});
}
