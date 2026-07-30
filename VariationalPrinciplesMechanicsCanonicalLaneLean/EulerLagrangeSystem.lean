import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMechanicsCanonicalLaneLean

structure EulerLagrangeSystem where
  configSpace : Type u
  lagrangian : (configSpace → ℝ) → ℝ
  actionFunctional : (ℝ → configSpace) → ℝ
  eulerLagrangeEquations : Prop
  stationarityCondition : Prop

structure EulerLagrangeEvidence (S : EulerLagrangeSystem) where
  eulerLagrangeEquationsClosed : S.eulerLagrangeEquations
  stationarityConditionClosed : S.stationarityCondition

def EulerLagrangeSystemClosed (S : EulerLagrangeSystem) : Prop :=
  S.eulerLagrangeEquations ∧ S.stationarityCondition

theorem euler_lagrange_closed_from_evidence (S : EulerLagrangeSystem)
    (E : EulerLagrangeEvidence S) : EulerLagrangeSystemClosed S := by
  exact And.intro E.eulerLagrangeEquationsClosed E.stationarityConditionClosed

end VariationalPrinciplesMechanicsCanonicalLaneLean
end HautevilleHouse