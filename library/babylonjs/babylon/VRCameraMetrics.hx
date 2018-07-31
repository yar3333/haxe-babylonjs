package babylon;

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
	var aspectRatio : Float;
	var aspectRatioFov : Float;
	var leftHMatrix : Matrix;
	var rightHMatrix : Matrix;
	var leftPreViewMatrix : Matrix;
	var rightPreViewMatrix : Matrix;
	static function GetDefault() : VRCameraMetrics;
}