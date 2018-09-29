package babylonjs;

@:native("BABYLON.ColorCorrectionPostProcess")
extern class ColorCorrectionPostProcess extends PostProcess
{
	private var _colorTableTexture : Dynamic;

	@:overload(function(name:String, colorTableUrl:String, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Camera,?samplingMode:Float,?engine:Engine,?reusable:Bool): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
}