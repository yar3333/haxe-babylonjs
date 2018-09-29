package babylonjs;

extern interface IGlowLayerOptions
{
	/**
	 * Multiplication factor apply to the canvas size to compute the render target size
	 * used to generated the glowing objects (the smaller the faster).
	 */
	var mainTextureRatio : Float;
	/**
	 * Enforces a fixed size texture to ensure resize independant blur.
	 */
	@:optional var mainTextureFixedSize : Float;
	/**
	 * How big is the kernel of the blur texture.
	 */
	var blurKernelSize : Float;
	/**
	 * The camera attached to the layer.
	 */
	var camera : Null<Camera>;
	/**
	 * Enable MSAA by chosing the number of samples.
	 */
	@:optional var mainTextureSamples : Float;
}