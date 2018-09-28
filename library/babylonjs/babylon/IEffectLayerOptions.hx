package babylonjs.babylon;

extern interface IEffectLayerOptions
{
	/**
	 * Multiplication factor apply to the canvas size to compute the render target size
	 * used to generated the objects (the smaller the faster).
	 */
	var mainTextureRatio : Float;
	/**
	 * Enforces a fixed size texture to ensure effect stability across devices.
	 */
	@:optional var mainTextureFixedSize : Float;
	/**
	 * Alpha blending mode used to apply the blur. Default depends of the implementation.
	 */
	var alphaBlendingMode : Float;
	/**
	 * The camera attached to the layer.
	 */
	var camera : Null<Camera>;
}