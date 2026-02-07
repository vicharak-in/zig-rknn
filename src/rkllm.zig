pub const LLMHandle = ?*anyopaque;
pub const RKLLM_RUN_NORMAL: c_int = 0;
pub const RKLLM_RUN_WAITING: c_int = 1;
pub const RKLLM_RUN_FINISH: c_int = 2;
pub const RKLLM_RUN_ERROR: c_int = 3;
pub const LLMCallState = c_uint;
pub const RKLLM_INPUT_PROMPT: c_int = 0;
pub const RKLLM_INPUT_TOKEN: c_int = 1;
pub const RKLLM_INPUT_EMBED: c_int = 2;
pub const RKLLM_INPUT_MULTIMODAL: c_int = 3;
pub const RKLLMInputType = c_uint;
pub const RKLLM_INFER_GENERATE: c_int = 0;
pub const RKLLM_INFER_GET_LAST_HIDDEN_LAYER: c_int = 1;
pub const RKLLM_INFER_GET_LOGITS: c_int = 2;
pub const RKLLMInferMode = c_uint;
pub const RKLLMExtendParam = extern struct {
    base_domain_id: i32 = @import("std").mem.zeroes(i32),
    embed_flash: i8 = @import("std").mem.zeroes(i8),
    enabled_cpus_num: i8 = @import("std").mem.zeroes(i8),
    enabled_cpus_mask: u32 = @import("std").mem.zeroes(u32),
    reserved: [106]u8 = @import("std").mem.zeroes([106]u8),
};
pub const RKLLMParam = extern struct {
    model_path: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    max_context_len: i32 = @import("std").mem.zeroes(i32),
    max_new_tokens: i32 = @import("std").mem.zeroes(i32),
    top_k: i32 = @import("std").mem.zeroes(i32),
    n_keep: i32 = @import("std").mem.zeroes(i32),
    top_p: f32 = @import("std").mem.zeroes(f32),
    temperature: f32 = @import("std").mem.zeroes(f32),
    repeat_penalty: f32 = @import("std").mem.zeroes(f32),
    frequency_penalty: f32 = @import("std").mem.zeroes(f32),
    presence_penalty: f32 = @import("std").mem.zeroes(f32),
    mirostat: i32 = @import("std").mem.zeroes(i32),
    mirostat_tau: f32 = @import("std").mem.zeroes(f32),
    mirostat_eta: f32 = @import("std").mem.zeroes(f32),
    skip_special_token: bool = @import("std").mem.zeroes(bool),
    is_async: bool = @import("std").mem.zeroes(bool),
    img_start: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    img_end: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    img_content: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    extend_param: RKLLMExtendParam = @import("std").mem.zeroes(RKLLMExtendParam),
};
pub const RKLLMLoraAdapter = extern struct {
    lora_adapter_path: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    lora_adapter_name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    scale: f32 = @import("std").mem.zeroes(f32),
};
pub const RKLLMEmbedInput = extern struct {
    embed: [*c]f32 = @import("std").mem.zeroes([*c]f32),
    n_tokens: usize = @import("std").mem.zeroes(usize),
};
pub const RKLLMTokenInput = extern struct {
    input_ids: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    n_tokens: usize = @import("std").mem.zeroes(usize),
};
pub const RKLLMMultiModelInput = extern struct {
    prompt: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    image_embed: [*c]f32 = @import("std").mem.zeroes([*c]f32),
    n_image_tokens: usize = @import("std").mem.zeroes(usize),
};
const union_unnamed_1 = extern union {
    prompt_input: [*c]const u8,
    embed_input: RKLLMEmbedInput,
    token_input: RKLLMTokenInput,
    multimodal_input: RKLLMMultiModelInput,
};
pub const RKLLMInput = extern struct {
    input_type: RKLLMInputType = @import("std").mem.zeroes(RKLLMInputType),
    data: union_unnamed_1 = @import("std").mem.zeroes(union_unnamed_1),
};
pub const RKLLMLoraParam = extern struct {
    lora_adapter_name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const RKLLMPromptCacheParam = extern struct {
    save_prompt_cache: c_int = @import("std").mem.zeroes(c_int),
    prompt_cache_path: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const RKLLMInferParam = extern struct {
    mode: RKLLMInferMode = @import("std").mem.zeroes(RKLLMInferMode),
    lora_params: [*c]RKLLMLoraParam = @import("std").mem.zeroes([*c]RKLLMLoraParam),
    prompt_cache_params: [*c]RKLLMPromptCacheParam = @import("std").mem.zeroes([*c]RKLLMPromptCacheParam),
    keep_history: c_int = @import("std").mem.zeroes(c_int),
};
pub const RKLLMResultLastHiddenLayer = extern struct {
    hidden_states: [*c]const f32 = @import("std").mem.zeroes([*c]const f32),
    embd_size: c_int = @import("std").mem.zeroes(c_int),
    num_tokens: c_int = @import("std").mem.zeroes(c_int),
};
pub const RKLLMResultLogits = extern struct {
    logits: [*c]const f32 = @import("std").mem.zeroes([*c]const f32),
    vocab_size: c_int = @import("std").mem.zeroes(c_int),
    num_tokens: c_int = @import("std").mem.zeroes(c_int),
};
pub const RKLLMResult = extern struct {
    text: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    token_id: i32 = @import("std").mem.zeroes(i32),
    last_hidden_layer: RKLLMResultLastHiddenLayer = @import("std").mem.zeroes(RKLLMResultLastHiddenLayer),
    logits: RKLLMResultLogits = @import("std").mem.zeroes(RKLLMResultLogits),
};
pub const LLMResultCallback = ?*const fn ([*c]RKLLMResult, ?*anyopaque, LLMCallState) callconv(.c) void;
pub extern fn rkllm_createDefaultParam(...) RKLLMParam;
pub extern fn rkllm_init(handle: [*c]LLMHandle, param: [*c]RKLLMParam, callback: LLMResultCallback) c_int;
pub extern fn rkllm_load_lora(handle: LLMHandle, lora_adapter: [*c]RKLLMLoraAdapter) c_int;
pub extern fn rkllm_load_prompt_cache(handle: LLMHandle, prompt_cache_path: [*c]const u8) c_int;
pub extern fn rkllm_release_prompt_cache(handle: LLMHandle) c_int;
pub extern fn rkllm_destroy(handle: LLMHandle) c_int;
pub extern fn rkllm_run(handle: LLMHandle, rkllm_input: [*c]RKLLMInput, rkllm_infer_params: [*c]RKLLMInferParam, userdata: ?*anyopaque) c_int;
pub extern fn rkllm_run_async(handle: LLMHandle, rkllm_input: [*c]RKLLMInput, rkllm_infer_params: [*c]RKLLMInferParam, userdata: ?*anyopaque) c_int;
pub extern fn rkllm_abort(handle: LLMHandle) c_int;
pub extern fn rkllm_is_running(handle: LLMHandle) c_int;
pub extern fn rkllm_clear_kv_cache(handle: LLMHandle, keep_system_prompt: c_int) c_int;
pub extern fn rkllm_set_chat_template(handle: LLMHandle, system_prompt: [*c]const u8, prompt_prefix: [*c]const u8, prompt_postfix: [*c]const u8) c_int;
