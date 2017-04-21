package babylon;

extern class VRDistortionCorrectionPostProcess extends PostProcess
{
	var aspectRatio : Float;
	private var _isRightEye : Dynamic/*UNKNOW_TYPE*/;
	private var _distortionFactors : Dynamic/*UNKNOW_TYPE*/;
	private var _postProcessScaleFactor : Dynamic/*UNKNOW_TYPE*/;
	private var _lensCenterOffset : Dynamic/*UNKNOW_TYPE*/;
	private var _scaleIn : Dynamic/*UNKNOW_TYPE*/;
	private var _scaleFactor : Dynamic/*UNKNOW_TYPE*/;
	private var _lensCenter : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, camera:Camera, isRightEye:Bool, vrMetrics:VRCameraMetrics) : Void;
}