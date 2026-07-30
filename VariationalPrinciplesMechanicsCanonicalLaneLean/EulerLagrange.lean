import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMechanicsCanonicalLaneLean

structure EulerLagrangePackage where
  configurationManifold : Type u
  lagrangian : configurationManifold → ℝ
  actionFunctional : (ℝ → configurationManifold) → ℝ
  stationarityCondition : Prop
  EulerLagrangeEquations : Prop
  boundaryConstraints : Prop

structure EulerLagrangeEvidence (E : EulerLagrangePackage) where
  lagrangianSmooth : E.lagrangian ∈ smoothContinuum
  stationarityConditionClosed : E.stationarityCondition
  EulerLagrangeEquationsClosed : E.EulerLagrangeEquations
  boundaryConstraintsClosed : E.boundaryConstraints

def EulerLagrangeClosed (E : EulerLagrangePackage) : Prop :=
  E.stationarityCondition ∧ E.EulerLagrangeEquations ∧ E.boundaryConstraints

theorem euler_lagrange_closed_from_evidence (E : EulerLagrangePackage) (Ev : EulerLagrangeEvidence E) : EulerLagrangeClosed E := by
  exact And.intro Ev.stationarityConditionClosed (And.intro Ev.EulerLagrangeEquationsClosed Ev.boundaryConstraintsClosed)

end VariationalPrinciplesMechanicsCanonicalLaneLean
end HautevilleHouse