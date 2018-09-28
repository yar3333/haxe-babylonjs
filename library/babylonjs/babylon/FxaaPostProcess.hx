package babylonjs.babylon;

@:native("BABYLON.FxaaPostProcess")
extern class FxaaPostProcess extends PostProcess
{
	var texelWidth : Float;
	var texelHeight : Float;

	@:overload(function(name:String, options:haxe.extern.EitherType<Float, PostProcessOptions>,?camera:Null<Camera>,?samplingMode:Float,?engine:Engine,?reusable:Bool,?textureType:Float): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
	private function _getDefines() : Dynamic;
}