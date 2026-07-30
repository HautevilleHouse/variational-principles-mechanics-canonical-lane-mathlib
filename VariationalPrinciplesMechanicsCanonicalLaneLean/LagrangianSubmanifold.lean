import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMechanicsCanonicalLaneLean

structure LagrangianSubmanifoldPackage where
  cotangentBundle : Type u
  lagrangianSubmanifold : Prop
  legendreTransform : Prop
  hamiltonianFlow : Prop

structure LagrangianSubmanifoldEvidence (L : LagrangianSubmanifoldPackage) where
  lagrangianSubmanifoldClosed : L.lagrangianSubmanifold
  legendreTransformClosed : L.legendreTransform
  hamiltonianFlowClosed : L.hamiltonianFlow

def LagrangianSubmanifoldClosed (L : LagrangianSubmanifoldPackage) : Prop :=
  L.lagrangianSubmanifold ∧ L.legendreTransform ∧ L.hamiltonianFlow

theorem lagrangian_submanifold_closed_from_evidence
    (L : LagrangianSubmanifoldPackage) (E : LagrangianSubmanifoldEvidence L) :
    LagrangianSubmanifoldClosed L := by
  exact And.intro E.lagrangianSubmanifoldClosed
    (And.intro E.legendreTransformClosed E.hamiltonianFlowClosed)

end VariationalPrinciplesMechanicsCanonicalLaneLean
end HautevilleHouse