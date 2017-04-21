package babylon;

extern class TonemapPostProcess extends PostProcess
{
	private var _operator : Dynamic/*UNKNOW_TYPE*/;
	var exposureAdjustment : Float;
	function new(name:String, _operator:TonemappingOperator, exposureAdjustment:Float, camera:Camera, ?samplingMode:Float, ?engine:Engine, ?textureFormat:Float) : Void;
}