package babylonjs.babylon;

/**
 * The BloomMergePostProcess merges blurred images with the original based on the values of the circle of confusion.
 */
@:native("BABYLON.BloomMergePostProcess")
extern class BloomMergePostProcess extends PostProcess
{
	/**
	 * Weight of the bloom to be added to the original input. 
	 */
	var weight : Float;

	/**
	 * The BloomMergePostProcess merges blurred images with the original based on the values of the circle of confusion.
	 */
	@:overload(function(name:String, originalFromInput:PostProcess, blurred:PostProcess, weight:Float, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>,?samplingMode:Float,?engine:Engine,?reusable:Bool,?textureType:Float,?blockCompilation:Bool): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
}