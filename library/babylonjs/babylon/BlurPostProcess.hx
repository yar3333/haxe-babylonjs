package babylonjs.babylon;

/**
 * The Blur Post Process which blurs an image based on a kernel and direction.
 * Can be used twice in x and y directions to perform a guassian blur in two passes.
 */
@:native("BABYLON.BlurPostProcess")
extern class BlurPostProcess extends PostProcess
{
	/**
	 * The direction in which to blur the image. 
	 */
	var direction : Vector2;
	private var blockCompilation : Dynamic;
	private var _kernel : Float;
	private var _idealKernel : Float;
	private var _packedFloat : Bool;
	private var _staticDefines : Dynamic;
	/**
	 * Gets the length in pixels of the blur sample region
	 * Sets the length in pixels of the blur sample region
	 */
	var kernel : Float;
	/**
	 * Gets wether or not the blur is unpacking/repacking floats
	 * Sets wether or not the blur needs to unpack/repack floats
	 */
	var packedFloat : Bool;

	/**
	 * The Blur Post Process which blurs an image based on a kernel and direction.
	 * Can be used twice in x and y directions to perform a guassian blur in two passes.
	 */
	@:overload(function(name:String, direction:Vector2, kernel:Float, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>,?samplingMode:Float,?engine:Engine,?reusable:Bool,?textureType:Float,?defines:String,?blockCompilation:Bool): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
	/**
	 * Updates the effect with the current post process compile time values and recompiles the shader.
	 */
	override function updateEffect(?defines:Null<String>, ?uniforms:Null<Array<String>>, ?samplers:Null<Array<String>>, ?indexParameters:Dynamic, ?onCompiled:Effect->Void, ?onError:Effect->String->Void) : Void;
	function _updateParameters(?onCompiled:Effect->Void, ?onError:Effect->String->Void) : Void;
	/**
	 * Best kernels are odd numbers that when divided by 2, their integer part is even, so 5, 9 or 13.
	 * Other odd kernels optimize correctly but require proportionally more samples, even kernels are
	 * possible but will produce minor visual artifacts. Since each new kernel requires a new shader we
	 * want to minimize kernel changes, having gaps between physical kernels is helpful in that regard.
	 * The gaps between physical kernels are compensated for in the weighting of the samples
	 * @return Nearest best kernel.
	 */
	function _nearestBestKernel(idealKernel:Float) : Float;
	/**
	 * Calculates the value of a Gaussian distribution with sigma 3 at a given point.
	 * @return the value of the Gaussian function at x.
	 */
	function _gaussianWeight(x:Float) : Float;
	/**
	 * Generates a string that can be used as a floating point number in GLSL.
	 * @return GLSL float string.
	 */
	function _glslFloat(x:Float, ?decimalFigures:Float) : String;
}