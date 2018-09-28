package babylonjs.babylon;

/**
 * The bloom effect spreads bright areas of an image to simulate artifacts seen in cameras
 */
@:native("BABYLON.BloomEffect")
extern class BloomEffect extends PostProcessRenderEffect
{
	private var bloomScale : Dynamic;
	/**
	 * Internal
	 */
	var _effects : Array<PostProcess>;
	/**
	 * Internal
	 */
	var _downscale : ExtractHighlightsPostProcess;
	private var _blurX : Dynamic;
	private var _blurY : Dynamic;
	private var _merge : Dynamic;
	/**
	 * The luminance threshold to find bright areas of the image to bloom.
	 */
	var threshold : Float;
	/**
	 * The strength of the bloom.
	 */
	var weight : Float;
	/**
	 * Specifies the size of the bloom blur kernel, relative to the final output size
	 */
	var kernel : Float;

	/**
	 * The bloom effect spreads bright areas of an image to simulate artifacts seen in cameras
	 */
	@:overload(function(scene:Scene, bloomScale:Float, bloomWeight:Float, bloomKernel:Float,?pipelineTextureType:Float,?blockCompilation:Bool): Void{})
	function new(engine:Engine, name:String, getPostProcesses:Void->Null<haxe.extern.EitherType<PostProcess, Array<PostProcess>>>, ?singleInstance:Bool) : Void;
	/**
	 * Disposes each of the internal effects for a given camera.
	 */
	function disposeEffects(camera:Camera) : Void;
	/**
	 * Internal
	 */
	function _updateEffects() : Void;
	/**
	 * Internal
	 * @returns if all the contained post processes are ready.
	 */
	function _isReady() : Bool;
}