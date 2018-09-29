package babylonjs;

@:native("BABYLON.MirrorTexture")
extern class MirrorTexture extends RenderTargetTexture
{
	private var scene : Dynamic;
	var mirrorPlane : Plane;
	private var _transformMatrix : Dynamic;
	private var _mirrorMatrix : Dynamic;
	private var _savedViewMatrix : Dynamic;
	private var _blurX : Dynamic;
	private var _blurY : Dynamic;
	private var _adaptiveBlurKernel : Dynamic;
	private var _blurKernelX : Dynamic;
	private var _blurKernelY : Dynamic;
	private var _blurRatio : Dynamic;
	var blurRatio : Float;
	var adaptiveBlurKernel : Float;
	var blurKernel : Float;
	var blurKernelX : Float;
	var blurKernelY : Float;
	private var _imageProcessingConfigChangeObserver : Dynamic;

	private function _autoComputeBlurKernel() : Dynamic;
	override function _onRatioRescale() : Void;
	private function _updateGammaSpace() : Dynamic;
	@:overload(function(name:String, size:haxe.extern.EitherType<Float, haxe.extern.EitherType<{ var width : Float; var height : Float;},{ var ratio : Float;}>>, scene:Scene,?generateMipMaps:Bool,?type:Float,?samplingMode:Float,?generateDepthBuffer:Bool): Void{})
	function new(scene:Null<Scene>) : Void;
	private function _preparePostProcesses() : Dynamic;
	@:overload(function(): MirrorTexture{})
	override function clone() : Null<BaseTexture>;
	override function serialize() : Dynamic;
	override function dispose() : Void;
}