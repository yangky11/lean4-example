import Lake
open Lake DSL

package «lean4-example» {
  moreLinkArgs := #[s!"-L./lake-packages/LeanInfer/build/lib", "-lonnxruntime", "-lstdc++"]
}

lean_lib «Lean4Example» {
}

@[default_target]
lean_exe «lean4-example» {
  root := `Main
}

require aesop from git "https://github.com/JLimperg/aesop"
require LeanInfer from git "https://github.com/lean-dojo/LeanInfer.git"@"v0.0.3"
