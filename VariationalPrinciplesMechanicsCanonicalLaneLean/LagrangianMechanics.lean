import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMechanicsCanonicalLaneLean

structure LagrangianPackage where
  configurationSpace : Type u
  timeDomain : Type v
  lagrangian : (configurationSpace → configurationSpace) → timeDomain → ℝ
  smoothLagrangian : Prop
  eulerLagrangeEquation : Prop
  eulerLagrangeDerived : eulerLagrangeEquation

structure LagrangianEvidence (L : LagrangianPackage) where
  smoothLagrangianClosed : L.smoothLagrangian
  eulerLagrangeEquationClosed : L.eulerLagrangeEquation

def LagrangianClosed (L : LagrangianPackage) : Prop :=
  L.smoothLagrangian ∧ L.eulerLagrangeEquation

theorem lagrangian_closed_from_evidence (L : LagrangianPackage) (E : LagrangianEvidence L) :
    LagrangianClosed L := by
  exact And.intro E.smoothLagrangianClosed E.eulerLagrangeEquationClosed

end VariationalPrinciplesMechanicsCanonicalLaneLean
end HautevilleHouse