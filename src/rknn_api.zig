pub const __builtin = @import("std").zig.c_translation.builtins;
pub const __helpers = @import("std").zig.c_translation.helpers;

pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_longlong;
pub const __uint64_t = c_ulonglong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_longlong;
pub const __u_quad_t = c_ulonglong;
pub const __intmax_t = c_longlong;
pub const __uintmax_t = c_ulonglong;
pub const __dev_t = __uint64_t;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = __uint64_t;
pub const __ino64_t = __uint64_t;
pub const __mode_t = c_uint;
pub const __nlink_t = c_uint;
pub const __off_t = __int64_t;
pub const __off64_t = __int64_t;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __clock_t = c_long;
pub const __rlim_t = __uint64_t;
pub const __rlim64_t = __uint64_t;
pub const __id_t = c_uint;
pub const __time_t = __int64_t;
pub const __useconds_t = c_uint;
pub const __suseconds_t = __int64_t;
pub const __suseconds64_t = __int64_t;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_int;
pub const __blkcnt_t = __int64_t;
pub const __blkcnt64_t = __int64_t;
pub const __fsblkcnt_t = __uint64_t;
pub const __fsblkcnt64_t = __uint64_t;
pub const __fsfilcnt_t = __uint64_t;
pub const __fsfilcnt64_t = __uint64_t;
pub const __fsword_t = c_int;
pub const __ssize_t = c_int;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_int;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
pub const int_least8_t = __int_least8_t;
pub const int_least16_t = __int_least16_t;
pub const int_least32_t = __int_least32_t;
pub const int_least64_t = __int_least64_t;
pub const uint_least8_t = __uint_least8_t;
pub const uint_least16_t = __uint_least16_t;
pub const uint_least32_t = __uint_least32_t;
pub const uint_least64_t = __uint_least64_t;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_int;
pub const int_fast32_t = c_int;
pub const int_fast64_t = c_longlong;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_uint;
pub const uint_fast32_t = c_uint;
pub const uint_fast64_t = c_ulonglong;
pub const intmax_t = __intmax_t;
pub const uintmax_t = __uintmax_t;
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

