import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMechanicsCanonicalLaneLean

structure HamiltonPrinciplePackage where
  phaseSpace : Type u
  hamiltonian : (phaseSpace → ℝ) → ℝ
  canonicalEquations : Prop
  stationaryAction : Prop

structure HamiltonPrincipleEvidence (H : HamiltonPrinciplePackage) where
  canonicalEquationsClosed : H.canonicalEquations
  stationaryActionClosed : H.stationaryAction

def HamiltonPrincipleClosed (H : HamiltonPrinciplePackage) : Prop :=
  H.canonicalEquations ∧ H.stationaryAction

theorem hamilton_principle_closed_from_evidence (H : HamiltonPrinciplePackage)
    (E : HamiltonPrincipleEvidence H) : HamiltonPrincipleClosed H := by
  exact And.intro E.canonicalEquationsClosed E.stationaryActionClosed

end VariationalPrinciplesMechanicsCanonicalLaneLean
end HautevilleHouse