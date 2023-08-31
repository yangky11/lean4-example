import Lake
open Lake DSL

package «lean4-example» {
  -- add package configuration options here
  moreLinkArgs := #["-lonnxruntime"]
}

lean_lib «Lean4Example» {
  -- add library configuration options here
}

@[default_target]
lean_exe «lean4-example» {
  root := `Main
}

require aesop from git "https://github.com/JLimperg/aesop"
require leanml from git "https://github.com/Peiyang-Song/leanml.git" @ "kaiyu"

