import Mathlib.Data.Set.Basic
import LeanCopilot

#configure_llm_aesop


theorem add_abc : ∀ a b c : ℕ, a + b + c = a + c + b := by
  intros a b c
  simp [Nat.add_assoc, Nat.add_comm b]


theorem set_inter_comm (s t : Set α) : s ∩ t = t ∩ s := by
  ext x
  simp only [Set.mem_inter_iff]
  constructor
  · rintro ⟨xs, xt⟩; exact ⟨xt, xs⟩
  . rintro ⟨xt, xs⟩; exact ⟨xs, xt⟩
