const std = @import("std");
const rknn = @import("rknn").rknn_api;
const rknn_matmul_api = @import("rknn").rknn_matmul_api;

fn check_err(ret: c_int, msg: []const u8) !void {
    if (ret != 0) {
        std.debug.print("{s} failed: {}\n", .{ msg, ret });
        return error.RKNNError;
    }
}

pub fn main() !void {
    const M: i32 = 4;
    const K: i32 = 64;
    const N: i32 = 32;

    std.debug.print("MatMul M={d}, K={d}, N={d}\n", .{ M, K, N });

    var ctx: rknn_matmul_api.rknn_matmul_ctx = undefined;
    var info: rknn_matmul_api.rknn_matmul_info = .{};
    info.M = M;
    info.K = K;
    info.N = N;
    info.type = rknn.RKNN_TENSOR_FLOAT16;

    var io_attr: rknn_matmul_api.rknn_matmul_io_attr = .{};
    var ret = rknn_matmul_api.rknn_matmul_create(&ctx, &info, &io_attr);
    _ = &ret;
    try check_err(ret, "rknn_matmul_create");

    const A: *rknn.rknn_tensor_mem = rknn.rknn_create_mem(ctx, io_attr.A.size);
    const B: *rknn.rknn_tensor_mem = rknn.rknn_create_mem(ctx, io_attr.B.size);
    const C: *rknn.rknn_tensor_mem = rknn.rknn_create_mem(ctx, io_attr.C.size);

    for (0..io_attr.A.dims[0]) |i| {
        for (0..io_attr.A.dims[1]) |j| {
            const a_ptr = @as(
                [*]f16,
                @ptrCast(@alignCast(A.*.virt_addr.?)),
            );
            a_ptr[i * io_attr.A.dims[1] + j] = 2.0;
        }
    }

    for (0..io_attr.B.dims[0]) |i| {
        for (0..io_attr.B.dims[1]) |j| {
            const b_ptr = @as(
                [*]f16,
                @ptrCast(@alignCast(B.*.virt_addr.?)),
            );
            b_ptr[i * io_attr.B.dims[1] + j] = 2.0;
        }
    }

    ret = rknn_matmul_api.rknn_matmul_set_io_mem(ctx, A, &io_attr.A);
    try check_err(ret, "rknn_matmul_set_io_mem");

    ret = rknn_matmul_api.rknn_matmul_set_io_mem(ctx, B, &io_attr.B);
    try check_err(ret, "rknn_matmul_set_io_mem");

    ret = rknn_matmul_api.rknn_matmul_set_io_mem(ctx, C, &io_attr.C);
    try check_err(ret, "rknn_matmul_set_io_mem");

    ret = rknn_matmul_api.rknn_matmul_run(ctx);
    try check_err(ret, "rknn_matmul_run");

    for (0..io_attr.C.dims[0]) |i| {
        for (0..io_attr.C.dims[1]) |j| {
            const c_ptr = @as(
                [*]f32,
                @ptrCast(@alignCast(C.*.virt_addr.?)),
            );
            std.debug.assert(c_ptr[i * io_attr.C.dims[1] + j] == 256.0);
        }
    }

    std.debug.print("Rknn matmul zig example\n", .{});
}
