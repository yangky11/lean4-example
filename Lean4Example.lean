open Nat (add_assoc add_comm)

def hello := "world"

theorem hello_world (a b c : Nat) 
  : a + b + c = a + c + b := by 
  rw [add_assoc, add_comm b, ←add_assoc]
