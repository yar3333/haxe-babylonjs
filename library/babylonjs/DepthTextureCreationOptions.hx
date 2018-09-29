package babylonjs;

/**
 * Define options used to create a depth texture
 */
@:native("BABYLON.DepthTextureCreationOptions")
extern class DepthTextureCreationOptions
{
	/**
	 * Specifies whether or not a stencil should be allocated in the texture 
	 */
	@:optional var generateStencil : Bool;
	/**
	 * Specifies whether or not bilinear filtering is enable on the texture 
	 */
	@:optional var bilinearFiltering : Bool;
	/**
	 * Specifies the comparison function to set on the texture. If 0 or undefined, the texture is not in comparison mode 
	 */
	@:optional var comparisonFunction : Float;
	/**
	 * Specifies if the created texture is a cube texture 
	 */
	@:optional var isCube : Bool;
}