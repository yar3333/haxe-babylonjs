package babylonjs;

@:native("BABYLON.FilterPostProcess")
extern class FilterPostProcess extends PostProcess
{
	var kernelMatrix : Matrix;

	@:overload(function(name:String, kernelMatrix:Matrix, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>,?samplingMode:Float,?engine:Engine,?reusable:Bool): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
}