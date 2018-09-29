package babylonjs;

/**
 * Defines a post process to apply tone mapping
 */
@:native("BABYLON.TonemapPostProcess")
extern class TonemapPostProcess extends PostProcess
{
	private var _operator : Dynamic;
	/**
	 * Defines the required exposure adjustement 
	 */
	var exposureAdjustment : Float;

	/**
	 * Defines a post process to apply tone mapping
	 */
	@:overload(function(name:String,_operator:TonemappingOperator, exposureAdjustment:Float, camera:Camera,?samplingMode:Float,?engine:Engine,?textureFormat:Float): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
}