import Lake
open Lake DSL

package «lean4-example» {
  moreLinkArgs := #[
    "-L./.lake/packages/LeanInfer/.lake/build/lib",
    "-lonnxruntime",
    "-lctranslate2"
  ]
}

@[default_target]
lean_lib «Lean4Example» {
  -- add library configuration options here
}

lean_lib Gcd {

}

require LeanInfer from git "https://github.com/lean-dojo/LeanInfer.git" @ "v0.0.9"
