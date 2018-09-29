package babylonjs;

extern interface IEnvironmentHelperOptions
{
	/**
	 * Specifies wether or not to create a ground.
	 * True by default.
	 */
	var createGround : Bool;
	/**
	 * Specifies the ground size.
	 * 15 by default.
	 */
	var groundSize : Float;
	/**
	 * The texture used on the ground for the main color.
	 * Comes from the BabylonJS CDN by default.
	 * 
	 * Remarks: Can be either a texture or a url.
	 */
	var groundTexture : haxe.extern.EitherType<String, BaseTexture>;
	/**
	 * The color mixed in the ground texture by default.
	 * BabylonJS clearColor by default.
	 */
	var groundColor : Color3;
	/**
	 * Specifies the ground opacity.
	 * 1 by default.
	 */
	var groundOpacity : Float;
	/**
	 * Enables the ground to receive shadows.
	 * True by default.
	 */
	var enableGroundShadow : Bool;
	/**
	 * Helps preventing the shadow to be fully black on the ground.
	 * 0.5 by default.
	 */
	var groundShadowLevel : Float;
	/**
	 * Creates a mirror texture attach to the ground.
	 * false by default.
	 */
	var enableGroundMirror : Bool;
	/**
	 * Specifies the ground mirror size ratio.
	 * 0.3 by default as the default kernel is 64.
	 */
	var groundMirrorSizeRatio : Float;
	/**
	 * Specifies the ground mirror blur kernel size.
	 * 64 by default.
	 */
	var groundMirrorBlurKernel : Float;
	/**
	 * Specifies the ground mirror visibility amount.
	 * 1 by default
	 */
	var groundMirrorAmount : Float;
	/**
	 * Specifies the ground mirror reflectance weight.
	 * This uses the standard weight of the background material to setup the fresnel effect
	 * of the mirror.
	 * 1 by default.
	 */
	var groundMirrorFresnelWeight : Float;
	/**
	 * Specifies the ground mirror Falloff distance.
	 * This can helps reducing the size of the reflection.
	 * 0 by Default.
	 */
	var groundMirrorFallOffDistance : Float;
	/**
	 * Specifies the ground mirror texture type.
	 * Unsigned Int by Default.
	 */
	var groundMirrorTextureType : Float;
	/**
	 * Specifies a bias applied to the ground vertical position to prevent z-fighyting with
	 * the shown objects.
	 */
	var groundYBias : Float;
	/**
	 * Specifies wether or not to create a skybox.
	 * True by default.
	 */
	var createSkybox : Bool;
	/**
	 * Specifies the skybox size.
	 * 20 by default.
	 */
	var skyboxSize : Float;
	/**
	 * The texture used on the skybox for the main color.
	 * Comes from the BabylonJS CDN by default.
	 * 
	 * Remarks: Can be either a texture or a url.
	 */
	var skyboxTexture : haxe.extern.EitherType<String, BaseTexture>;
	/**
	 * The color mixed in the skybox texture by default.
	 * BabylonJS clearColor by default.
	 */
	var skyboxColor : Color3;
	/**
	 * The background rotation around the Y axis of the scene.
	 * This helps aligning the key lights of your scene with the background.
	 * 0 by default.
	 */
	var backgroundYRotation : Float;
	/**
	 * Compute automatically the size of the elements to best fit with the scene.
	 */
	var sizeAuto : Bool;
	/**
	 * Default position of the rootMesh if autoSize is not true.
	 */
	var rootPosition : Vector3;
	/**
	 * Sets up the image processing in the scene.
	 * true by default.
	 */
	var setupImageProcessing : Bool;
	/**
	 * The texture used as your environment texture in the scene.
	 * Comes from the BabylonJS CDN by default and in use if setupImageProcessing is true.
	 * 
	 * Remarks: Can be either a texture or a url.
	 */
	var environmentTexture : haxe.extern.EitherType<String, BaseTexture>;
	/**
	 * The value of the exposure to apply to the scene.
	 * 0.6 by default if setupImageProcessing is true.
	 */
	var cameraExposure : Float;
	/**
	 * The value of the contrast to apply to the scene.
	 * 1.6 by default if setupImageProcessing is true.
	 */
	var cameraContrast : Float;
	/**
	 * Specifies wether or not tonemapping should be enabled in the scene.
	 * true by default if setupImageProcessing is true.
	 */
	var toneMappingEnabled : Bool;
}