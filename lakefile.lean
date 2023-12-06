import Lake
open Lake DSL

package «lean4-example» {
  moreLinkArgs := #[
    "-L./.lake/packages/LeanInfer/.lake/build/lib",
    "-lctranslate2"
  ]
}

@[default_target]
lean_lib «Lean4Example» {
  -- add library configuration options here
}

lean_lib Gcd {

}

require LeanCopilot from git "https://github.com/lean-dojo/LeanCopilot.git" @ "main"
