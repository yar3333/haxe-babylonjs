package babylon;

extern class ColorCorrectionPostProcess extends PostProcess
{
	private var _colorTableTexture : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, colorTableUrl:String, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Camera, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool) : Void;
}