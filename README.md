lean4-example
-------------

An example of using [LeanInfer](https://github.com/lean-dojo/LeanInfer) in your project.


## Option 1: LeanInfer's Cloud Release (Recommended for Linux and Intel Mac)

### Requirements
* Supported platforms: Linux and macOS (Intel). :warning: Macs with Apple Silicon can only use Option 2.
* [elan](https://github.com/leanprover/elan)

### Steps

* `git lfs install && git clone https://huggingface.co/kaiyuy/onnx-leandojo-lean4-tacgen-byt5-small`
* `lake update && lake build`


## Option 2: Building LeanInfer from Source (Recommended for Apple Silicon)

### Requirements
* Supported platforms: Linux and macOS (both Intel and Apple Silicon).
* [elan](https://github.com/leanprover/elan)
* LLVM (w/ at least [Clang](https://clang.llvm.org/), [LLD](https://lld.llvm.org/), [libc++](https://libcxx.llvm.org/), [libc++abi](https://libcxxabi.llvm.org/), and [libunwind](https://github.com/llvm/llvm-project/tree/main/libunwind)). For macOS, they are usually pre-installed. For Linux, we recommend downloading clang+llvm from [here](https://github.com/llvm/llvm-project/releases/tag/llvmorg-16.0.0). :warning: GCC is not supported. LLVM installed by `apt-get install` may be incomplete.


### Steps

* `git lfs install && git clone https://huggingface.co/kaiyuy/onnx-leandojo-lean4-tacgen-byt5-small`
* `lake update && lake build -KnoLeanInferCloudRelease=true`


## Questions and Bugs

Please report in the [LeanInfer](https://github.com/lean-dojo/LeanInfer) repo.
