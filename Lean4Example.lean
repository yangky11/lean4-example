-- Lean Copilot is open-sourced at https://github.com/lean-dojo/LeanCopilot
import LeanCopilot
import Mathlib.Data.Set.Basic


theorem add_abc : ∀ a b c : ℕ, a + b + c = a + c + b := by
  intro a b c
  simp [Nat.add_assoc, Nat.add_comm b]


theorem set_inter_comm (s t : Set α) : s ∩ t = t ∩ s := by
  ext x
  simp_all only [Set.mem_inter_iff]
  apply Iff.intro
  · intro a
    simp_all only [and_self]
  · intro a
    simp_all only [and_self]
