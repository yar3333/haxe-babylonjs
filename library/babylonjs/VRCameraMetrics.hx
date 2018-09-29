package babylonjs;

@:native("BABYLON.VRCameraMetrics")
extern class VRCameraMetrics
{
	var hResolution : Float;
	var vResolution : Float;
	var hScreenSize : Float;
	var vScreenSize : Float;
	var vScreenCenter : Float;
	var eyeToScreenDistance : Float;
	var lensSeparationDistance : Float;
	var interpupillaryDistance : Float;
	var distortionK : Array<Float>;
	var chromaAbCorrection : Array<Float>;
	var postProcessScaleFactor : Float;
	var lensCenterOffset : Float;
	var compensateDistortion : Bool;
	var aspectRatio(default, null) : Float;
	var aspectRatioFov(default, null) : Float;
	var leftHMatrix(default, null) : Matrix;
	var rightHMatrix(default, null) : Matrix;
	var leftPreViewMatrix(default, null) : Matrix;
	var rightPreViewMatrix(default, null) : Matrix;

	static function GetDefault() : VRCameraMetrics;
}