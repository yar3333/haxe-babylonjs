package babylonjs;

/**
 * The depth of field effect applies a blur to objects that are closer or further from where the camera is focusing.
 */
@:native("BABYLON.DepthOfFieldEffect")
extern class DepthOfFieldEffect extends PostProcessRenderEffect
{
	private var _circleOfConfusion : Dynamic;
	/**
	 * Internal, blurs from high to low
	 */
	var _depthOfFieldBlurX : Array<DepthOfFieldBlurPostProcess>;
	private var _depthOfFieldBlurY : Dynamic;
	private var _dofMerge : Dynamic;
	/**
	 * Internal post processes in depth of field effect
	 */
	var _effects : Array<PostProcess>;
	/**
	 * The focal the length of the camera used in the effect in scene units/1000 (eg. millimeter)
	 */
	var focalLength : Float;
	/**
	 * F-Stop of the effect's camera. The diamater of the resulting aperture can be computed by lensSize/fStop. (default: 1.4)
	 */
	var fStop : Float;
	/**
	 * Distance away from the camera to focus on in scene units/1000 (eg. millimeter). (default: 2000)
	 */
	var focusDistance : Float;
	/**
	 * Max lens size in scene units/1000 (eg. millimeter). Standard cameras are 50mm. (default: 50) The diamater of the resulting aperture can be computed by lensSize/fStop.
	 */
	var lensSize : Float;
	/**
	 * Depth texture to be used to compute the circle of confusion. This must be set here or in the constructor in order for the post process to function.
	 */
	var depthTexture : RenderTargetTexture;

	/**
	 * The depth of field effect applies a blur to objects that are closer or further from where the camera is focusing.
	 */
	@:overload(function(scene:Scene, depthTexture:Null<RenderTargetTexture>,?blurLevel:DepthOfFieldEffectBlurLevel,?pipelineTextureType:Float,?blockCompilation:Bool): Void{})
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