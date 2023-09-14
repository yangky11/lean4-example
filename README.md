lean4-example
-------------

An example of using [LeanInfer](https://github.com/lean-dojo/LeanInfer) in your project.


## Requirements
* Supported platforms: Linux and macOS (Intel or Apple Silicon).
* [elan](https://github.com/leanprover/elan)


## Steps

1. `git lfs install && git clone https://huggingface.co/kaiyuy/onnx-leandojo-lean4-tacgen-byt5-small`
1. `lake update && lake build`


## Caveats

If your platform is linux-arm64 (e.g., a Linux Docker container on an Apple Silicon Mac), you need to make sure LLVM is set up properly. See [here](https://github.com/lean-dojo/LeanInfer#building-leaninfer) for details.


## Questions and Bugs
Please report in the [LeanInfer](https://github.com/lean-dojo/LeanInfer) repo.
