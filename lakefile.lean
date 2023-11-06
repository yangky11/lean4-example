import Lake
open Lake DSL

package «lean4-example» {
  moreLinkArgs := #["-L./lake-packages/LeanInfer/build/lib", "-lonnxruntime", "-lctranslate2"]
}

lean_lib «Lean4Example» {
}

@[default_target]
lean_exe «lean4-example» {
  root := `Main
}

require LeanInfer from git "https://github.com/lean-dojo/LeanInfer.git" @ "main"
