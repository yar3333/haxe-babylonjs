package babylonjs;

@:native("BABYLON.StereoscopicInterlacePostProcess")
extern class StereoscopicInterlacePostProcess extends PostProcess
{
	private var _stepSize : Dynamic;
	private var _passedProcess : Dynamic;

	@:overload(function(name:String, rigCameras:Array<Camera>, isStereoscopicHoriz:Bool,?samplingMode:Float,?engine:Engine,?reusable:Bool): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
}