import LeanInfer
import Std.Data.Nat.Gcd

open Nat


theorem gcd_self (n : Nat) : gcd n n = n := by
  cases n
  dsimp
  suggest_tactics
