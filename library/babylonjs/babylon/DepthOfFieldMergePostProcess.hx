package babylonjs.babylon;

/**
 * The DepthOfFieldMergePostProcess merges blurred images with the original based on the values of the circle of confusion.
 */
@:native("BABYLON.DepthOfFieldMergePostProcess")
extern class DepthOfFieldMergePostProcess extends PostProcess
{
	private var blurSteps : Dynamic;

	/**
	 * The DepthOfFieldMergePostProcess merges blurred images with the original based on the values of the circle of confusion.
	 */
	@:overload(function(name:String, originalFromInput:PostProcess, circleOfConfusion:PostProcess, blurSteps:Array<PostProcess>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>,?samplingMode:Float,?engine:Engine,?reusable:Bool,?textureType:Float,?blockCompilation:Bool): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
	/**
	 * Updates the effect with the current post process compile time values and recompiles the shader.
	 */
	override function updateEffect(?defines:Null<String>, ?uniforms:Null<Array<String>>, ?samplers:Null<Array<String>>, ?indexParameters:Dynamic, ?onCompiled:Effect->Void, ?onError:Effect->String->Void) : Void;
}