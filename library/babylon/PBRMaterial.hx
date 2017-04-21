package babylon;

extern class PBRMaterial extends BABYLON.Material
{
	/**
	 * Intensity of the direct lights e.g. the four lights available in your scene.
	 * This impacts both the direct diffuse and specular highlights.
	 */
	var directIntensity : Float;
	/**
	 * Intensity of the emissive part of the material.
	 * This helps controlling the emissive effect without modifying the emissive color.
	 */
	var emissiveIntensity : Float;
	/**
	 * Intensity of the environment e.g. how much the environment will light the object
	 * either through harmonics for rough material or through the refelction for shiny ones.
	 */
	var environmentIntensity : Float;
	/**
	 * This is a special control allowing the reduction of the specular highlights coming from the
	 * four lights of the scene. Those highlights may not be needed in full environment lighting.
	 */
	var specularIntensity : Float;
	private var _lightingInfos : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * Debug Control allowing disabling the bump map on this material.
	 */
	var disableBumpMap : Bool;
	/**
	 * Debug Control helping enforcing or dropping the darkness of shadows.
	 * 1.0 means the shadows have their normal darkness, 0.0 means the shadows are not visible.
	 */
	var overloadedShadowIntensity : Float;
	/**
	 * Debug Control helping dropping the shading effect coming from the diffuse lighting.
	 * 1.0 means the shade have their normal impact, 0.0 means no shading at all.
	 */
	var overloadedShadeIntensity : Float;
	private var _overloadedShadowInfos : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * The camera exposure used on this material.
	 * This property is here and not in the camera to allow controlling exposure without full screen post process.
	 * This corresponds to a photographic exposure.
	 */
	var cameraExposure : Float;
	/**
	 * The camera contrast used on this material.
	 * This property is here and not in the camera to allow controlling contrast without full screen post process.
	 */
	var cameraContrast : Float;
	/**
	 * Color Grading 2D Lookup Texture.
	 * This allows special effects like sepia, black and white to sixties rendering style.
	 */
	var cameraColorGradingTexture : BaseTexture;
	/**
	 * The color grading curves provide additional color adjustmnent that is applied after any color grading transform (3D LUT).
	 * They allow basic adjustment of saturation and small exposure adjustments, along with color filter tinting to provide white balance adjustment or more stylistic effects.
	 * These are similar to controls found in many professional imaging or colorist software. The global controls are applied to the entire image. For advanced tuning, extra controls are provided to adjust the shadow, midtone and highlight areas of the image;
	 * corresponding to low luminance, medium luminance, and high luminance areas respectively.
	 */
	var cameraColorCurves : ColorCurves;
	private var _cameraInfos : Dynamic/*UNKNOW_TYPE*/;
	private var _microsurfaceTextureLods : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * Debug Control allowing to overload the ambient color.
	 * This as to be use with the overloadedAmbientIntensity parameter.
	 */
	var overloadedAmbient : Color3;
	/**
	 * Debug Control indicating how much the overloaded ambient color is used against the default one.
	 */
	var overloadedAmbientIntensity : Float;
	/**
	 * Debug Control allowing to overload the albedo color.
	 * This as to be use with the overloadedAlbedoIntensity parameter.
	 */
	var overloadedAlbedo : Color3;
	/**
	 * Debug Control indicating how much the overloaded albedo color is used against the default one.
	 */
	var overloadedAlbedoIntensity : Float;
	/**
	 * Debug Control allowing to overload the reflectivity color.
	 * This as to be use with the overloadedReflectivityIntensity parameter.
	 */
	var overloadedReflectivity : Color3;
	/**
	 * Debug Control indicating how much the overloaded reflectivity color is used against the default one.
	 */
	var overloadedReflectivityIntensity : Float;
	/**
	 * Debug Control allowing to overload the emissive color.
	 * This as to be use with the overloadedEmissiveIntensity parameter.
	 */
	var overloadedEmissive : Color3;
	/**
	 * Debug Control indicating how much the overloaded emissive color is used against the default one.
	 */
	var overloadedEmissiveIntensity : Float;
	private var _overloadedIntensity : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * Debug Control allowing to overload the reflection color.
	 * This as to be use with the overloadedReflectionIntensity parameter.
	 */
	var overloadedReflection : Color3;
	/**
	 * Debug Control indicating how much the overloaded reflection color is used against the default one.
	 */
	var overloadedReflectionIntensity : Float;
	/**
	 * Debug Control allowing to overload the microsurface.
	 * This as to be use with the overloadedMicroSurfaceIntensity parameter.
	 */
	var overloadedMicroSurface : Float;
	/**
	 * Debug Control indicating how much the overloaded microsurface is used against the default one.
	 */
	var overloadedMicroSurfaceIntensity : Float;
	private var _overloadedMicroSurface : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * AKA Diffuse Texture in standard nomenclature.
	 */
	var albedoTexture : BaseTexture;
	/**
	 * AKA Occlusion Texture in other nomenclature.
	 */
	var ambientTexture : BaseTexture;
	/**
	 * AKA Occlusion Texture Intensity in other nomenclature.
	 */
	var ambientTextureStrength : Float;
	var opacityTexture : BaseTexture;
	var reflectionTexture : BaseTexture;
	var emissiveTexture : BaseTexture;
	/**
	 * AKA Specular texture in other nomenclature.
	 */
	var reflectivityTexture : BaseTexture;
	/**
	 * Used to switch from specular/glossiness to metallic/roughness workflow.
	 */
	var metallicTexture : BaseTexture;
	var bumpTexture : BaseTexture;
	var lightmapTexture : BaseTexture;
	var refractionTexture : BaseTexture;
	var ambientColor : Color3;
	/**
	 * AKA Diffuse Color in other nomenclature.
	 */
	var albedoColor : Color3;
	/**
	 * AKA Specular Color in other nomenclature.
	 */
	var reflectivityColor : Color3;
	var reflectionColor : Color3;
	var emissiveColor : Color3;
	/**
	 * AKA Glossiness in other nomenclature.
	 */
	var microSurface : Float;
	/**
	 * source material index of refraction (IOR)' / 'destination material IOR.
	 */
	var indexOfRefraction : Float;
	/**
	 * Controls if refraction needs to be inverted on Y. This could be usefull for procedural texture.
	 */
	var invertRefractionY : Bool;
	var opacityFresnelParameters : FresnelParameters;
	var emissiveFresnelParameters : FresnelParameters;
	/**
	 * This parameters will make the material used its opacity to control how much it is refracting aginst not.
	 * Materials half opaque for instance using refraction could benefit from this control.
	 */
	var linkRefractionWithTransparency : Bool;
	/**
	 * The emissive and albedo are linked to never be more than one (Energy conservation).
	 */
	var linkEmissiveWithAlbedo : Bool;
	var useLightmapAsShadowmap : Bool;
	/**
	 * In this mode, the emissive informtaion will always be added to the lighting once.
	 * A light for instance can be thought as emissive.
	 */
	var useEmissiveAsIllumination : Bool;
	/**
	 * Secifies that the alpha is coming form the albedo channel alpha channel.
	 */
	var useAlphaFromAlbedoTexture : Bool;
	/**
	 * Specifies that the material will keeps the specular highlights over a transparent surface (only the most limunous ones).
	 * A car glass is a good exemple of that. When sun reflects on it you can not see what is behind.
	 */
	var useSpecularOverAlpha : Bool;
	/**
	 * Specifies if the reflectivity texture contains the glossiness information in its alpha channel.
	 */
	var useMicroSurfaceFromReflectivityMapAlpha : Bool;
	/**
	 * Specifies if the metallic texture contains the roughness information in its alpha channel.
	 */
	var useRoughnessFromMetallicTextureAlpha : Bool;
	/**
	 * Specifies if the metallic texture contains the roughness information in its green channel.
	 */
	var useRoughnessFromMetallicTextureGreen : Bool;
	/**
	 * In case the reflectivity map does not contain the microsurface information in its alpha channel,
	 * The material will try to infer what glossiness each pixel should be.
	 */
	var useAutoMicroSurfaceFromReflectivityMap : Bool;
	/**
	 * Allows to work with scalar in linear mode. This is definitely a matter of preferences and tools used during
	 * the creation of the material.
	 */
	var useScalarInLinearSpace : Bool;
	/**
	 * BJS is using an harcoded light falloff based on a manually sets up range.
	 * In PBR, one way to represents the fallof is to use the inverse squared root algorythm.
	 * This parameter can help you switch back to the BJS mode in order to create scenes using both materials.
	 */
	var usePhysicalLightFalloff : Bool;
	/**
	 * Specifies that the material will keeps the reflection highlights over a transparent surface (only the most limunous ones).
	 * A car glass is a good exemple of that. When the street lights reflects on it you can not see what is behind.
	 */
	var useRadianceOverAlpha : Bool;
	/**
	 * Allows using the bump map in parallax mode.
	 */
	var useParallax : Bool;
	/**
	 * Allows using the bump map in parallax occlusion mode.
	 */
	var useParallaxOcclusion : Bool;
	/**
	 * Controls the scale bias of the parallax mode.
	 */
	var parallaxScaleBias : Float;
	/**
	 * If sets to true, disables all the lights affecting the material.
	 */
	var disableLighting : Bool;
	/**
	 * Number of Simultaneous lights allowed on the material.
	 */
	var maxSimultaneousLights : Float;
	/**
	 * If sets to true, x component of normal map value will invert (x = 1.0 - x).
	 */
	var invertNormalMapX : Bool;
	/**
	 * If sets to true, y component of normal map value will invert (y = 1.0 - y).
	 */
	var invertNormalMapY : Bool;
	private var _renderTargets : Dynamic/*UNKNOW_TYPE*/;
	private var _worldViewProjectionMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _globalAmbientColor : Dynamic/*UNKNOW_TYPE*/;
	private var _tempColor : Dynamic/*UNKNOW_TYPE*/;
	private var _renderId : Dynamic/*UNKNOW_TYPE*/;
	private var _defines : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedDefines : Dynamic/*UNKNOW_TYPE*/;
	private var _useLogarithmicDepth : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * Instantiates a new PBRMaterial instance.
	 *
	 * @param name The material name
	 * @param scene The scene the material will be use in.
	 */
	function new(name:String, scene:Scene) : Void;
	var useLogarithmicDepth : Bool;
	function needAlphaBlending() : Bool;
	function needAlphaTesting() : Bool;
	private function _shouldUseAlphaFromAlbedoTexture();
	function getAlphaTestTexture() : BaseTexture;
	private function _checkCache(scene, ?mesh, useInstances?);
	private function convertColorToLinearSpaceToRef(color, ref);
	private static function convertColorToLinearSpaceToRef(color, ref, useScalarInLinear);
	private static var _scaledAlbedo : Dynamic/*UNKNOW_TYPE*/;
	private static var _scaledReflectivity : Dynamic/*UNKNOW_TYPE*/;
	private static var _scaledEmissive : Dynamic/*UNKNOW_TYPE*/;
	private static var _scaledReflection : Dynamic/*UNKNOW_TYPE*/;
	static function BindLights(scene:Scene, mesh:AbstractMesh, effect:Effect, defines:MaterialDefines, useScalarInLinearSpace:Bool, maxSimultaneousLights:Float, usePhysicalLightFalloff:Bool) : Void;
	function isReady(?mesh:AbstractMesh, ?useInstances:Bool) : Bool;
	function unbind() : Void;
	function bindOnlyWorldMatrix(world:Matrix) : Void;
	private var _myScene : Dynamic/*UNKNOW_TYPE*/;
	private var _myShadowGenerator : Dynamic/*UNKNOW_TYPE*/;
	function bind(world:Matrix, ?mesh:Mesh) : Void;
	function getAnimatables() : Array<IAnimatable>;
	function dispose(?forceDisposeEffect:Bool, ?forceDisposeTextures:Bool) : Void;
	function clone(name:String) : PBRMaterial;
	function serialize() : Dynamic;
	static function Parse(source:Dynamic, scene:Scene, rootUrl:String) : PBRMaterial;
}