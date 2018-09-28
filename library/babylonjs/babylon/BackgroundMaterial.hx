package babylonjs.babylon;

/**
 * Background material used to create an efficient environement around your scene.
 */
@:native("BABYLON.BackgroundMaterial")
extern class BackgroundMaterial extends PushMaterial
{
	/**
	 * Standard reflectance value at parallel view angle.
	 */
	static var StandardReflectance0 : Float;
	/**
	 * Standard reflectance value at grazing angle.
	 */
	static var StandardReflectance90 : Float;
	private var _primaryColor : Color3;
	/**
	 * Key light Color (multiply against the environement texture)
	 */
	var primaryColor : Color3;
	private var __perceptualColor : Null<Color3>;
	/**
	 * Experimental Internal Use Only.
	 * 
	 * Key light Color in "perceptual value" meaning the color you would like to see on screen.
	 * This acts as a helper to set the primary color to a more "human friendly" value.
	 * Conversion to linear space as well as exposure and tone mapping correction will be applied to keep the
	 * output color as close as possible from the chosen value.
	 * (This does not account for contrast color grading and color curves as they are considered post effect and not directly
	 * part of lighting setup.)
	 */
	var _perceptualColor : Null<Color3>;
	private var _primaryColorShadowLevel : Float;
	/**
	 * Defines the level of the shadows (dark area of the reflection map) in order to help scaling the colors.
	 * The color opposite to the primary color is used at the level chosen to define what the black area would look.
	 */
	var primaryColorShadowLevel : Float;
	private var _primaryColorHighlightLevel : Float;
	/**
	 * Defines the level of the highliights (highlight area of the reflection map) in order to help scaling the colors.
	 * The primary color is used at the level chosen to define what the white area would look.
	 */
	var primaryColorHighlightLevel : Float;
	private var _reflectionTexture : Null<BaseTexture>;
	/**
	 * Reflection Texture used in the material.
	 * Should be author in a specific way for the best result (refer to the documentation).
	 */
	var reflectionTexture : Null<BaseTexture>;
	private var _reflectionBlur : Float;
	/**
	 * Reflection Texture level of blur.
	 * 
	 * Can be use to reuse an existing HDR Texture and target a specific LOD to prevent authoring the
	 * texture twice.
	 */
	var reflectionBlur : Float;
	private var _diffuseTexture : Null<BaseTexture>;
	/**
	 * Diffuse Texture used in the material.
	 * Should be author in a specific way for the best result (refer to the documentation).
	 */
	var diffuseTexture : Null<BaseTexture>;
	private var _shadowLights : Null<Array<IShadowLight>>;
	/**
	 * Specify the list of lights casting shadow on the material.
	 * All scene shadow lights will be included if null.
	 */
	var shadowLights : Null<Array<IShadowLight>>;
	private var _shadowLevel : Float;
	/**
	 * Helps adjusting the shadow to a softer level if required.
	 * 0 means black shadows and 1 means no shadows.
	 */
	var shadowLevel : Float;
	private var _sceneCenter : Vector3;
	/**
	 * In case of opacity Fresnel or reflection falloff, this is use as a scene center.
	 * It is usually zero but might be interesting to modify according to your setup.
	 */
	var sceneCenter : Vector3;
	private var _opacityFresnel : Bool;
	/**
	 * This helps specifying that the material is falling off to the sky box at grazing angle.
	 * This helps ensuring a nice transition when the camera goes under the ground.
	 */
	var opacityFresnel : Bool;
	private var _reflectionFresnel : Bool;
	/**
	 * This helps specifying that the material is falling off from diffuse to the reflection texture at grazing angle.
	 * This helps adding a mirror texture on the ground.
	 */
	var reflectionFresnel : Bool;
	private var _reflectionFalloffDistance : Float;
	/**
	 * This helps specifying the falloff radius off the reflection texture from the sceneCenter.
	 * This helps adding a nice falloff effect to the reflection if used as a mirror for instance.
	 */
	var reflectionFalloffDistance : Float;
	private var _reflectionAmount : Float;
	/**
	 * This specifies the weight of the reflection against the background in case of reflection Fresnel.
	 */
	var reflectionAmount : Float;
	private var _reflectionReflectance0 : Float;
	/**
	 * This specifies the weight of the reflection at grazing angle.
	 */
	var reflectionReflectance0 : Float;
	private var _reflectionReflectance90 : Float;
	/**
	 * This specifies the weight of the reflection at a perpendicular point of view.
	 */
	var reflectionReflectance90 : Float;
	/**
	 * Sets the reflection reflectance fresnel values according to the default standard
	 * empirically know to work well :-)
	 */
	var reflectionStandardFresnelWeight : Float;
	private var _useRGBColor : Bool;
	/**
	 * Helps to directly use the maps channels instead of their level.
	 */
	var useRGBColor : Bool;
	private var _enableNoise : Bool;
	/**
	 * This helps reducing the banding effect that could occur on the background.
	 */
	var enableNoise : Bool;
	/**
	 * The current fov(field of view) multiplier, 0.0 - 2.0. Defaults to 1.0. Lower values "zoom in" and higher values "zoom out".
	 * Best used when trying to implement visual zoom effects like fish-eye or binoculars while not adjusting camera fov.
	 * Recommended to be keep at 1.0 except for special cases.
	 */
	var fovMultiplier : Float;
	private var _fovMultiplier : Dynamic;
	/**
	 * Enable the FOV adjustment feature controlled by fovMultiplier.
	 */
	var useEquirectangularFOV : Bool;
	private var _maxSimultaneousLights : Dynamic;
	/**
	 * Number of Simultaneous lights allowed on the material.
	 */
	var maxSimultaneousLights : Int;
	/**
	 * Default configuration related to image processing available in the Background Material.
	 */
	private var _imageProcessingConfiguration : ImageProcessingConfiguration;
	/**
	 * Keep track of the image processing observer to allow dispose and replace.
	 */
	private var _imageProcessingObserver : Dynamic;
	/**
	 * Gets the image processing configuration used either in this material.
	 * Sets the Default image processing configuration used either in the this material.
	 * 
	 * If sets to null, the scene one is in use.
	 */
	var imageProcessingConfiguration : Null<ImageProcessingConfiguration>;
	/**
	 * Gets wether the color curves effect is enabled.
	 * Sets wether the color curves effect is enabled.
	 */
	var cameraColorCurvesEnabled : Bool;
	/**
	 * Gets wether the color grading effect is enabled.
	 * Gets wether the color grading effect is enabled.
	 */
	var cameraColorGradingEnabled : Bool;
	/**
	 * Gets wether tonemapping is enabled or not.
	 * Sets wether tonemapping is enabled or not
	 */
	var cameraToneMappingEnabled : Bool;
	/**
	 * The camera exposure used on this material.
	 * This property is here and not in the camera to allow controlling exposure without full screen post process.
	 * This corresponds to a photographic exposure.
	 * The camera exposure used on this material.
	 * This property is here and not in the camera to allow controlling exposure without full screen post process.
	 * This corresponds to a photographic exposure.
	 */
	var cameraExposure : Float;
	/**
	 * Gets The camera contrast used on this material.
	 * Sets The camera contrast used on this material.
	 */
	var cameraContrast : Float;
	/**
	 * Gets the Color Grading 2D Lookup Texture.
	 * Sets the Color Grading 2D Lookup Texture.
	 */
	var cameraColorGradingTexture : Null<BaseTexture>;
	/**
	 * The color grading curves provide additional color adjustmnent that is applied after any color grading transform (3D LUT).
	 * They allow basic adjustment of saturation and small exposure adjustments, along with color filter tinting to provide white balance adjustment or more stylistic effects.
	 * These are similar to controls found in many professional imaging or colorist software. The global controls are applied to the entire image. For advanced tuning, extra controls are provided to adjust the shadow, midtone and highlight areas of the image;
	 * corresponding to low luminance, medium luminance, and high luminance areas respectively.
	 * The color grading curves provide additional color adjustmnent that is applied after any color grading transform (3D LUT).
	 * They allow basic adjustment of saturation and small exposure adjustments, along with color filter tinting to provide white balance adjustment or more stylistic effects.
	 * These are similar to controls found in many professional imaging or colorist software. The global controls are applied to the entire image. For advanced tuning, extra controls are provided to adjust the shadow, midtone and highlight areas of the image;
	 * corresponding to low luminance, medium luminance, and high luminance areas respectively.
	 */
	var cameraColorCurves : Null<ColorCurves>;
	/**
	 * Due to a bug in iOS10, video tags (which are using the background material) are in BGR and not RGB.
	 * Setting this flag to true (not done automatically!) will convert it back to RGB.
	 */
	var switchToBGR : Bool;
	private var _renderTargets : Dynamic;
	private var _reflectionControls : Dynamic;
	private var _white : Dynamic;
	private var _primaryShadowColor : Dynamic;
	private var _primaryHighlightColor : Dynamic;

	/**
	 * Attaches a new image processing configuration to the PBR Material.
	 */
	function _attachImageProcessingConfiguration(configuration:Null<ImageProcessingConfiguration>) : Void;
	/**
	 * Background material used to create an efficient environement around your scene.
	 */
	@:overload(function(name:String, scene:Scene): Void{})
	function new(name:String, scene:Scene, ?doNotAdd:Bool) : Void;
	/**
	 * The entire material has been created in order to prevent overdraw.
	 * @returns false
	 */
	override function needAlphaTesting() : Bool;
	/**
	 * The entire material has been created in order to prevent overdraw.
	 * @returns true if blending is enable
	 */
	override function needAlphaBlending() : Bool;
	/**
	 * Checks wether the material is ready to be rendered for a given mesh.
	 * @returns true if all the dependencies are ready (Textures, Effects...)
	 */
	@:overload(function(mesh:AbstractMesh, subMesh:SubMesh,?useInstances:Bool): Bool{})
	override function isReadyForSubMesh(mesh:AbstractMesh, subMesh:BaseSubMesh, ?useInstances:Bool) : Bool;
	/**
	 * Compute the primary color according to the chosen perceptual color.
	 */
	private function _computePrimaryColorFromPerceptualColor() : Dynamic;
	/**
	 * Compute the highlights and shadow colors according to their chosen levels.
	 */
	private function _computePrimaryColors() : Dynamic;
	/**
	 * Build the uniform buffer used in the material.
	 */
	function buildUniformLayout() : Void;
	/**
	 * Unbind the material.
	 */
	override function unbind() : Void;
	/**
	 * Bind only the world matrix to the material.
	 */
	override function bindOnlyWorldMatrix(world:Matrix) : Void;
	/**
	 * Bind the material for a dedicated submeh (every used meshes will be considered opaque).
	 */
	override function bindForSubMesh(world:Matrix, mesh:Mesh, subMesh:SubMesh) : Void;
	/**
	 * Dispose the material.
	 */
	override function dispose(?forceDisposeEffect:Bool, ?forceDisposeTextures:Bool) : Void;
	/**
	 * Clones the material.
	 * @returns The cloned material.
	 */
	@:overload(function(name:String): BackgroundMaterial{})
	override function clone(name:String) : Null<Material>;
	/**
	 * Serializes the current material to its JSON representation.
	 * @returns The JSON representation.
	 */
	override function serialize() : Dynamic;
	/**
	 * Gets the class name of the material
	 * @returns "BackgroundMaterial"
	 */
	override function getClassName() : String;
	/**
	 * Parse a JSON input to create back a background material.
	 * @returns the instantiated BackgroundMaterial.
	 */
	static function Parse(source:Dynamic, scene:Scene, rootUrl:String) : BackgroundMaterial;
}