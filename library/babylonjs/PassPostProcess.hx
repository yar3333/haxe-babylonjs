package babylonjs;

@:native("BABYLON.PassPostProcess")
extern class PassPostProcess extends PostProcess
{
	@:overload(function(name:String, options:haxe.extern.EitherType<Float, PostProcessOptions>,?camera:Null<Camera>,?samplingMode:Float,?engine:Engine,?reusable:Bool,?textureType:Float,?blockCompilation:Bool): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
}