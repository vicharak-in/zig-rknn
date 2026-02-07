pub const __builtin = @import("std").zig.c_translation.builtins;
pub const __helpers = @import("std").zig.c_translation.helpers;

pub const RKNN_FLAG_PRIOR_HIGH = @as(c_int, 0x00000000);
pub const RKNN_FLAG_PRIOR_MEDIUM = @as(c_int, 0x00000001);
pub const RKNN_FLAG_PRIOR_LOW = @as(c_int, 0x00000002);
pub const RKNN_FLAG_ASYNC_MASK = @as(c_int, 0x00000004);
pub const RKNN_FLAG_COLLECT_PERF_MASK = @as(c_int, 0x00000008);
pub const RKNN_FLAG_MEM_ALLOC_OUTSIDE = @as(c_int, 0x00000010);
pub const RKNN_FLAG_SHARE_WEIGHT_MEM = @as(c_int, 0x00000020);
pub const RKNN_FLAG_FENCE_IN_OUTSIDE = @as(c_int, 0x00000040);
pub const RKNN_FLAG_FENCE_OUT_OUTSIDE = @as(c_int, 0x00000080);
pub const RKNN_FLAG_COLLECT_MODEL_INFO_ONLY = @as(c_int, 0x00000100);
pub const RKNN_FLAG_INTERNAL_ALLOC_OUTSIDE = @as(c_int, 0x00000200);
pub const RKNN_FLAG_EXECUTE_FALLBACK_PRIOR_DEVICE_GPU = @as(c_int, 0x00000400);
pub const RKNN_FLAG_ENABLE_SRAM = @as(c_int, 0x00000800);
pub const RKNN_FLAG_SHARE_SRAM = @as(c_int, 0x00001000);
pub const RKNN_FLAG_DISABLE_PROC_HIGH_PRIORITY = @as(c_int, 0x00002000);
pub const RKNN_FLAG_DISABLE_FLUSH_INPUT_MEM_CACHE = @as(c_int, 0x00004000);
pub const RKNN_FLAG_DISABLE_FLUSH_OUTPUT_MEM_CACHE = __helpers.promoteIntLiteral(c_int, 0x00008000, .hex);
pub const RKNN_FLAG_MODEL_BUFFER_ZERO_COPY = __helpers.promoteIntLiteral(c_int, 0x00010000, .hex);
pub const RKNN_MEM_FLAG_ALLOC_NO_CONTEXT = __helpers.promoteIntLiteral(c_int, 0x00020000, .hex);
pub const RKNN_SUCC = @as(c_int, 0);
pub const RKNN_ERR_FAIL = -@as(c_int, 1);
pub const RKNN_ERR_TIMEOUT = -@as(c_int, 2);
pub const RKNN_ERR_DEVICE_UNAVAILABLE = -@as(c_int, 3);
pub const RKNN_ERR_MALLOC_FAIL = -@as(c_int, 4);
pub const RKNN_ERR_PARAM_INVALID = -@as(c_int, 5);
pub const RKNN_ERR_MODEL_INVALID = -@as(c_int, 6);
pub const RKNN_ERR_CTX_INVALID = -@as(c_int, 7);
pub const RKNN_ERR_INPUT_INVALID = -@as(c_int, 8);
pub const RKNN_ERR_OUTPUT_INVALID = -@as(c_int, 9);
pub const RKNN_ERR_DEVICE_UNMATCH = -@as(c_int, 10);
pub const RKNN_ERR_INCOMPATILE_PRE_COMPILE_MODEL = -@as(c_int, 11);
pub const RKNN_ERR_INCOMPATILE_OPTIMIZATION_LEVEL_VERSION = -@as(c_int, 12);
pub const RKNN_ERR_TARGET_PLATFORM_UNMATCH = -@as(c_int, 13);
pub const RKNN_MAX_DIMS = @as(c_int, 16);
pub const RKNN_MAX_NUM_CHANNEL = @as(c_int, 15);
pub const RKNN_MAX_NAME_LEN = @as(c_int, 256);
pub const RKNN_MAX_DYNAMIC_SHAPE_NUM = @as(c_int, 512);
pub const _rknn_query_cmd = enum__rknn_query_cmd;
pub const _rknn_tensor_type = enum__rknn_tensor_type;
pub const _rknn_tensor_qnt_type = enum__rknn_tensor_qnt_type;
pub const _rknn_tensor_format = enum__rknn_tensor_format;
pub const _rknn_core_mask = enum__rknn_core_mask;
pub const _rknn_input_output_num = struct__rknn_input_output_num;
pub const _rknn_tensor_attr = struct__rknn_tensor_attr;
pub const _rknn_input_range = struct__rknn_input_range;
pub const _rknn_perf_detail = struct__rknn_perf_detail;
pub const _rknn_perf_run = struct__rknn_perf_run;
pub const _rknn_sdk_version = struct__rknn_sdk_version;
pub const _rknn_mem_size = struct__rknn_mem_size;
pub const _rknn_custom_string = struct__rknn_custom_string;
pub const _rknn_tensor_mem_flags = enum__rknn_tensor_mem_flags;
pub const _rknn_mem_alloc_flags = enum__rknn_mem_alloc_flags;
pub const _rknn_mem_sync_mode = enum__rknn_mem_sync_mode;
pub const _rknn_tensor_memory = struct__rknn_tensor_memory;
pub const _rknn_input = struct__rknn_input;
pub const _rknn_output = struct__rknn_output;
pub const _rknn_init_extend = struct__rknn_init_extend;
pub const _rknn_run_extend = struct__rknn_run_extend;
pub const _rknn_output_extend = struct__rknn_output_extend;

