package babylonjs.babylon;

@:native("BABYLON.SphericalHarmonics")
extern class SphericalHarmonics
{
	var L00 : Vector3;
	var L1_1 : Vector3;
	var L10 : Vector3;
	var L11 : Vector3;
	var L2_2 : Vector3;
	var L2_1 : Vector3;
	var L20 : Vector3;
	var L21 : Vector3;
	var L22 : Vector3;

	function addLight(direction:Vector3, color:Color3, deltaSolidAngle:Float) : Void;
	function scale(scale:Float) : Void;
	function convertIncidentRadianceToIrradiance() : Void;
	function convertIrradianceToLambertianRadiance() : Void;
	static function getsphericalHarmonicsFromPolynomial(polynomial:SphericalPolynomial) : SphericalHarmonics;
}