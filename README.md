# zig-rknn

Zig bindings for Rockchip NPU tested on RK3588 SOC. See `examples` dir on how to use **RK3588 NPU** api in **Zig**.

The `yolo8n-face` exmaple in `examples/` dir takes input image of size **640×640**. This avoids resizing code and keeps the example focused on NPU inference.

`/src/rknn_api.zig` RKNN C-API bindings generated with `zig translate-c`.

## Requirements
- Language version **Zig 0.15.1**.
- [zigimg](https://github.com/zigimg/zigimg) for reading and writing images.
- [rknn-toolkit2](https://github.com/airockchip/rknn-toolkit2.git) see [Axon-NPU-Guide](https://github.com/vicharak-in/Axon-NPU-Guide) for how to install `rknn-toolkit2`.

## Building an example
```bash
zig build example-yolo8n-face
```

## Results
<img src="test_images/output_1.png" width="600"/>
<img src="test_images/output_2.png" width="600"/>

## Reference
- [YOLOv8-Face](https://github.com/Yusepp/YOLOv8-Face)
