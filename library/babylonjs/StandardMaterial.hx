package babylonjs;

@:native("BABYLON.StandardMaterial")
extern class StandardMaterial extends PushMaterial
{
	private var _diffuseTexture : Dynamic;
	var diffuseTexture : Null<BaseTexture>;
	private var _ambientTexture : Dynamic;
	var ambientTexture : Null<BaseTexture>;
	private var _opacityTexture : Dynamic;
	var opacityTexture : Null<BaseTexture>;
	private var _reflectionTexture : Dynamic;
	var reflectionTexture : Null<BaseTexture>;
	private var _emissiveTexture : Dynamic;
	var emissiveTexture : Null<BaseTexture>;
	private var _specularTexture : Dynamic;
	var specularTexture : Null<BaseTexture>;
	private var _bumpTexture : Dynamic;
	var bumpTexture : Null<BaseTexture>;
	private var _lightmapTexture : Dynamic;
	var lightmapTexture : Null<BaseTexture>;
	private var _refractionTexture : Dynamic;
	var refractionTexture : Null<BaseTexture>;
	var ambientColor : Color3;
	var diffuseColor : Color3;
	var specularColor : Color3;
	var emissiveColor : Color3;
	var specularPower : Float;
	private var _useAlphaFromDiffuseTexture : Dynamic;
	var useAlphaFromDiffuseTexture : Bool;
	private var _useEmissiveAsIllumination : Dynamic;
	var useEmissiveAsIllumination : Bool;
	private var _linkEmissiveWithDiffuse : Dynamic;
	var linkEmissiveWithDiffuse : Bool;
	private var _useSpecularOverAlpha : Dynamic;
	var useSpecularOverAlpha : Bool;
	private var _useReflectionOverAlpha : Dynamic;
	var useReflectionOverAlpha : Bool;
	private var _disableLighting : Dynamic;
	var disableLighting : Bool;
	private var _useObjectSpaceNormalMap : Dynamic;
	/**
	 * Allows using an object space normal map (instead of tangent space).
	 */
	var useObjectSpaceNormalMap : Bool;
	private var _useParallax : Dynamic;
	var useParallax : Bool;
	private var _useParallaxOcclusion : Dynamic;
	var useParallaxOcclusion : Bool;
	var parallaxScaleBias : Float;
	private var _roughness : Dynamic;
	var roughness : Float;
	var indexOfRefraction : Float;
	var invertRefractionY : Bool;
	/**
	 * Defines the alpha limits in alpha test mode
	 */
	var alphaCutOff : Float;
	private var _useLightmapAsShadowmap : Dynamic;
	var useLightmapAsShadowmap : Bool;
	private var _diffuseFresnelParameters : Dynamic;
	var diffuseFresnelParameters : FresnelParameters;
	private var _opacityFresnelParameters : Dynamic;
	var opacityFresnelParameters : FresnelParameters;
	private var _reflectionFresnelParameters : Dynamic;
	var reflectionFresnelParameters : FresnelParameters;
	private var _refractionFresnelParameters : Dynamic;
	var refractionFresnelParameters : FresnelParameters;
	private var _emissiveFresnelParameters : Dynamic;
	var emissiveFresnelParameters : FresnelParameters;
	private var _useReflectionFresnelFromSpecular : Dynamic;
	var useReflectionFresnelFromSpecular : Bool;
	private var _useGlossinessFromSpecularMapAlpha : Dynamic;
	var useGlossinessFromSpecularMapAlpha : Bool;
	private var _maxSimultaneousLights : Dynamic;
	var maxSimultaneousLights : Float;
	/**
	 * If sets to true, x component of normal map value will invert (x = 1.0 - x).
	 */
	private var _invertNormalMapX : Dynamic;
	var invertNormalMapX : Bool;
	/**
	 * If sets to true, y component of normal map value will invert (y = 1.0 - y).
	 */
	private var _invertNormalMapY : Dynamic;
	var invertNormalMapY : Bool;
	/**
	 * If sets to true and backfaceCulling is false, normals will be flipped on the backside.
	 */
	private var _twoSidedLighting : Dynamic;
	var twoSidedLighting : Bool;
	/**
	 * Default configuration related to image processing available in the standard Material.
	 */
	private var _imageProcessingConfiguration : ImageProcessingConfiguration;
	/**
	 * Gets the image processing configuration used either in this material.
	 * Sets the Default image processing configuration used either in the this material.
	 * 
	 * If sets to null, the scene one is in use.
	 */
	var imageProcessingConfiguration : ImageProcessingConfiguration;
	/**
	 * Keep track of the image processing observer to allow dispose and replace.
	 */
	private var _imageProcessingObserver : Dynamic;
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
	var customShaderNameResolve : String->Array<String>->Array<String>->Array<String>->StandardMaterialDefines->String;
	private var _renderTargets : SmartArray<RenderTargetTexture>;
	private var _worldViewProjectionMatrix : Matrix;
	private var _globalAmbientColor : Color3;
	private var _useLogarithmicDepth : Bool;
	var useLogarithmicDepth : Bool;
	static var _DiffuseTextureEnabled : Bool;
	static var DiffuseTextureEnabled : Bool;
	static var _AmbientTextureEnabled : Bool;
	static var AmbientTextureEnabled : Bool;
	static var _OpacityTextureEnabled : Bool;
	static var OpacityTextureEnabled : Bool;
	static var _ReflectionTextureEnabled : Bool;
	static var ReflectionTextureEnabled : Bool;
	static var _EmissiveTextureEnabled : Bool;
	static var EmissiveTextureEnabled : Bool;
	static var _SpecularTextureEnabled : Bool;
	static var SpecularTextureEnabled : Bool;
	static var _BumpTextureEnabled : Bool;
	static var BumpTextureEnabled : Bool;
	static var _LightmapTextureEnabled : Bool;
	static var LightmapTextureEnabled : Bool;
	static var _RefractionTextureEnabled : Bool;
	static var RefractionTextureEnabled : Bool;
	static var _ColorGradingTextureEnabled : Bool;
	static var ColorGradingTextureEnabled : Bool;
	static var _FresnelEnabled : Bool;
	static var FresnelEnabled : Bool;

	/**
	 * Attaches a new image processing configuration to the Standard Material.
	 */
	function _attachImageProcessingConfiguration(configuration:Null<ImageProcessingConfiguration>) : Void;
	@:overload(function(name:String, scene:Scene): Void{})
	function new(name:String, scene:Scene, ?doNotAdd:Bool) : Void;
	override function getClassName() : String;
	override function needAlphaBlending() : Bool;
	override function needAlphaTesting() : Bool;
	function _shouldUseAlphaFromDiffuseTexture() : Bool;
	override function getAlphaTestTexture() : Null<BaseTexture>;
	/**
	 * Child classes can use it to update shaders
	 */
	@:overload(function(mesh:AbstractMesh, subMesh:SubMesh,?useInstances:Bool): Bool{})
	override function isReadyForSubMesh(mesh:AbstractMesh, subMesh:BaseSubMesh, ?useInstances:Bool) : Bool;
	function buildUniformLayout() : Void;
	override function unbind() : Void;
	override function bindForSubMesh(world:Matrix, mesh:Mesh, subMesh:SubMesh) : Void;
	function getAnimatables() : Array<IAnimatable>;
	override function getActiveTextures() : Array<BaseTexture>;
	override function hasTexture(texture:BaseTexture) : Bool;
	override function dispose(?forceDisposeEffect:Bool, ?forceDisposeTextures:Bool) : Void;
	@:overload(function(name:String): StandardMaterial{})
	override function clone(name:String) : Null<Material>;
	override function serialize() : Dynamic;
	static function Parse(source:Dynamic, scene:Scene, rootUrl:String) : StandardMaterial;
}