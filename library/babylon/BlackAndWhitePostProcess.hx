package babylon;

extern class BlackAndWhitePostProcess extends PostProcess
{
	function new(name:String, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Camera, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool) : Void;
}