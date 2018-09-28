package babylonjs.babylon;

/**
 * The SharpenPostProcess applies a sharpen kernel to every pixel
 * See http://en.wikipedia.org/wiki/Kernel_(image_processing)
 */
@:native("BABYLON.SharpenPostProcess")
extern class SharpenPostProcess extends PostProcess
{
	/**
	 * How much of the original color should be applied. Setting this to 0 will display edge detection. (default: 1)
	 */
	var colorAmount : Float;
	/**
	 * How much sharpness should be applied (default: 0.3)
	 */
	var edgeAmount : Float;

	/**
	 * The SharpenPostProcess applies a sharpen kernel to every pixel
	 * See http://en.wikipedia.org/wiki/Kernel_(image_processing)
	 */
	@:overload(function(name:String, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>,?samplingMode:Float,?engine:Engine,?reusable:Bool,?textureType:Float,?blockCompilation:Bool): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
}