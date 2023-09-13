lean4-example
-------------

An example of using [LeanInfer](https://github.com/lean-dojo/LeanInfer) in your project.

## Option 1 (Recommended): Use LeanInfer's Cloud Release

### Requirements
* [elan](https://github.com/leanprover/elan)

### Steps

* Download the tactic generation model in ONNX format: `git lfs install && git clone https://huggingface.co/kaiyuy/onnx-leandojo-lean4-tacgen-byt5-small`
* Build the project: `lake update && lake build`


## Option 2: Build LeanInfer from Source

### Requirements
* [elan](https://github.com/leanprover/elan)
* LLVM (w/ at least [Clang](https://clang.llvm.org/), [LLD](https://lld.llvm.org/), [libc++](https://libcxx.llvm.org/), [libc++abi](https://libcxxabi.llvm.org/), and [libunwind](https://github.com/llvm/llvm-project/tree/main/libunwind)). We recommend downloading clang+llvm from [here](https://github.com/llvm/llvm-project/releases/tag/llvmorg-16.0.0). (:warning: GCC not supported)


### Steps

* Download the tactic generation model in ONNX format: `git lfs install && git clone https://huggingface.co/kaiyuy/onnx-leandojo-lean4-tacgen-byt5-small`
* Build the project: `lake update && lake build -KnoLeanInferCloudRelease=true`


## Questions and Bugs

Please report in the [LeanInfer](https://github.com/lean-dojo/LeanInfer) repo.
