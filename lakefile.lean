import Lake
open Lake DSL

package «lean4-example» {
  moreLinkArgs := #[s!"-L./lake-packages/LeanInfer/build/lib", "-lonnxruntime", "-lstdc++"]
}

@[default_target]
lean_lib «Lean4Example» {
}

require mathlib from git "https://github.com/leanprover-community/mathlib4"
require LeanInfer from git "https://github.com/lean-dojo/LeanInfer.git" @ "v0.0.6"