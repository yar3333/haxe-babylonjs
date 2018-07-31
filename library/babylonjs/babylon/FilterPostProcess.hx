package babylon;

extern class FilterPostProcess extends PostProcess
{
	var kernelMatrix : Matrix;
	function new(name:String, kernelMatrix:Matrix, options:haxe.extern.EitherType<Float, PostProcessOptions>, ?camera:Camera, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool) : Void;
}