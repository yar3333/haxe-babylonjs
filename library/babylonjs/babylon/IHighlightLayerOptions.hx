package babylonjs.babylon;

extern interface IHighlightLayerOptions
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
	 * Multiplication factor apply to the main texture size in the first step of the blur to reduce the size
	 * of the picture to blur (the smaller the faster).
	 */
	var blurTextureSizeRatio : Float;
	/**
	 * How big in texel of the blur texture is the vertical blur.
	 */
	var blurVerticalSize : Float;
	/**
	 * How big in texel of the blur texture is the horizontal blur.
	 */
	var blurHorizontalSize : Float;
	/**
	 * Alpha blending mode used to apply the blur. Default is combine.
	 */
	var alphaBlendingMode : Float;
	/**
	 * The camera attached to the layer.
	 */
	var camera : Null<Camera>;
	/**
	 * Should we display highlight as a solid stroke?
	 */
	@:optional var isStroke : Bool;
}