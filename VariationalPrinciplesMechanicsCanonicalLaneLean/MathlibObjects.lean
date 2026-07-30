import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace VariationalPrinciplesMechanicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure VariationalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure VariationalAdmittedObject where
  space : VariationalSpace
  smoothManifold : Prop
  variationalPrinciple : Prop
  lagrangianDefined : Prop
  eulerLagrangeEquations : Prop
  conclusion : eulerLagrangeEquations

structure VariationalEndgameState where
  object : VariationalAdmittedObject

def VariationalWitnessClosed (O : VariationalAdmittedObject) : Prop :=
  O.eulerLagrangeEquations

end VariationalPrinciplesMechanicsCanonicalLaneLean
end HautevilleHouse