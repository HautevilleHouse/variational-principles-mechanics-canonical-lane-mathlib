import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMechanicsCanonicalLaneLean

structure LeastActionPackage where
  actionFunctional : Type u
  stationaryAction : Prop
  eulerLagrangeEquivalence : Prop
  stationaryActionDerived : stationaryAction

structure LeastActionEvidence (A : LeastActionPackage) where
  stationaryActionClosed : A.stationaryAction
  eulerLagrangeEquivalenceClosed : A.eulerLagrangeEquivalence

def LeastActionClosed (A : LeastActionPackage) : Prop :=
  A.stationaryAction ∧ A.eulerLagrangeEquivalence

theorem least_action_closed_from_evidence (A : LeastActionPackage) (E : LeastActionEvidence A) :
    LeastActionClosed A := by
  exact And.intro E.stationaryActionClosed E.eulerLagrangeEquivalenceClosed

end VariationalPrinciplesMechanicsCanonicalLaneLean
end HautevilleHouse