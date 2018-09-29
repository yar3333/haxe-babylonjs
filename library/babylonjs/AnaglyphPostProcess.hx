package babylonjs;

/**
 * Postprocess used to generate anaglyphic rendering
 */
@:native("BABYLON.AnaglyphPostProcess")
extern class AnaglyphPostProcess extends PostProcess
{
	private var _passedProcess : Dynamic;

	/**
	 * Postprocess used to generate anaglyphic rendering
	 */
	@:overload(function(name:String, options:haxe.extern.EitherType<Float, PostProcessOptions>, rigCameras:Array<Camera>,?samplingMode:Float,?engine:Engine,?reusable:Bool): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
}