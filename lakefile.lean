import Lake
open Lake DSL

package «lean4-example» {
  moreLinkArgs := #["-lonnxruntime", "-lstdc++"]
}

lean_lib «Lean4Example» {
}

@[default_target]
lean_exe «lean4-example» {
  root := `Main
}

require aesop from git "https://github.com/JLimperg/aesop"
-- require leanml from git "https://github.com/Peiyang-Song/leanml.git" @ "peiyang"
require LeanInfer from git "https://github.com/lean-dojo/LeanInfer.git"

