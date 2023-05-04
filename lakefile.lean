import Lake
open Lake DSL

package «lean4-example» {
  -- add package configuration options here
}

lean_lib «Lean4Example» {
  -- add library configuration options here
}

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"

@[default_target]
lean_exe «lean4-example» {
  root := `Main
}