pub const __VERSION__ = "Aro aro-zig";
pub const __Aro__ = "";
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __GNUC__ = @as(c_int, 7);
pub const __GNUC_MINOR__ = @as(c_int, 1);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 0);
pub const __ARO_EMULATE_CLANG__ = @as(c_int, 1);
pub const __ARO_EMULATE_GCC__ = @as(c_int, 2);
pub const __ARO_EMULATE_MSVC__ = @as(c_int, 3);
pub const __ARO_EMULATE__ = __ARO_EMULATE_GCC__;
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const __aarch64__ = @as(c_int, 1);
pub const __AARCH64_CMODEL_SMALL__ = @as(c_int, 1);
pub const __ARM_FP = @as(c_int, 0xE);
pub const __ARM_NEON = @as(c_int, 1);
pub const __ARM_NEON_FP = @as(c_int, 0xE);
pub const __ARM_FEATURE_UNALIGNED = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_VECTOR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_FEATURE_RCPC = @as(c_int, 1);
pub const __ARM_FEATURE_CRC32 = @as(c_int, 1);
pub const __ARM_FEATURE_AES = @as(c_int, 1);
pub const __ARM_FEATURE_SHA2 = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_SCALAR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_FEATURE_DOTPROD = @as(c_int, 1);
pub const __ARM_FEATURE_ATOMICS = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const __ELF__ = @as(c_int, 1);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __ATOMIC_BOOL_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_SHORT_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_INT_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_LONG_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_LLONG_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_POINTER_LOCK_FREE = @as(c_int, 1);
pub const __CHAR_UNSIGNED__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SCHAR_WIDTH__ = @as(c_int, 8);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __LONG_LONG_WIDTH__ = @as(c_int, 64);
pub const __WCHAR_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIG_ATOMIC_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __BITINT_MAXWIDTH__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTPTR_TYPE__ = c_long;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // <builtin>:105:9
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // <builtin>:107:9
pub const __PTRDIFF_TYPE__ = c_long;
pub const __SIZE_TYPE__ = c_ulong;
pub const __WCHAR_TYPE__ = c_uint;
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // <builtin>:128:9
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // <builtin>:150:9
pub const __UINT32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // <builtin>:158:9
pub const __UINT64_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const INT_LEAST8_FMTd__ = "hhd";
pub const INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const UINT_LEAST8_FMTo__ = "hho";
pub const UINT_LEAST8_FMTu__ = "hhu";
pub const UINT_LEAST8_FMTx__ = "hhx";
pub const UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const INT_FAST8_FMTd__ = "hhd";
pub const INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const UINT_FAST8_FMTo__ = "hho";
pub const UINT_FAST8_FMTu__ = "hhu";
pub const UINT_FAST8_FMTx__ = "hhx";
pub const UINT_FAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const INT_LEAST16_FMTd__ = "hd";
pub const INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST16_FMTo__ = "ho";
pub const UINT_LEAST16_FMTu__ = "hu";
pub const UINT_LEAST16_FMTx__ = "hx";
pub const UINT_LEAST16_FMTX__ = "hX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const INT_FAST16_FMTd__ = "hd";
pub const INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_FAST16_FMTo__ = "ho";
pub const UINT_FAST16_FMTu__ = "hu";
pub const UINT_FAST16_FMTx__ = "hx";
pub const UINT_FAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const INT_LEAST32_FMTd__ = "d";
pub const INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST32_FMTo__ = "o";
pub const UINT_LEAST32_FMTu__ = "u";
pub const UINT_LEAST32_FMTx__ = "x";
pub const UINT_LEAST32_FMTX__ = "X";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const INT_FAST32_FMTd__ = "d";
pub const INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_FAST32_FMTo__ = "o";
pub const UINT_FAST32_FMTu__ = "u";
pub const UINT_FAST32_FMTx__ = "x";
pub const UINT_FAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const INT_LEAST64_FMTd__ = "ld";
pub const INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_LEAST64_FMTo__ = "lo";
pub const UINT_LEAST64_FMTu__ = "lu";
pub const UINT_LEAST64_FMTx__ = "lx";
pub const UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const INT_FAST64_FMTd__ = "ld";
pub const INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_FMTo__ = "lo";
pub const UINT_FAST64_FMTu__ = "lu";
pub const UINT_FAST64_FMTx__ = "lx";
pub const UINT_FAST64_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_HAS_DENORM__ = "";
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = "";
pub const __FLT16_HAS_QUIET_NAN__ = "";
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = "";
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = "";
pub const __FLT_HAS_QUIET_NAN__ = "";
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = "";
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = "";
pub const __DBL_HAS_QUIET_NAN__ = "";
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 6.47517511943802511092443895822764655e-4966);
pub const __LDBL_HAS_DENORM__ = "";
pub const __LDBL_DIG__ = @as(c_int, 33);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 36);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.92592994438723585305597794258492732e-34);
pub const __LDBL_HAS_INFINITY__ = "";
pub const __LDBL_HAS_QUIET_NAN__ = "";
pub const __LDBL_MANT_DIG__ = @as(c_int, 113);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176508575932662800702e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626267781732175260e-4932);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __pic__ = @as(c_int, 2);
pub const __PIC__ = @as(c_int, 2);
pub const __GLIBC_MINOR__ = @as(c_int, 39);
pub const _NO_CRT_STDIO_INLINE = @as(c_int, 1);
pub const _RKNN_API_H = "";
pub const _STDINT_H = @as(c_int, 1);
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &maj;
    _ = &min;
    return @as(c_int, 0);
}
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`"); // /usr/include/features.h:188:9
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2X = @as(c_int, 0);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 32);
pub const __WORDSIZE32_SIZE_ULONG = @as(c_int, 1);
pub const __WORDSIZE32_PTRDIFF_LONG = @as(c_int, 1);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 0);
pub const __TIMESIZE = @as(c_int, 64);
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const __GLIBC_USE_C2X_STRTOL = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_60559_BFP__ = @as(c_long, 201404);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_IEC_60559_COMPLEX__ = @as(c_long, 201404);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:45:10
pub inline fn __glibc_has_builtin(name: anytype) @TypeOf(__builtin.has_builtin(name)) {
    _ = &name;
    return __builtin.has_builtin(name);
}
pub const __glibc_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:55:10
pub const __LEAF = @compileError("unable to translate macro: undefined identifier `__leaf__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:65:11
pub const __LEAF_ATTR = @compileError("unable to translate macro: undefined identifier `__leaf__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:66:11
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:79:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:80:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:81:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:82:11
pub const __COLD = @compileError("unable to translate macro: undefined identifier `__cold__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:102:11
pub inline fn __P(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:131:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:132:9
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin.object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    _ = &ptr;
    return __builtin.object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin.object_size(ptr, @as(c_int, 0))) {
    _ = &ptr;
    return __builtin.object_size(ptr, @as(c_int, 0));
}
pub inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    _ = &__o;
    return __bos0(__o);
}
pub inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    _ = &__o;
    return __bos(__o);
}
pub const __warnattr = @compileError("unable to translate macro: undefined identifier `__warning__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:212:10
pub const __errordecl = @compileError("unable to translate macro: undefined identifier `__error__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:213:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:225:10
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub const __REDIRECT = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:256:10
pub const __REDIRECT_NTH = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:263:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:265:11
pub const __ASMNAME = @compileError("unable to translate macro: undefined identifier `__USER_LABEL_PREFIX__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:268:10
pub const __ASMNAME2 = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:269:10
pub const __REDIRECT_FORTIFY = __REDIRECT;
pub const __REDIRECT_FORTIFY_NTH = __REDIRECT_NTH;
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__malloc__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:298:10
pub const __attribute_alloc_size__ = @compileError("unable to translate macro: undefined identifier `__alloc_size__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:306:10
pub const __attribute_alloc_align__ = @compileError("unable to translate macro: undefined identifier `__alloc_align__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:315:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__pure__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:325:10
pub const __attribute_const__ = @compileError("unable to translate C expr: unexpected token '__attribute__'"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:332:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__unused__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:338:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__used__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:347:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__noinline__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:348:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:356:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:366:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__format_arg__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:379:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__format__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:389:10
pub const __attribute_nonnull__ = @compileError("unable to translate macro: undefined identifier `__nonnull__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:401:11
pub inline fn __nonnull(params: anytype) @TypeOf(__attribute_nonnull__(params)) {
    _ = &params;
    return __attribute_nonnull__(params);
}
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__returns_nonnull__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:414:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:423:10
pub const __wur = "";
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:441:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__artificial__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:450:10
pub const __extern_inline = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:472:11
pub const __extern_always_inline = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:473:11
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub const __va_arg_pack = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg_pack`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:484:10
pub const __va_arg_pack_len = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg_pack_len`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:485:10
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:512:10
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin.expect(cond, @as(c_int, 0))) {
    _ = &cond;
    return __builtin.expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin.expect(cond, @as(c_int, 1))) {
    _ = &cond;
    return __builtin.expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:561:10
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub const __LDBL_REDIR1 = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:634:10
pub const __LDBL_REDIR = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:635:10
pub const __LDBL_REDIR1_NTH = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:636:10
pub const __LDBL_REDIR_NTH = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:637:10
pub const __LDBL_REDIR2_DECL = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:638:10
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:639:10
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:653:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:654:10
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __fortified_attr_access = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:699:11
pub const __attr_access = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:700:11
pub const __attr_access_none = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:701:11
pub const __attr_dealloc = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:711:10
pub const __attr_dealloc_free = "";
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__returns_twice__`"); // /usr/include/aarch64-linux-gnu/sys/cdefs.h:718:10
pub const __stub___compat_bdflush = "";
pub const __stub___compat_create_module = "";
pub const __stub___compat_get_kernel_syms = "";
pub const __stub___compat_query_module = "";
pub const __stub___compat_uselib = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = __int64_t;
pub const __UQUAD_TYPE = __uint64_t;
pub const __SWORD_TYPE = c_int;
pub const __UWORD_TYPE = c_uint;
pub const __SLONG32_TYPE = c_long;
pub const __ULONG32_TYPE = c_ulong;
pub const __S64_TYPE = __int64_t;
pub const __U64_TYPE = __uint64_t;
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __INO_T_TYPE = __UQUAD_TYPE;
pub const __OFF_T_TYPE = __SQUAD_TYPE;
pub const __RLIM_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __UQUAD_TYPE;
pub const __TIME_T_TYPE = __SQUAD_TYPE;
pub const __SUSECONDS_T_TYPE = __SQUAD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __U32_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSWORD_T_TYPE = __SWORD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SLONGWORD_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __S32_TYPE;
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`"); // /usr/include/aarch64-linux-gnu/bits/typesizes.h:72:9
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __CPU_MASK_TYPE = __ULONGWORD_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = __WORDSIZE == @as(c_int, 64);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const _BITS_WCHAR_H = @as(c_int, 1);
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const __WCHAR_MIN = '\x00' + @as(c_int, 0);
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const _BITS_STDINT_UINTN_H = @as(c_int, 1);
pub const _BITS_STDINT_LEAST_H = @as(c_int, 1);
pub const __intptr_t_defined = "";
pub const __INT64_C = __helpers.LL_SUFFIX;
pub const __UINT64_C = __helpers.ULL_SUFFIX;
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT32_MIN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -__INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = __INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = __UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_LEAST8_MIN = -@as(c_int, 128);
pub const INT_LEAST16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT_LEAST32_MIN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT_LEAST64_MIN = -__INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_LEAST8_MAX = @as(c_int, 127);
pub const INT_LEAST16_MAX = @as(c_int, 32767);
pub const INT_LEAST32_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_LEAST64_MAX = __INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_LEAST8_MAX = @as(c_int, 255);
pub const UINT_LEAST16_MAX = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST32_MAX = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST64_MAX = __UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_FAST8_MIN = -@as(c_int, 128);
pub const INT_FAST16_MIN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT_FAST32_MIN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT_FAST64_MIN = -__INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_FAST8_MAX = @as(c_int, 127);
pub const INT_FAST16_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_FAST32_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_FAST64_MAX = __INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_FAST8_MAX = @as(c_int, 255);
pub const UINT_FAST16_MAX = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_FAST32_MAX = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_FAST64_MAX = __UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTPTR_MIN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INTPTR_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const UINTPTR_MAX = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const INTMAX_MIN = -__INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INTMAX_MAX = __INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = __UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const PTRDIFF_MIN = -@as(c_long, 2147483647) - @as(c_int, 1);
pub const PTRDIFF_MAX = @as(c_long, 2147483647);
pub const SIG_ATOMIC_MIN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const SIG_ATOMIC_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SIZE_MAX = @as(c_ulong, 4294967295);
pub const WCHAR_MIN = __WCHAR_MIN;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const INT64_C = __helpers.LL_SUFFIX;
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const UINT32_C = __helpers.U_SUFFIX;
pub const UINT64_C = __helpers.ULL_SUFFIX;
pub const INTMAX_C = __helpers.LL_SUFFIX;
pub const UINTMAX_C = __helpers.ULL_SUFFIX;
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
