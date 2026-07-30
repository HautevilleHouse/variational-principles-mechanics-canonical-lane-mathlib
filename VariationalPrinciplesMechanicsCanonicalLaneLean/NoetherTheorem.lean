import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMechanicsCanonicalLaneLean

structure NoetherTheoremPackage (E : EulerLagrangePackage) where
  symmetryGroup : Type u
  conservedQuantity : (ℝ → E.configurationManifold) → ℝ
  oneParameterSymmetry : Prop
  invarianceCondition : Prop
  conservedQuantityConservation : Prop

structure NoetherTheoremEvidence (E : EulerLagrangePackage) (N : NoetherTheoremPackage E) where
  oneParameterSymmetryClosed : N.oneParameterSymmetry
  invarianceConditionClosed : N.invarianceCondition
  conservedQuantityConservationClosed : N.conservedQuantityConservation

def NoetherTheoremClosed (E : EulerLagrangePackage) (N : NoetherTheoremPackage E) : Prop :=
  N.oneParameterSymmetry ∧ N.invarianceCondition ∧ N.conservedQuantityConservation

theorem noether_theorem_closed_from_evidence (E : EulerLagrangePackage) (N : NoetherTheoremPackage E) (Ev : NoetherTheoremEvidence E N) : NoetherTheoremClosed E N := by
  exact And.intro Ev.oneParameterSymmetryClosed (And.intro Ev.invarianceConditionClosed Ev.conservedQuantityConservationClosed)

end VariationalPrinciplesMechanicsCanonicalLaneLean
end HautevilleHouse