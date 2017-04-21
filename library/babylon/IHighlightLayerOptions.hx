package babylon;

extern interface IHighlightLayerOptions
{
	/**
	 * Multiplication factor apply to the canvas size to compute the render target size
	 * used to generated the glowing objects (the smaller the faster).
	 */
	@:optional var mainTextureRatio : Float;
	/**
	 * Enforces a fixed size texture to ensure resize independant blur.
	 */
	@:optional var mainTextureFixedSize : Float;
	/**
	 * Multiplication factor apply to the main texture size in the first step of the blur to reduce the size
	 * of the picture to blur (the smaller the faster).
	 */
	@:optional var blurTextureSizeRatio : Float;
	/**
	 * How big in texel of the blur texture is the vertical blur.
	 */
	@:optional var blurVerticalSize : Float;
	/**
	 * How big in texel of the blur texture is the horizontal blur.
	 */
	@:optional var blurHorizontalSize : Float;
	/**
	 * Alpha blending mode used to apply the blur. Default is combine.
	 */
	@:optional var alphaBlendingMode : Float;
	/**
	 * The camera attached to the layer.
	 */
	@:optional var camera : Camera;
}