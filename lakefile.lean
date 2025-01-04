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
}

require LeanCopilot from git "https://github.com/lean-dojo/LeanCopilot.git" @ "v4.15.0"
