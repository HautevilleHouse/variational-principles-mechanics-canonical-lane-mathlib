import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMechanicsCanonicalLaneLean

structure GeodesicVariationPackage where
  riemannianManifold : Type u
  geodesicEquation : Prop
  variationVectorField : Prop
  jacobiField : Prop

structure GeodesicVariationEvidence (G : GeodesicVariationPackage) where
  geodesicEquationClosed : G.geodesicEquation
  variationVectorFieldClosed : G.variationVectorField
  jacobiFieldClosed : G.jacobiField

def GeodesicVariationClosed (G : GeodesicVariationPackage) : Prop :=
  G.geodesicEquation ∧ G.variationVectorField ∧ G.jacobiField

theorem geodesic_variation_closed_from_evidence (G : GeodesicVariationPackage)
    (E : GeodesicVariationEvidence G) : GeodesicVariationClosed G := by
  exact And.intro E.geodesicEquationClosed
    (And.intro E.variationVectorFieldClosed E.jacobiFieldClosed)

end VariationalPrinciplesMechanicsCanonicalLaneLean
end HautevilleHouse