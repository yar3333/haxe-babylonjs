package babylon;

extern class StereoscopicInterlacePostProcess extends PostProcess
{
	private var _stepSize : Dynamic/*UNKNOW_TYPE*/;
	private var _passedProcess : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, rigCameras:Array<Camera>, isStereoscopicHoriz:Bool, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool) : Void;
}