package babylon;

extern class BlurPostProcess extends PostProcess
{
	var direction : Vector2;
	var blurWidth : Float;
	function new(name:String, direction:Vector2, blurWidth:Float, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Camera, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool) : Void;
}