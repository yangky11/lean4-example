import LeanInfer.Basic

open Nat (add_assoc add_comm)

def hello := "world"

theorem hello_world (a b c : Nat) 
  : a + b + c = a + c + b := by
  rw [add_assoc, add_comm b, ←add_assoc]

theorem foo (a : Nat) : a + 1 = Nat.succ a := by 
  suggest_tactics ""
  rfl

