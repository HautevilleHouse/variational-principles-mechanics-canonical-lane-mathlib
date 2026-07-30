import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMechanicsCanonicalLaneLean

structure HamiltonLeastActionPackage (E : EulerLagrangePackage) where
  phaseSpace : Type u
  hamiltonian : phaseSpace → ℝ
  canonicalEquations : Prop
  leastActionPrinciple : Prop
  LegendreTransform : Prop
  poissonBracketStructure : Prop

structure HamiltonLeastActionEvidence (E : EulerLagrangePackage) (H : HamiltonLeastActionPackage E) where
  canonicalEquationsClosed : H.canonicalEquations
  leastActionPrincipleClosed : H.leastActionPrinciple
  LegendreTransformClosed : H.LegendreTransform
  poissonBracketStructureClosed : H.poissonBracketStructure

def HamiltonLeastActionClosed (E : EulerLagrangePackage) (H : HamiltonLeastActionPackage E) : Prop :=
  H.canonicalEquations ∧ H.leastActionPrinciple ∧ H.LegendreTransform ∧ H.poissonBracketStructure

theorem hamilton_least_action_closed_from_evidence (E : EulerLagrangePackage) (H : HamiltonLeastActionPackage E) (Ev : HamiltonLeastActionEvidence E H) : HamiltonLeastActionClosed E H := by
  exact And.intro Ev.canonicalEquationsClosed (And.intro Ev.leastActionPrincipleClosed (And.intro Ev.LegendreTransformClosed Ev.poissonBracketStructureClosed))

end VariationalPrinciplesMechanicsCanonicalLaneLean
end HautevilleHouse