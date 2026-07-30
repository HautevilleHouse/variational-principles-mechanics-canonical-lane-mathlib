import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMechanicsCanonicalLaneLean

structure HamiltonJacobiPackage where
  principalFunction : Type u
  hamiltonJacobiEquation : Prop
  actionAngleCoordinates : Prop
  hamiltonJacobiEquationDerived : hamiltonJacobiEquation

structure HamiltonJacobiEvidence (H : HamiltonJacobiPackage) where
  hamiltonJacobiEquationClosed : H.hamiltonJacobiEquation
  actionAngleCoordinatesClosed : H.actionAngleCoordinates

def HamiltonJacobiClosed (H : HamiltonJacobiPackage) : Prop :=
  H.hamiltonJacobiEquation ∧ H.actionAngleCoordinates

theorem hamilton_jacobi_closed_from_evidence (H : HamiltonJacobiPackage) (E : HamiltonJacobiEvidence H) :
    HamiltonJacobiClosed H := by
  exact And.intro E.hamiltonJacobiEquationClosed E.actionAngleCoordinatesClosed

end VariationalPrinciplesMechanicsCanonicalLaneLean
end HautevilleHouse