import LeanInfer
import Mathlib.Data.Nat.GCD.Basic

/-
theorem gcd_self (n : ℕ) : gcd n n = n := by
  induction n with
  | zero => rfl
  | succ n ih => rw [Nat.gcd_succ, ih]
-/

theorem foo (a : Nat) : a + 1 = Nat.succ a := by 
  suggest_tactics
  rfl
