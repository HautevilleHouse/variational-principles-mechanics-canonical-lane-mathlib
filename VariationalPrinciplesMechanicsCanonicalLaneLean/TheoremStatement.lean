import HautevilleHouse.VariationalPrinciplesMechanicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMechanicsCanonicalLaneLean

structure VariationalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure VariationalAdmittedObject where
  space : VariationalSpace
  smoothManifold : Prop
  lagrangianDefined : Prop
  eulerLagrangeEquations : Prop
  minimalActionPrinciple : Prop
  conclusion : minimalActionPrinciple

structure VariationalEndgameState where
  object : VariationalAdmittedObject

def VariationalWitnessClosed (O : VariationalAdmittedObject) : Prop :=
  O.minimalActionPrinciple

end VariationalPrinciplesMechanicsCanonicalLaneLean
end HautevilleHouse