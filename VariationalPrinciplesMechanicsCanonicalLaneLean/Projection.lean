import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMechanicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def variationalProjection : Projection VariationalEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem variational_projection_idempotent (x : VariationalEndgameState) :
    variationalProjection.toFun (variationalProjection.toFun x) = variationalProjection.toFun x := by
  exact variationalProjection.idempotent x

end VariationalPrinciplesMechanicsCanonicalLaneLean
end HautevilleHouse