pub const rknn_context = u64;
pub const RKNN_QUERY_IN_OUT_NUM: c_int = 0;
pub const RKNN_QUERY_INPUT_ATTR: c_int = 1;
pub const RKNN_QUERY_OUTPUT_ATTR: c_int = 2;
pub const RKNN_QUERY_PERF_DETAIL: c_int = 3;
pub const RKNN_QUERY_PERF_RUN: c_int = 4;
pub const RKNN_QUERY_SDK_VERSION: c_int = 5;
pub const RKNN_QUERY_MEM_SIZE: c_int = 6;
pub const RKNN_QUERY_CUSTOM_STRING: c_int = 7;
pub const RKNN_QUERY_NATIVE_INPUT_ATTR: c_int = 8;
pub const RKNN_QUERY_NATIVE_OUTPUT_ATTR: c_int = 9;
pub const RKNN_QUERY_NATIVE_NC1HWC2_INPUT_ATTR: c_int = 8;
pub const RKNN_QUERY_NATIVE_NC1HWC2_OUTPUT_ATTR: c_int = 9;
pub const RKNN_QUERY_NATIVE_NHWC_INPUT_ATTR: c_int = 10;
pub const RKNN_QUERY_NATIVE_NHWC_OUTPUT_ATTR: c_int = 11;
pub const RKNN_QUERY_DEVICE_MEM_INFO: c_int = 12;
pub const RKNN_QUERY_INPUT_DYNAMIC_RANGE: c_int = 13;
pub const RKNN_QUERY_CURRENT_INPUT_ATTR: c_int = 14;
pub const RKNN_QUERY_CURRENT_OUTPUT_ATTR: c_int = 15;
pub const RKNN_QUERY_CURRENT_NATIVE_INPUT_ATTR: c_int = 16;
pub const RKNN_QUERY_CURRENT_NATIVE_OUTPUT_ATTR: c_int = 17;
pub const RKNN_QUERY_CMD_MAX: c_int = 18;
pub const enum__rknn_query_cmd = c_uint;
pub const rknn_query_cmd = enum__rknn_query_cmd;
pub const RKNN_TENSOR_FLOAT32: c_int = 0;
pub const RKNN_TENSOR_FLOAT16: c_int = 1;
pub const RKNN_TENSOR_INT8: c_int = 2;
pub const RKNN_TENSOR_UINT8: c_int = 3;
pub const RKNN_TENSOR_INT16: c_int = 4;
pub const RKNN_TENSOR_UINT16: c_int = 5;
pub const RKNN_TENSOR_INT32: c_int = 6;
pub const RKNN_TENSOR_UINT32: c_int = 7;
pub const RKNN_TENSOR_INT64: c_int = 8;
pub const RKNN_TENSOR_BOOL: c_int = 9;
pub const RKNN_TENSOR_INT4: c_int = 10;
pub const RKNN_TENSOR_BFLOAT16: c_int = 11;
pub const RKNN_TENSOR_TYPE_MAX: c_int = 12;
pub const enum__rknn_tensor_type = c_uint;
pub const rknn_tensor_type = enum__rknn_tensor_type;
pub fn get_type_string(arg_type: rknn_tensor_type) callconv(.c) [*c]const u8 {
    var @"type" = arg_type;
    _ = &@"type";
    while (true) {
        switch (@"type") {
            @as(rknn_tensor_type, RKNN_TENSOR_FLOAT32) => return "FP32",
            @as(rknn_tensor_type, RKNN_TENSOR_FLOAT16) => return "FP16",
            @as(rknn_tensor_type, RKNN_TENSOR_INT8) => return "INT8",
            @as(rknn_tensor_type, RKNN_TENSOR_UINT8) => return "UINT8",
            @as(rknn_tensor_type, RKNN_TENSOR_INT16) => return "INT16",
            @as(rknn_tensor_type, RKNN_TENSOR_UINT16) => return "UINT16",
            @as(rknn_tensor_type, RKNN_TENSOR_INT32) => return "INT32",
            @as(rknn_tensor_type, RKNN_TENSOR_UINT32) => return "UINT32",
            @as(rknn_tensor_type, RKNN_TENSOR_INT64) => return "INT64",
            @as(rknn_tensor_type, RKNN_TENSOR_BOOL) => return "BOOL",
            @as(rknn_tensor_type, RKNN_TENSOR_INT4) => return "INT4",
            @as(rknn_tensor_type, RKNN_TENSOR_BFLOAT16) => return "BF16",
            else => return "UNKNOW",
        }
        break;
    }
    return undefined;
}
pub const RKNN_TENSOR_QNT_NONE: c_int = 0;
pub const RKNN_TENSOR_QNT_DFP: c_int = 1;
pub const RKNN_TENSOR_QNT_AFFINE_ASYMMETRIC: c_int = 2;
pub const RKNN_TENSOR_QNT_MAX: c_int = 3;
pub const enum__rknn_tensor_qnt_type = c_uint;
pub const rknn_tensor_qnt_type = enum__rknn_tensor_qnt_type;
pub fn get_qnt_type_string(arg_type: rknn_tensor_qnt_type) callconv(.c) [*c]const u8 {
    var @"type" = arg_type;
    _ = &@"type";
    while (true) {
        switch (@"type") {
            @as(rknn_tensor_qnt_type, RKNN_TENSOR_QNT_NONE) => return "NONE",
            @as(rknn_tensor_qnt_type, RKNN_TENSOR_QNT_DFP) => return "DFP",
            @as(rknn_tensor_qnt_type, RKNN_TENSOR_QNT_AFFINE_ASYMMETRIC) => return "AFFINE",
            else => return "UNKNOW",
        }
        break;
    }
    return undefined;
}
pub const RKNN_TENSOR_NCHW: c_int = 0;
pub const RKNN_TENSOR_NHWC: c_int = 1;
pub const RKNN_TENSOR_NC1HWC2: c_int = 2;
pub const RKNN_TENSOR_UNDEFINED: c_int = 3;
pub const RKNN_TENSOR_FORMAT_MAX: c_int = 4;
pub const enum__rknn_tensor_format = c_uint;
pub const rknn_tensor_format = enum__rknn_tensor_format;
pub const RKNN_NPU_CORE_AUTO: c_int = 0;
pub const RKNN_NPU_CORE_0: c_int = 1;
pub const RKNN_NPU_CORE_1: c_int = 2;
pub const RKNN_NPU_CORE_2: c_int = 4;
pub const RKNN_NPU_CORE_0_1: c_int = 3;
pub const RKNN_NPU_CORE_0_1_2: c_int = 7;
pub const RKNN_NPU_CORE_ALL: c_int = 65535;
pub const RKNN_NPU_CORE_UNDEFINED: c_int = 65536;
pub const enum__rknn_core_mask = c_uint;
pub const rknn_core_mask = enum__rknn_core_mask;
pub fn get_format_string(arg_fmt: rknn_tensor_format) callconv(.c) [*c]const u8 {
    var fmt = arg_fmt;
    _ = &fmt;
    while (true) {
        switch (fmt) {
            @as(rknn_tensor_format, RKNN_TENSOR_NCHW) => return "NCHW",
            @as(rknn_tensor_format, RKNN_TENSOR_NHWC) => return "NHWC",
            @as(rknn_tensor_format, RKNN_TENSOR_NC1HWC2) => return "NC1HWC2",
            @as(rknn_tensor_format, RKNN_TENSOR_UNDEFINED) => return "UNDEFINED",
            else => return "UNKNOW",
        }
        break;
    }
    return undefined;
}
pub const struct__rknn_input_output_num = extern struct {
    n_input: u32 = 0,
    n_output: u32 = 0,
};
pub const rknn_input_output_num = struct__rknn_input_output_num;
pub const struct__rknn_tensor_attr = extern struct {
    index: u32 = 0,
    n_dims: u32 = 0,
    dims: [16]u32 = @import("std").mem.zeroes([16]u32),
    name: [256]u8 = @import("std").mem.zeroes([256]u8),
    n_elems: u32 = 0,
    size: u32 = 0,
    fmt: rknn_tensor_format = @import("std").mem.zeroes(rknn_tensor_format),
    type: rknn_tensor_type = @import("std").mem.zeroes(rknn_tensor_type),
    qnt_type: rknn_tensor_qnt_type = @import("std").mem.zeroes(rknn_tensor_qnt_type),
    fl: i8 = 0,
    zp: i32 = 0,
    scale: f32 = 0,
    w_stride: u32 = 0,
    size_with_stride: u32 = 0,
    pass_through: u8 = 0,
    h_stride: u32 = 0,
};
pub const rknn_tensor_attr = struct__rknn_tensor_attr;
pub const struct__rknn_input_range = extern struct {
    index: u32 = 0,
    shape_number: u32 = 0,
    fmt: rknn_tensor_format = @import("std").mem.zeroes(rknn_tensor_format),
    name: [256]u8 = @import("std").mem.zeroes([256]u8),
    dyn_range: [512][16]u32 = @import("std").mem.zeroes([512][16]u32),
    n_dims: u32 = 0,
};
pub const rknn_input_range = struct__rknn_input_range;
pub const struct__rknn_perf_detail = extern struct {
    perf_data: [*c]u8 = null,
    data_len: u64 = 0,
};
pub const rknn_perf_detail = struct__rknn_perf_detail;
pub const struct__rknn_perf_run = extern struct {
    run_duration: i64 = 0,
};
pub const rknn_perf_run = struct__rknn_perf_run;
pub const struct__rknn_sdk_version = extern struct {
    api_version: [256]u8 = @import("std").mem.zeroes([256]u8),
    drv_version: [256]u8 = @import("std").mem.zeroes([256]u8),
};
pub const rknn_sdk_version = struct__rknn_sdk_version;
pub const struct__rknn_mem_size = extern struct {
    total_weight_size: u32 = 0,
    total_internal_size: u32 = 0,
    total_dma_allocated_size: u64 = 0,
    total_sram_size: u32 = 0,
    free_sram_size: u32 = 0,
    reserved: [10]u32 = @import("std").mem.zeroes([10]u32),
};
pub const rknn_mem_size = struct__rknn_mem_size;
pub const struct__rknn_custom_string = extern struct {
    string: [1024]u8 = @import("std").mem.zeroes([1024]u8),
};
pub const rknn_custom_string = struct__rknn_custom_string;
pub const RKNN_TENSOR_MEMORY_FLAGS_ALLOC_INSIDE: c_int = 1;
pub const RKNN_TENSOR_MEMORY_FLAGS_FROM_FD: c_int = 2;
pub const RKNN_TENSOR_MEMORY_FLAGS_FROM_PHYS: c_int = 3;
pub const RKNN_TENSOR_MEMORY_FLAGS_UNKNOWN: c_int = 4;
pub const enum__rknn_tensor_mem_flags = c_uint;
pub const rknn_tensor_mem_flags = enum__rknn_tensor_mem_flags;
pub const RKNN_FLAG_MEMORY_FLAGS_DEFAULT: c_int = 0;
pub const RKNN_FLAG_MEMORY_CACHEABLE: c_int = 1;
pub const RKNN_FLAG_MEMORY_NON_CACHEABLE: c_int = 2;
pub const RKNN_FLAG_MEMORY_TRY_ALLOC_SRAM: c_int = 4;
pub const enum__rknn_mem_alloc_flags = c_uint;
pub const rknn_mem_alloc_flags = enum__rknn_mem_alloc_flags;
pub const RKNN_MEMORY_SYNC_TO_DEVICE: c_int = 1;
pub const RKNN_MEMORY_SYNC_FROM_DEVICE: c_int = 2;
pub const RKNN_MEMORY_SYNC_BIDIRECTIONAL: c_int = 3;
pub const enum__rknn_mem_sync_mode = c_uint;
pub const rknn_mem_sync_mode = enum__rknn_mem_sync_mode;
pub const struct__rknn_tensor_memory = extern struct {
    virt_addr: ?*anyopaque = null,
    phys_addr: u64 = 0,
    fd: i32 = 0,
    offset: i32 = 0,
    size: u32 = 0,
    flags: u32 = 0,
    priv_data: ?*anyopaque = null,
};
pub const rknn_tensor_mem = struct__rknn_tensor_memory;
pub const struct__rknn_input = extern struct {
    index: u32 = 0,
    buf: ?*anyopaque = null,
    size: u32 = 0,
    pass_through: u8 = 0,
    type: rknn_tensor_type = @import("std").mem.zeroes(rknn_tensor_type),
    fmt: rknn_tensor_format = @import("std").mem.zeroes(rknn_tensor_format),
};
pub const rknn_input = struct__rknn_input;
pub const struct__rknn_output = extern struct {
    want_float: u8 = 0,
    is_prealloc: u8 = 0,
    index: u32 = 0,
    buf: ?*anyopaque = null,
    size: u32 = 0,
};
pub const rknn_output = struct__rknn_output;
pub const struct__rknn_init_extend = extern struct {
    ctx: rknn_context = 0,
    real_model_offset: i32 = 0,
    real_model_size: u32 = 0,
    model_buffer_fd: i32 = 0,
    model_buffer_flags: u32 = 0,
    reserved: [112]u8 = @import("std").mem.zeroes([112]u8),
};
pub const rknn_init_extend = struct__rknn_init_extend;
pub const struct__rknn_run_extend = extern struct {
    frame_id: u64 = 0,
    non_block: i32 = 0,
    timeout_ms: i32 = 0,
    fence_fd: i32 = 0,
};
pub const rknn_run_extend = struct__rknn_run_extend;
pub const struct__rknn_output_extend = extern struct {
    frame_id: u64 = 0,
};
pub const rknn_output_extend = struct__rknn_output_extend;
pub extern fn rknn_init(context: [*c]rknn_context, model: ?*anyopaque, size: u32, flag: u32, extend: [*c]rknn_init_extend) c_int;
pub extern fn rknn_dup_context(context_in: [*c]rknn_context, context_out: [*c]rknn_context) c_int;
pub extern fn rknn_destroy(context: rknn_context) c_int;
pub extern fn rknn_query(context: rknn_context, cmd: rknn_query_cmd, info: ?*anyopaque, size: u32) c_int;
pub extern fn rknn_inputs_set(context: rknn_context, n_inputs: u32, inputs: [*c]rknn_input) c_int;
pub extern fn rknn_set_batch_core_num(context: rknn_context, core_num: c_int) c_int;
pub extern fn rknn_set_core_mask(context: rknn_context, core_mask: rknn_core_mask) c_int;
pub extern fn rknn_run(context: rknn_context, extend: [*c]rknn_run_extend) c_int;
pub extern fn rknn_wait(context: rknn_context, extend: [*c]rknn_run_extend) c_int;
pub extern fn rknn_outputs_get(context: rknn_context, n_outputs: u32, outputs: [*c]rknn_output, extend: [*c]rknn_output_extend) c_int;
pub extern fn rknn_outputs_release(context: rknn_context, n_ouputs: u32, outputs: [*c]rknn_output) c_int;
pub extern fn rknn_create_mem_from_phys(ctx: rknn_context, phys_addr: u64, virt_addr: ?*anyopaque, size: u32) [*c]rknn_tensor_mem;
pub extern fn rknn_create_mem_from_fd(ctx: rknn_context, fd: i32, virt_addr: ?*anyopaque, size: u32, offset: i32) [*c]rknn_tensor_mem;
pub extern fn rknn_create_mem_from_mb_blk(ctx: rknn_context, mb_blk: ?*anyopaque, offset: i32) [*c]rknn_tensor_mem;
pub extern fn rknn_create_mem(ctx: rknn_context, size: u32) [*c]rknn_tensor_mem;
pub extern fn rknn_create_mem2(ctx: rknn_context, size: u64, alloc_flags: u64) [*c]rknn_tensor_mem;
pub extern fn rknn_destroy_mem(ctx: rknn_context, mem: [*c]rknn_tensor_mem) c_int;
pub extern fn rknn_set_weight_mem(ctx: rknn_context, mem: [*c]rknn_tensor_mem) c_int;
pub extern fn rknn_set_internal_mem(ctx: rknn_context, mem: [*c]rknn_tensor_mem) c_int;
pub extern fn rknn_set_io_mem(ctx: rknn_context, mem: [*c]rknn_tensor_mem, attr: [*c]rknn_tensor_attr) c_int;
pub extern fn rknn_set_input_shape(ctx: rknn_context, attr: [*c]rknn_tensor_attr) c_int;
pub extern fn rknn_set_input_shapes(ctx: rknn_context, n_inputs: u32, attr: [*c]rknn_tensor_attr) c_int;
pub extern fn rknn_mem_sync(context: rknn_context, mem: [*c]rknn_tensor_mem, mode: rknn_mem_sync_mode) c_int;
