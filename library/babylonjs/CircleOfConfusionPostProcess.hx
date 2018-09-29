package babylonjs;

/**
 * The CircleOfConfusionPostProcess computes the circle of confusion value for each pixel given required lens parameters. See https://en.wikipedia.org/wiki/Circle_of_confusion
 */
@:native("BABYLON.CircleOfConfusionPostProcess")
extern class CircleOfConfusionPostProcess extends PostProcess
{
	/**
	 * Max lens size in scene units/1000 (eg. millimeter). Standard cameras are 50mm. (default: 50) The diamater of the resulting aperture can be computed by lensSize/fStop.
	 */
	var lensSize : Float;
	/**
	 * F-Stop of the effect's camera. The diamater of the resulting aperture can be computed by lensSize/fStop. (default: 1.4)
	 */
	var fStop : Float;
	/**
	 * Distance away from the camera to focus on in scene units/1000 (eg. millimeter). (default: 2000)
	 */
	var focusDistance : Float;
	/**
	 * Focal length of the effect's camera in scene units/1000 (eg. millimeter). (default: 50)
	 */
	var focalLength : Float;
	private var _depthTexture : Dynamic;
	/**
	 * Depth texture to be used to compute the circle of confusion. This must be set here or in the constructor in order for the post process to function.
	 */
	var depthTexture : RenderTargetTexture;

	/**
	 * The CircleOfConfusionPostProcess computes the circle of confusion value for each pixel given required lens parameters. See https://en.wikipedia.org/wiki/Circle_of_confusion
	 */
	@:overload(function(name:String, depthTexture:Null<RenderTargetTexture>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>,?samplingMode:Float,?engine:Engine,?reusable:Bool,?textureType:Float,?blockCompilation:Bool): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
}