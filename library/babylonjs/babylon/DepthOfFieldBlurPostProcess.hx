package babylonjs.babylon;

/**
 * The DepthOfFieldBlurPostProcess applied a blur in a give direction.
 * This blur differs from the standard BlurPostProcess as it attempts to avoid blurring pixels
 * based on samples that have a large difference in distance than the center pixel.
 * See section 2.6.2 http://fileadmin.cs.lth.se/cs/education/edan35/lectures/12dof.pdf
 */
@:native("BABYLON.DepthOfFieldBlurPostProcess")
extern class DepthOfFieldBlurPostProcess extends BlurPostProcess
{
	//var direction : Vector2;

	/**
	 * The DepthOfFieldBlurPostProcess applied a blur in a give direction.
	 * This blur differs from the standard BlurPostProcess as it attempts to avoid blurring pixels
	 * based on samples that have a large difference in distance than the center pixel.
	 * See section 2.6.2 http://fileadmin.cs.lth.se/cs/education/edan35/lectures/12dof.pdf
	 */
	@:overload(function(name:String, scene:Scene, direction:Vector2, kernel:Float, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, circleOfConfusion:PostProcess,?imageToBlur:Null<PostProcess>,?samplingMode:Float,?engine:Engine,?reusable:Bool,?textureType:Float,?blockCompilation:Bool): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
}