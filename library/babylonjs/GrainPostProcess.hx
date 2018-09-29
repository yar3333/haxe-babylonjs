package babylonjs;

/**
 * The GrainPostProcess adds noise to the image at mid luminance levels
 */
@:native("BABYLON.GrainPostProcess")
extern class GrainPostProcess extends PostProcess
{
	/**
	 * The intensity of the grain added (default: 30)
	 */
	var intensity : Float;
	/**
	 * If the grain should be randomized on every frame
	 */
	var animated : Bool;

	/**
	 * The GrainPostProcess adds noise to the image at mid luminance levels
	 */
	@:overload(function(name:String, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>,?samplingMode:Float,?engine:Engine,?reusable:Bool,?textureType:Float,?blockCompilation:Bool): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
}