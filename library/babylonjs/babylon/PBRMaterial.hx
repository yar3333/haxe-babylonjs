package babylonjs.babylon;

/**
 * The Physically based material of BJS.
 * 
 * This offers the main features of a standard PBR material.
 * For more information, please refer to the documentation :
 * http://doc.babylonjs.com/extensions/Physically_Based_Rendering
 */
@:native("BABYLON.PBRMaterial")
extern class PBRMaterial extends PBRBaseMaterial
{
	private static var _PBRMATERIAL_OPAQUE : Dynamic;
	/**
	 * PBRMaterialTransparencyMode: No transparency mode, Alpha channel is not use.
	 */
	static var PBRMATERIAL_OPAQUE(default, null) : Float;
	/**
	 * Alpha Test mode, pixel are discarded below a certain threshold defined by the alpha cutoff value.
	 */
	private static var _PBRMATERIAL_ALPHATEST : Dynamic;
	/**
	 * PBRMaterialTransparencyMode: Alpha Test mode, pixel are discarded below a certain threshold defined by the alpha cutoff value.
	 */
	static var PBRMATERIAL_ALPHATEST(default, null) : Float;
	/**
	 * Represents the value for Alpha Blend.  Pixels are blended (according to the alpha mode) with the already drawn pixels in the current frame buffer.
	 */
	private static var _PBRMATERIAL_ALPHABLEND : Dynamic;
	/**
	 * PBRMaterialTransparencyMode: Pixels are blended (according to the alpha mode) with the already drawn pixels in the current frame buffer.
	 */
	static var PBRMATERIAL_ALPHABLEND(default, null) : Float;
	/**
	 * Represents the value for Alpha Test and Blend.  Pixels are blended (according to the alpha mode) with the already drawn pixels in the current frame buffer.
	 * They are also discarded below the alpha cutoff threshold to improve performances.
	 */
	private static var _PBRMATERIAL_ALPHATESTANDBLEND : Dynamic;
	/**
	 * PBRMaterialTransparencyMode: Pixels are blended (according to the alpha mode) with the already drawn pixels in the current frame buffer.
	 * They are also discarded below the alpha cutoff threshold to improve performances.
	 */
	static var PBRMATERIAL_ALPHATESTANDBLEND(default, null) : Float;
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
	/**
	 * Debug Control allowing disabling the bump map on this material.
	 */
	var disableBumpMap : Bool;
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
	/**
	 * Stores the alpha values in a texture.
	 */
	var opacityTexture : BaseTexture;
	/**
	 * Stores the reflection values in a texture.
	 */
	var reflectionTexture : Null<BaseTexture>;
	/**
	 * Stores the emissive values in a texture.
	 */
	var emissiveTexture : BaseTexture;
	/**
	 * AKA Specular texture in other nomenclature.
	 */
	var reflectivityTexture : BaseTexture;
	/**
	 * Used to switch from specular/glossiness to metallic/roughness workflow.
	 */
	var metallicTexture : BaseTexture;
	/**
	 * Specifies the metallic scalar of the metallic/roughness workflow.
	 * Can also be used to scale the metalness values of the metallic texture.
	 */
	var metallic : Float;
	/**
	 * Specifies the roughness scalar of the metallic/roughness workflow.
	 * Can also be used to scale the roughness values of the metallic texture.
	 */
	var roughness : Float;
	/**
	 * Used to enable roughness/glossiness fetch from a separate chanel depending on the current mode.
	 * Gray Scale represents roughness in metallic mode and glossiness in specular mode.
	 */
	var microSurfaceTexture : BaseTexture;
	/**
	 * Stores surface normal data used to displace a mesh in a texture.
	 */
	var bumpTexture : BaseTexture;
	/**
	 * Stores the pre-calculated light information of a mesh in a texture.
	 */
	var lightmapTexture : BaseTexture;
	/**
	 * Stores the refracted light information in a texture.
	 */
	var refractionTexture : BaseTexture;
	/**
	 * The color of a material in ambient lighting.
	 */
	var ambientColor : Color3;
	/**
	 * AKA Diffuse Color in other nomenclature.
	 */
	var albedoColor : Color3;
	/**
	 * AKA Specular Color in other nomenclature.
	 */
	var reflectivityColor : Color3;
	/**
	 * The color reflected from the material.
	 */
	var reflectionColor : Color3;
	/**
	 * The color emitted from the material.
	 */
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
	/**
	 * This parameters will make the material used its opacity to control how much it is refracting aginst not.
	 * Materials half opaque for instance using refraction could benefit from this control.
	 */
	var linkRefractionWithTransparency : Bool;
	var useLightmapAsShadowmap : Bool;
	/**
	 * Specifies that the alpha is coming form the albedo channel alpha channel for alpha blending.
	 */
	var useAlphaFromAlbedoTexture : Bool;
	/**
	 * Enforces alpha test in opaque or blend mode in order to improve the performances of some situations.
	 */
	var forceAlphaTest : Bool;
	/**
	 * Defines the alpha limits in alpha test mode.
	 */
	var alphaCutOff : Float;
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
	 * Specifies if the metallic texture contains the metallness information in its blue channel.
	 */
	var useMetallnessFromMetallicTextureBlue : Bool;
	/**
	 * Specifies if the metallic texture contains the ambient occlusion information in its red channel.
	 */
	var useAmbientOcclusionFromMetallicTextureRed : Bool;
	/**
	 * Specifies if the ambient texture contains the ambient occlusion information in its red channel only.
	 */
	var useAmbientInGrayScale : Bool;
	/**
	 * In case the reflectivity map does not contain the microsurface information in its alpha channel,
	 * The material will try to infer what glossiness each pixel should be.
	 */
	var useAutoMicroSurfaceFromReflectivityMap : Bool;
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
	 * Allows using an object space normal map (instead of tangent space).
	 */
	var useObjectSpaceNormalMap : Bool;
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
	 * Force the shader to compute irradiance in the fragment shader in order to take bump in account.
	 */
	var forceIrradianceInFragment : Bool;
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
	/**
	 * If sets to true and backfaceCulling is false, normals will be flipped on the backside.
	 */
	var twoSidedLighting : Bool;
	/**
	 * A fresnel is applied to the alpha of the model to ensure grazing angles edges are not alpha tested.
	 * And/Or occlude the blended part. (alpha is converted to gamma to compute the fresnel)
	 */
	var useAlphaFresnel : Bool;
	/**
	 * A fresnel is applied to the alpha of the model to ensure grazing angles edges are not alpha tested.
	 * And/Or occlude the blended part. (alpha stays linear to compute the fresnel)
	 */
	var useLinearAlphaFresnel : Bool;
	/**
	 * A fresnel is applied to the alpha of the model to ensure grazing angles edges are not alpha tested.
	 * And/Or occlude the blended part.
	 */
	var environmentBRDFTexture : Null<BaseTexture>;
	/**
	 * Force normal to face away from face.
	 */
	var forceNormalForward : Bool;
	/**
	 * Enables specular anti aliasing in the PBR shader.
	 * It will both interacts on the Geometry for analytical and IBL lighting.
	 * It also prefilter the roughness map based on the bump values.
	 */
	var enableSpecularAntiAliasing : Bool;
	/**
	 * This parameters will enable/disable Horizon occlusion to prevent normal maps to look shiny when the normal
	 * makes the reflect vector face the model (under horizon).
	 */
	var useHorizonOcclusion : Bool;
	/**
	 * This parameters will enable/disable radiance occlusion by preventing the radiance to lit
	 * too much the area relying on ambient texture to define their ambient occlusion.
	 */
	var useRadianceOcclusion : Bool;
	/**
	 * If set to true, no lighting calculations will be applied.
	 */
	var unlit : Bool;
	/**
	 * Gets the image processing configuration used either in this material.
	 * Sets the Default image processing configuration used either in the this material.
	 * 
	 * If sets to null, the scene one is in use.
	 */
	var imageProcessingConfiguration : ImageProcessingConfiguration;
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
	 * The Physically based material of BJS.
	 * 
	 * This offers the main features of a standard PBR material.
	 * For more information, please refer to the documentation :
	 * http://doc.babylonjs.com/extensions/Physically_Based_Rendering
	 */
	@:overload(function(name:String, scene:Scene): Void{})
	function new(name:String, scene:Scene, ?doNotAdd:Bool) : Void;
	/**
	 * Returns the name of this material class.
	 */
	override function getClassName() : String;
	/**
	 * Returns an array of the actively used textures.
	 * @returns - Array of BaseTextures
	 */
	override function getActiveTextures() : Array<BaseTexture>;
	/**
	 * Checks to see if a texture is used in the material.
	 * @returns - Boolean specifying if a texture is used in the material.
	 */
	override function hasTexture(texture:BaseTexture) : Bool;
	/**
	 * Makes a duplicate of the current material.
	 */
	@:overload(function(name:String): PBRMaterial{})
	override function clone(name:String) : Null<Material>;
	/**
	 * Serializes this PBR Material.
	 * @returns - An object with the serialized material.
	 */
	override function serialize() : Dynamic;
	/**
	 * Parses a PBR Material from a serialized object.
	 * @returns - PBRMaterial
	 */
	static function Parse(source:Dynamic, scene:Scene, rootUrl:String) : PBRMaterial;
}