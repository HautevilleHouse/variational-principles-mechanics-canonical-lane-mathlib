import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMechanicsCanonicalLaneLean

structure HamiltonianPackage where
  phaseSpace : Type u
  timeDomain : Type v
  hamiltonian : (phaseSpace → phaseSpace) → timeDomain → ℝ
  canonicalEquations : Prop
  symplecticFormNondegenerate : Prop
  canonicalEquationsDerived : canonicalEquations

structure HamiltonianEvidence (H : HamiltonianPackage) where
  canonicalEquationsClosed : H.canonicalEquations
  symplecticFormNondegenerateClosed : H.symplecticFormNondegenerate

def HamiltonianClosed (H : HamiltonianPackage) : Prop :=
  H.canonicalEquations ∧ H.symplecticFormNondegenerate

theorem hamiltonian_closed_from_evidence (H : HamiltonianPackage) (E : HamiltonianEvidence H) :
    HamiltonianClosed H := by
  exact And.intro E.canonicalEquationsClosed E.symplecticFormNondegenerateClosed

end VariationalPrinciplesMechanicsCanonicalLaneLean
end HautevilleHouse