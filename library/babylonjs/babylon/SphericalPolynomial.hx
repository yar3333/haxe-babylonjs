package babylon;

extern class SphericalPolynomial
{
	var x : Vector3;
	var y : Vector3;
	var z : Vector3;
	var xx : Vector3;
	var yy : Vector3;
	var zz : Vector3;
	var xy : Vector3;
	var yz : Vector3;
	var zx : Vector3;
	function addAmbient(color:Color3) : Void;
	static function getSphericalPolynomialFromHarmonics(harmonics:SphericalHarmonics) : SphericalPolynomial;
}