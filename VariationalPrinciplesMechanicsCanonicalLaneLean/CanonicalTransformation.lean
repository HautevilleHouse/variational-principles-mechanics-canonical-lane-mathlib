import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMechanicsCanonicalLaneLean

structure CanonicalTransformationPackage where
  generatingFunction : Type u
  poissonBracketInvariance : Prop
  canonicalTransformationCondition : Prop
  generatingFunctionDerived : generatingFunction

structure CanonicalTransformationEvidence (T : CanonicalTransformationPackage) where
  poissonBracketInvarianceClosed : T.poissonBracketInvariance
  canonicalTransformationConditionClosed : T.canonicalTransformationCondition

def CanonicalTransformationClosed (T : CanonicalTransformationPackage) : Prop :=
  T.poissonBracketInvariance ∧ T.canonicalTransformationCondition

theorem canonical_transformation_closed_from_evidence (T : CanonicalTransformationPackage) (E : CanonicalTransformationEvidence T) :
    CanonicalTransformationClosed T := by
  exact And.intro E.poissonBracketInvarianceClosed E.canonicalTransformationConditionClosed

end VariationalPrinciplesMechanicsCanonicalLaneLean
end HautevilleHouse