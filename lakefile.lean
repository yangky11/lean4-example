import Lake
open Lake DSL

package «lean4-example» {
  moreLinkArgs := #[
    "-L./.lake/packages/LeanCopilot/.lake/build/lib",
    "-lctranslate2"
  ]
}

@[default_target]
lean_lib «Lean4Example» {
  -- add library configuration options here
}


require mathlib from git "https://github.com/leanprover-community/mathlib4" @ "v4.14.0"
require LeanCopilot from git "https://github.com/lean-dojo/LeanCopilot.git" @ "v4.14.0"
