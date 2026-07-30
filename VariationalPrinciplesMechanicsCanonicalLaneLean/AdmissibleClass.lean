import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMechanicsCanonicalLaneLean

structure VariationalAdmittedObject where
  configSpace : Type u
  lagrangianDefined : Prop
  actionFinite : Prop
  stationaryPathExists : Prop

structure AdmissibleClass where
  object : VariationalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.stationaryPathExists ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VariationalPrinciplesMechanicsCanonicalLaneLean
end HautevilleHouse