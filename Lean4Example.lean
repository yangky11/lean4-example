import LeanCopilot

open Nat (add_assoc add_comm)

theorem hello_world (a b c : Nat)
  : a + b + c = a + c + b := by
  rw [add_assoc, add_comm b, ←add_assoc]

theorem foo (a : Nat) : a + 1 = Nat.succ a := by
  suggest_tactics

theorem bar (a b c d : Nat) : a + b + c + d = a + (c + b) + d := by
  search_proof

theorem baz (a b c : Nat) : a + b + c = a + c + b := by
  select_premises
  sorry
