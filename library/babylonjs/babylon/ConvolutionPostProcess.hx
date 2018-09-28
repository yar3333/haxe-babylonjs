package babylonjs.babylon;

/**
 * The ConvolutionPostProcess applies a 3x3 kernel to every pixel of the
 * input texture to perform effects such as edge detection or sharpening
 * See http://en.wikipedia.org/wiki/Kernel_(image_processing)
 */
@:native("BABYLON.ConvolutionPostProcess")
extern class ConvolutionPostProcess extends PostProcess
{
	/**
	 * Array of 9 values corrisponding to the 3x3 kernel to be applied 
	 */
	var kernel : Array<Float>;
	/**
	 * Edge detection 0 see https://en.wikipedia.org/wiki/Kernel_(image_processing)
	 */
	static var EdgeDetect0Kernel : Array<Float>;
	/**
	 * Edge detection 1 see https://en.wikipedia.org/wiki/Kernel_(image_processing)
	 */
	static var EdgeDetect1Kernel : Array<Float>;
	/**
	 * Edge detection 2 see https://en.wikipedia.org/wiki/Kernel_(image_processing)
	 */
	static var EdgeDetect2Kernel : Array<Float>;
	/**
	 * Kernel to sharpen an image see https://en.wikipedia.org/wiki/Kernel_(image_processing)
	 */
	static var SharpenKernel : Array<Float>;
	/**
	 * Kernel to emboss an image see https://en.wikipedia.org/wiki/Kernel_(image_processing)
	 */
	static var EmbossKernel : Array<Float>;
	/**
	 * Kernel to blur an image see https://en.wikipedia.org/wiki/Kernel_(image_processing)
	 */
	static var GaussianKernel : Array<Float>;

	/**
	 * The ConvolutionPostProcess applies a 3x3 kernel to every pixel of the
	 * input texture to perform effects such as edge detection or sharpening
	 * See http://en.wikipedia.org/wiki/Kernel_(image_processing)
	 */
	@:overload(function(name:String, kernel:Array<Float>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>,?samplingMode:Float,?engine:Engine,?reusable:Bool,?textureType:Float): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
}