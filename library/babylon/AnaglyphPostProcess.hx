package babylon;

extern class AnaglyphPostProcess extends PostProcess
{
	private var _passedProcess : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, options:haxe.extern.EitherType<Float, PostProcessOptions>, rigCameras:Array<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool) : Void;
}