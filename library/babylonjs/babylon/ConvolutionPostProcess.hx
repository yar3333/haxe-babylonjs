package babylon;

extern class ConvolutionPostProcess extends PostProcess
{
	var kernel : Array<Float>;
	function new(name:String, kernel:Array<Float>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Camera, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool) : Void;
	static var EdgeDetect0Kernel : Array<Float>;
	static var EdgeDetect1Kernel : Array<Float>;
	static var EdgeDetect2Kernel : Array<Float>;
	static var SharpenKernel : Array<Float>;
	static var EmbossKernel : Array<Float>;
	static var GaussianKernel : Array<Float>;
}