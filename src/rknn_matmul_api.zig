const rknn_api = @import("rknn_api.zig");

pub const rknn_matmul_ctx = rknn_api.rknn_context;
pub const RKNN_QUANT_TYPE_PER_LAYER_SYM: c_int = 0;
pub const RKNN_QUANT_TYPE_PER_LAYER_ASYM: c_int = 1;
pub const RKNN_QUANT_TYPE_PER_CHANNEL_SYM: c_int = 2;
pub const RKNN_QUANT_TYPE_PER_CHANNEL_ASYM: c_int = 3;
pub const RKNN_QUANT_TYPE_PER_GROUP_SYM: c_int = 4;
pub const RKNN_QUANT_TYPE_PER_GROUP_ASYM: c_int = 5;
pub const enum__rknn_matmul_quant_type = c_uint;
pub const rknn_matmul_quant_type = enum__rknn_matmul_quant_type;
pub const struct__rknn_quant_params = extern struct {
    name: [256]u8 = @import("std").mem.zeroes([256]u8),
    scale: [*c]f32 = @import("std").mem.zeroes([*c]f32),
    scale_len: i32 = @import("std").mem.zeroes(i32),
    zp: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    zp_len: i32 = @import("std").mem.zeroes(i32),
};
pub const rknn_quant_params = struct__rknn_quant_params;
pub const RKNN_FLOAT16_MM_FLOAT16_TO_FLOAT32: c_int = 1;
pub const RKNN_INT8_MM_INT8_TO_INT32: c_int = 2;
pub const RKNN_INT8_MM_INT8_TO_INT8: c_int = 3;
pub const RKNN_FLOAT16_MM_FLOAT16_TO_FLOAT16: c_int = 4;
pub const RKNN_FLOAT16_MM_INT8_TO_FLOAT32: c_int = 5;
pub const RKNN_FLOAT16_MM_INT8_TO_FLOAT16: c_int = 6;
pub const RKNN_FLOAT16_MM_INT4_TO_FLOAT32: c_int = 7;
pub const RKNN_FLOAT16_MM_INT4_TO_FLOAT16: c_int = 8;
pub const RKNN_INT8_MM_INT8_TO_FLOAT32: c_int = 9;
pub const RKNN_INT4_MM_INT4_TO_INT16: c_int = 10;
pub const RKNN_INT8_MM_INT4_TO_INT32: c_int = 11;
pub const RKNN_FLOAT16_MM_INT4_TO_BFLOAT16: c_int = 12;
pub const RKNN_INT8_MM_INT4_TO_FLOAT16: c_int = 15;
pub const enum__rknn_matmul_type = c_uint;
pub const rknn_matmul_type = enum__rknn_matmul_type;
pub fn get_matmul_type_string(arg_type: rknn_matmul_type) callconv(.c) [*c]const u8 {
    var @"type" = arg_type;
    _ = &@"type";
    while (true) {
        switch (@"type") {
            @as(c_uint, @bitCast(@as(c_int, 1))) => return "RKNN_FLOAT16_MM_FLOAT16_TO_FLOAT32",
            @as(c_uint, @bitCast(@as(c_int, 2))) => return "RKNN_INT8_MM_INT8_TO_INT32",
            @as(c_uint, @bitCast(@as(c_int, 3))) => return "RKNN_INT8_MM_INT8_TO_INT8",
            @as(c_uint, @bitCast(@as(c_int, 4))) => return "RKNN_FLOAT16_MM_FLOAT16_TO_FLOAT16",
            @as(c_uint, @bitCast(@as(c_int, 5))) => return "RKNN_FLOAT16_MM_INT8_TO_FLOAT32",
            @as(c_uint, @bitCast(@as(c_int, 6))) => return "RKNN_FLOAT16_MM_INT8_TO_FLOAT16",
            @as(c_uint, @bitCast(@as(c_int, 10))) => return "RKNN_INT4_MM_INT4_TO_INT16",
            @as(c_uint, @bitCast(@as(c_int, 7))) => return "RKNN_FLOAT16_MM_INT4_TO_FLOAT32",
            @as(c_uint, @bitCast(@as(c_int, 8))) => return "RKNN_FLOAT16_MM_INT4_TO_FLOAT16",
            @as(c_uint, @bitCast(@as(c_int, 11))) => return "RKNN_INT8_MM_INT4_TO_INT32",
            @as(c_uint, @bitCast(@as(c_int, 9))) => return "RKNN_INT8_MM_INT8_TO_FLOAT32",
            @as(c_uint, @bitCast(@as(c_int, 12))) => return "RKNN_FLOAT16_MM_INT4_TO_BFLOAT16",
            else => return "UNKNOW",
        }
        break;
    }
    return null;
}
pub const struct__rknn_matmul_tensor_attr = extern struct {
    name: [256]u8 = @import("std").mem.zeroes([256]u8),
    n_dims: u32 = @import("std").mem.zeroes(u32),
    dims: [16]u32 = @import("std").mem.zeroes([16]u32),
    size: u32 = @import("std").mem.zeroes(u32),
    type: rknn_api.rknn_tensor_type = @import("std").mem.zeroes(rknn_api.rknn_tensor_type),
};
pub const rknn_matmul_tensor_attr = struct__rknn_matmul_tensor_attr;
pub const struct__rknn_matmul_io_attr = extern struct {
    A: rknn_matmul_tensor_attr = @import("std").mem.zeroes(rknn_matmul_tensor_attr),
    B: rknn_matmul_tensor_attr = @import("std").mem.zeroes(rknn_matmul_tensor_attr),
    C: rknn_matmul_tensor_attr = @import("std").mem.zeroes(rknn_matmul_tensor_attr),
};
pub const rknn_matmul_io_attr = struct__rknn_matmul_io_attr;
pub const struct__rknn_matmul_shape = extern struct {
    M: i32 = @import("std").mem.zeroes(i32),
    K: i32 = @import("std").mem.zeroes(i32),
    N: i32 = @import("std").mem.zeroes(i32),
};
pub const rknn_matmul_shape = struct__rknn_matmul_shape;
pub const RKNN_MM_LAYOUT_NORM: c_int = 0;
pub const RKNN_MM_LAYOUT_NATIVE: c_int = 1;
pub const RKNN_MM_LAYOUT_TP_NORM: c_int = 2;
pub const rknn_matmul_layout = c_uint;
pub const struct_rknn_matmul_info_t = extern struct {
    M: i32 = @import("std").mem.zeroes(i32),
    K: i32 = @import("std").mem.zeroes(i32),
    N: i32 = @import("std").mem.zeroes(i32),
    type: rknn_matmul_type = @import("std").mem.zeroes(rknn_matmul_type),
    B_layout: i16 = @import("std").mem.zeroes(i16),
    B_quant_type: i16 = @import("std").mem.zeroes(i16),
    AC_layout: i16 = @import("std").mem.zeroes(i16),
    AC_quant_type: i16 = @import("std").mem.zeroes(i16),
    iommu_domain_id: i32 = @import("std").mem.zeroes(i32),
    group_size: i16 = @import("std").mem.zeroes(i16),
    reserved: [34]i8 = @import("std").mem.zeroes([34]i8),
};
pub const rknn_matmul_info = struct_rknn_matmul_info_t;
pub extern fn rknn_matmul_create(ctx: [*c]rknn_matmul_ctx, info: [*c]rknn_matmul_info, io_attr: [*c]rknn_matmul_io_attr) c_int;
pub extern fn rknn_matmul_create_dynamic_shape(ctx: [*c]rknn_matmul_ctx, info: [*c]rknn_matmul_info, shape_num: c_int, dynamic_shapes: [*c]rknn_matmul_shape, io_attrs: [*c]rknn_matmul_io_attr) c_int;
pub extern fn rknn_matmul_set_io_mem(ctx: rknn_matmul_ctx, mem: [*c]rknn_api.rknn_tensor_mem, attr: [*c]rknn_matmul_tensor_attr) c_int;
pub extern fn rknn_matmul_set_core_mask(context: rknn_matmul_ctx, core_mask: rknn_api.rknn_core_mask) c_int;
pub extern fn rknn_matmul_set_quant_params(context: rknn_matmul_ctx, params: [*c]rknn_quant_params) c_int;
pub extern fn rknn_matmul_get_quant_params(ctx: rknn_matmul_ctx, params: [*c]rknn_quant_params, scale: [*c]f32) c_int;
pub extern fn rknn_matmul_set_dynamic_shape(ctx: rknn_matmul_ctx, shape: [*c]rknn_matmul_shape) c_int;
pub extern fn rknn_matmul_run(ctx: rknn_matmul_ctx) c_int;
pub extern fn rknn_matmul_destroy(ctx: rknn_matmul_ctx) c_int;
pub extern fn rknn_B_normal_layout_to_native_layout(B_input: ?*anyopaque, B_output: ?*anyopaque, K: c_int, N: c_int, info: [*c]rknn_matmul_info) c_int;
