import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMechanicsCanonicalLaneLean

structure NoetherConservationPackage where
  symmetryGroup : Type u
  conservedQuantity : Prop
  noetherTheorem : Prop
  currentConservation : Prop

structure NoetherConservationEvidence (N : NoetherConservationPackage) where
  conservedQuantityClosed : N.conservedQuantity
  noetherTheoremClosed : N.noetherTheorem
  currentConservationClosed : N.currentConservation

def NoetherConservationClosed (N : NoetherConservationPackage) : Prop :=
  N.conservedQuantity ∧ N.noetherTheorem ∧ N.currentConservation

theorem noether_closed_from_evidence (N : NoetherConservationPackage)
    (E : NoetherConservationEvidence N) : NoetherConservationClosed N := by
  exact And.intro E.conservedQuantityClosed
    (And.intro E.noetherTheoremClosed E.currentConservationClosed)

end VariationalPrinciplesMechanicsCanonicalLaneLean
end HautevilleHouse