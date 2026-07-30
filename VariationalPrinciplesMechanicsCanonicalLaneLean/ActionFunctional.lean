import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMechanicsCanonicalLaneLean

structure ActionFunctional (M : Type u) [TopologicalSpace M] where
  configSpace : M
  lagrangian : M → ℝ
  action : (ℝ → M) → ℝ
  stationaryCondition : (γ : ℝ → M) → Prop

def ActionClosed (A : ActionFunctional M) : Prop :=
  ∀ γ, A.stationaryCondition γ

end VariationalPrinciplesMechanicsCanonicalLaneLean
end HautevilleHouse