const rknn_api = @import("rknn_api.zig");

pub const rknn_custom_op_interal_context = u64;
pub const RKNN_TARGET_TYPE_CPU: c_int = 1;
pub const RKNN_TARGET_TYPE_GPU: c_int = 2;
pub const RKNN_TARGET_TYPE_MAX: c_int = 3;
pub const enum__rknn_target_type = c_uint;
pub const rknn_target_type = enum__rknn_target_type;
pub const struct__rknn_gpu_op_context = extern struct {
    cl_context: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    cl_command_queue: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    cl_kernel: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const rknn_gpu_op_context = struct__rknn_gpu_op_context;
pub const struct__rknn_custom_op_context = extern struct {
    target: rknn_target_type = @import("std").mem.zeroes(rknn_target_type),
    internal_ctx: rknn_custom_op_interal_context = @import("std").mem.zeroes(rknn_custom_op_interal_context),
    gpu_ctx: rknn_gpu_op_context = @import("std").mem.zeroes(rknn_gpu_op_context),
    priv_data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const rknn_custom_op_context = struct__rknn_custom_op_context;
pub const struct__rknn_custom_op_tensor = extern struct {
    attr: rknn_api.rknn_tensor_attr = @import("std").mem.zeroes(rknn_api.rknn_tensor_attr),
    mem: rknn_api.rknn_tensor_mem = @import("std").mem.zeroes(rknn_api.rknn_tensor_mem),
};
pub const rknn_custom_op_tensor = struct__rknn_custom_op_tensor;
pub const struct__rknn_custom_op_attr = extern struct {
    name: [256]u8 = @import("std").mem.zeroes([256]u8),
    dtype: rknn_api.rknn_tensor_type = @import("std").mem.zeroes(rknn_api.rknn_tensor_type),
    n_elems: u32 = @import("std").mem.zeroes(u32),
    data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const rknn_custom_op_attr = struct__rknn_custom_op_attr;
pub const struct__rknn_custom_op = extern struct {
    version: u32 = @import("std").mem.zeroes(u32),
    target: rknn_target_type = @import("std").mem.zeroes(rknn_target_type),
    op_type: [256]u8 = @import("std").mem.zeroes([256]u8),
    cl_kernel_name: [256]u8 = @import("std").mem.zeroes([256]u8),
    cl_kernel_source: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    cl_source_size: u64 = @import("std").mem.zeroes(u64),
    cl_build_options: [256]u8 = @import("std").mem.zeroes([256]u8),
    init: ?*const fn ([*c]rknn_custom_op_context, [*c]rknn_custom_op_tensor, u32, [*c]rknn_custom_op_tensor, u32) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn ([*c]rknn_custom_op_context, [*c]rknn_custom_op_tensor, u32, [*c]rknn_custom_op_tensor, u32) callconv(.c) c_int),
    prepare: ?*const fn ([*c]rknn_custom_op_context, [*c]rknn_custom_op_tensor, u32, [*c]rknn_custom_op_tensor, u32) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn ([*c]rknn_custom_op_context, [*c]rknn_custom_op_tensor, u32, [*c]rknn_custom_op_tensor, u32) callconv(.c) c_int),
    compute: ?*const fn ([*c]rknn_custom_op_context, [*c]rknn_custom_op_tensor, u32, [*c]rknn_custom_op_tensor, u32) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn ([*c]rknn_custom_op_context, [*c]rknn_custom_op_tensor, u32, [*c]rknn_custom_op_tensor, u32) callconv(.c) c_int),
    compute_native: ?*const fn ([*c]rknn_custom_op_context, [*c]rknn_custom_op_tensor, u32, [*c]rknn_custom_op_tensor, u32) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn ([*c]rknn_custom_op_context, [*c]rknn_custom_op_tensor, u32, [*c]rknn_custom_op_tensor, u32) callconv(.c) c_int),
    destroy: ?*const fn ([*c]rknn_custom_op_context) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn ([*c]rknn_custom_op_context) callconv(.c) c_int),
};
pub const rknn_custom_op = struct__rknn_custom_op;
pub const get_custom_op_func = ?*const fn (...) callconv(.c) [*c]rknn_custom_op;
pub extern fn rknn_register_custom_ops(ctx: rknn_api.rknn_context, op: [*c]rknn_custom_op, custom_op_num: u32) c_int;
pub extern fn rknn_custom_op_get_op_attr(op_ctx: [*c]rknn_custom_op_context, attr_name: [*c]const u8, op_attr: [*c]rknn_custom_op_attr) void;
