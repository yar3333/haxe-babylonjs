package babylonjs.babylon;

/**
 * Define options used to create a render target texture
 */
@:native("BABYLON.RenderTargetCreationOptions")
extern class RenderTargetCreationOptions
{
	/**
	 * Specifies is mipmaps must be generated
	 */
	@:optional var generateMipMaps : Bool;
	/**
	 * Specifies whether or not a depth should be allocated in the texture (true by default) 
	 */
	@:optional var generateDepthBuffer : Bool;
	/**
	 * Specifies whether or not a stencil should be allocated in the texture (false by default)
	 */
	@:optional var generateStencilBuffer : Bool;
	/**
	 * Defines texture type (int by default) 
	 */
	@:optional var type : Float;
	/**
	 * Defines sampling mode (trilinear by default) 
	 */
	@:optional var samplingMode : Float;
	/**
	 * Defines format (RGBA by default) 
	 */
	@:optional var format : Float;
}