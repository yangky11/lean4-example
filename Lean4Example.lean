import Gcd

theorem hello_world (a b c : Nat)
  : a + b + c = a + c + b := by
  rw [Nat.add_assoc, Nat.add_comm b, ←Nat.add_assoc]

theorem foo (a : Nat) : a + 1 = Nat.succ a := by rfl
