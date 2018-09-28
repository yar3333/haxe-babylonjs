package babylonjs.babylon;

@:native("BABYLON.VRDistortionCorrectionPostProcess")
extern class VRDistortionCorrectionPostProcess extends PostProcess
{
	private var _isRightEye : Dynamic;
	private var _distortionFactors : Dynamic;
	private var _postProcessScaleFactor : Dynamic;
	private var _lensCenterOffset : Dynamic;
	private var _scaleIn : Dynamic;
	private var _scaleFactor : Dynamic;
	private var _lensCenter : Dynamic;

	@:overload(function(name:String, camera:Camera, isRightEye:Bool, vrMetrics:VRCameraMetrics): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
}