import Lake
open Lake DSL

package «lean4-example» {
  moreLinkArgs := #["-L./lake-packages/LeanInfer/build/lib", "-lonnxruntime", "-lctranslate2"]
}

@[default_target]
lean_lib «Lean4Example» {
}

require LeanInfer from git "https://github.com/lean-dojo/LeanInfer.git" @ "main"
