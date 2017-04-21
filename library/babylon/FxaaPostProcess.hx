package babylon;

extern class FxaaPostProcess extends PostProcess
{
	var texelWidth : Float;
	var texelHeight : Float;
	function new(name:String, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Camera, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool) : Void;
}