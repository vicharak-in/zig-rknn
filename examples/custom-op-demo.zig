// NOTE: This is just a skeleton on how to use the custom operator api in zig.
const std = @import("std");
const rknn = @import("rknn").rknn_custom_op;

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

export fn custom_op_init_callback(op_ctx: [*c]rknn.rknn_custom_op_context, inputs: [*c]rknn.rknn_custom_op_tensor, n_inputs: u32, outputs: [*c]rknn.rknn_custom_op_tensor, n_outputs: u32) callconv(.c) c_int {
    _ = op_ctx;
    _ = inputs;
    _ = n_inputs;
    _ = outputs;
    _ = n_outputs;
    std.debug.print("rknn custom operator callback\n", .{});
    return 0;
}

fn custom_op_compute(op_ctx: [*c]rknn.rknn_custom_op_context, inputs: [*c]rknn.rknn_custom_op_tensor, n_inputs: u32, outputs: [*c]rknn.rknn_custom_op_tensor, n_outputs: u32) callconv(.c) c_int {
    _ = op_ctx;
    _ = inputs;
    _ = n_inputs;
    _ = outputs;
    _ = n_outputs;
    std.debug.print("rknn custom operator compute\n", .{});
    return 0;
}

fn custom_op_destroy_callback(op_ctx: [*c]rknn.rknn_custom_op_context) callconv(.c) c_int {
    _ = op_ctx;
    std.debug.print("rknn custom operator destroy callback\n", .{});
    return 0;
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const alloc = gpa.allocator();

    var ctx: rknn.rknn_context = undefined;
    const model_data = try loadModel(alloc, "./yolov8n_100e_full.rknn");
    var ret = rknn.rknn_init(&ctx, model_data.ptr, @intCast(model_data.len), 0, null);
    try check_err(ret, "rknn_init");

    var user_op: [1]rknn.rknn_custom_op = undefined;
    user_op[0] = .{};
    const op_name = "cstOperator";
    std.mem.copyForwards(
        u8,
        user_op[0].op_type[0..op_name.len],
        op_name,
    );
    user_op[0].version = 1;
    user_op[0].target = rknn.RKNN_TARGET_TYPE_CPU;
    user_op[0].init = custom_op_init_callback;
    user_op[0].compute = custom_op_compute;
    user_op[0].destroy = custom_op_destroy_callback;

    ret = rknn.rknn_register_custom_ops(ctx, &user_op[0], 1);
    try check_err(ret, "rknn_register_custom_ops");

    std.debug.print("Rknn custom op zig example\n", .{});
}
