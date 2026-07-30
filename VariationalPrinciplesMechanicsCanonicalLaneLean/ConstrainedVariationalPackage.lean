import VariationalPrinciplesMechanicsCanonicalLaneLean.HamiltonPrinciple

namespace HautevilleHouse
namespace VariationalPrinciplesMechanicsCanonicalLaneLean

structure ConstrainedVariationalPackage {E : EulerLagrangeEquationPackage} {N : NoetherTheoremPackage E} {H : HamiltonPrinciplePackage E} where
  lagrangeMultiplier : Type u
  holonomicConstraints : Prop
  constrainedEulerLagrange : Prop
  equivalenceToUnconstrained : Prop

structure ConstrainedVariationalEvidence {E : EulerLagrangeEquationPackage} {N : NoetherTheoremPackage E} {H : HamiltonPrinciplePackage E} (C : ConstrainedVariationalPackage E N H) where
  equivalenceToUnconstrainedClosed : C.equivalenceToUnconstrained

def ConstrainedVariationalClosed {E : EulerLagrangeEquationPackage} {N : NoetherTheoremPackage E} {H : HamiltonPrinciplePackage E} (C : ConstrainedVariationalPackage E N H) : Prop :=
  C.equivalenceToUnconstrained

theorem constrained_variational_closed_from_evidence {E : EulerLagrangeEquationPackage} {N : NoetherTheoremPackage E} {H : HamiltonPrinciplePackage E} (C : ConstrainedVariationalPackage E N H) (Ev : ConstrainedVariationalEvidence C) : ConstrainedVariationalClosed C := Ev.equivalenceToUnconstrainedClosed

end VariationalPrinciplesMechanicsCanonicalLaneLean
end HautevilleHouse