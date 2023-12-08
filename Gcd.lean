/-
# Demo: A Taste of Lean
-/
import LeanCopilot
#init_llm_aesop

open Nat

abbrev ℕ := Nat

namespace Hidden

/-
## Fibonacci Sequence

* Lean is a functional programming language (like OCaml and Haskell).
* Just like in any programming language, we can define a recursive function
    ,e.g., to compute the Fibonacci sequence.
* It takes a natural number `i` and returns the `i`-th Fibonacci number.
* fib 0 = 0, fib 1 = 1, fib (n + 2) = fib n + fib (n + 1)
-/

def fib : ℕ → ℕ
| 0 => 0
| 1 => 1
| n + 2 => fib n + fib (n + 1)

#eval fib 2
#eval fib 3
#eval fib 4
#eval fib 5
#eval fib 6





/-
## Greatest Common Divisor

* Besides a programming language, Lean is also a proof assistant (interactive theorem prover),
  allowing us to state theorems and prove them.
* Let's prove that the greatest common divisor of `n` with itself is `n`.
-/
def gcd : ℕ → ℕ → ℕ
| 0, y => y
| (x' + 1), y => gcd (y % (x' + 1)) (x' + 1)
decreasing_by apply Nat.mod_lt ; exact succ_pos x'  -- Prove `gcd` terminates.

#eval gcd 20 25
#eval gcd 20 20

theorem gcd_self (n : ℕ) : gcd n n = n := by
  cases n
  · simp_all only [zero_eq]
    apply Eq.refl
  · simp [gcd]

/-
* A proof consists of a sequence of tactics.
* Each tactic transforms a goal into one or more subgoals, until all goals are solved.
* Tactic may use existing definitions and lemmas.
* Proofs are not unique. Below are two other proofs of the same theorem.
-/

theorem gcd_self' (n : ℕ) : gcd n n = n := by
  cases n <;> unfold gcd
  · rfl
  · rewrite [mod_self]
    simp [gcd]

theorem gcd_self'' (n : ℕ) : gcd n n = n := by
  cases n <;> simp [gcd, mod_self]

end Hidden