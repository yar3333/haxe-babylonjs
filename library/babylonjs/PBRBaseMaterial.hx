package babylonjs;

/**
 * The Physically based material base class of BJS.
 * 
 * This offers the main features of a standard PBR material.
 * For more information, please refer to the documentation :
 * http://doc.babylonjs.com/extensions/Physically_Based_Rendering
 */
@:native("BABYLON.PBRBaseMaterial")
extern class PBRBaseMaterial extends PushMaterial
{
	/**
	 * Intensity of the direct lights e.g. the four lights available in your scene.
	 * This impacts both the direct diffuse and specular highlights.
	 */
	private var _directIntensity : Float;
	/**
	 * Intensity of the emissive part of the material.
	 * This helps controlling the emissive effect without modifying the emissive color.
	 */
	private var _emissiveIntensity : Float;
	/**
	 * Intensity of the environment e.g. how much the environment will light the object
	 * either through harmonics for rough material or through the refelction for shiny ones.
	 */
	private var _environmentIntensity : Float;
	/**
	 * This is a special control allowing the reduction of the specular highlights coming from the
	 * four lights of the scene. Those highlights may not be needed in full environment lighting.
	 */
	private var _specularIntensity : Float;
	/**
	 * This stores the direct, emissive, environment, and specular light intensities into a Vector4.
	 */
	private var _lightingInfos : Dynamic;
	/**
	 * Debug Control allowing disabling the bump map on this material.
	 */
	private var _disableBumpMap : Bool;
	/**
	 * AKA Diffuse Texture in standard nomenclature.
	 */
	private var _albedoTexture : BaseTexture;
	/**
	 * AKA Occlusion Texture in other nomenclature.
	 */
	private var _ambientTexture : BaseTexture;
	/**
	 * AKA Occlusion Texture Intensity in other nomenclature.
	 */
	private var _ambientTextureStrength : Float;
	/**
	 * Stores the alpha values in a texture.
	 */
	private var _opacityTexture : BaseTexture;
	/**
	 * Stores the reflection values in a texture.
	 */
	private var _reflectionTexture : BaseTexture;
	/**
	 * Stores the refraction values in a texture.
	 */
	private var _refractionTexture : BaseTexture;
	/**
	 * Stores the emissive values in a texture.
	 */
	private var _emissiveTexture : BaseTexture;
	/**
	 * AKA Specular texture in other nomenclature.
	 */
	private var _reflectivityTexture : BaseTexture;
	/**
	 * Used to switch from specular/glossiness to metallic/roughness workflow.
	 */
	private var _metallicTexture : BaseTexture;
	/**
	 * Specifies the metallic scalar of the metallic/roughness workflow.
	 * Can also be used to scale the metalness values of the metallic texture.
	 */
	private var _metallic : Float;
	/**
	 * Specifies the roughness scalar of the metallic/roughness workflow.
	 * Can also be used to scale the roughness values of the metallic texture.
	 */
	private var _roughness : Float;
	/**
	 * Used to enable roughness/glossiness fetch from a separate chanel depending on the current mode.
	 * Gray Scale represents roughness in metallic mode and glossiness in specular mode.
	 */
	private var _microSurfaceTexture : BaseTexture;
	/**
	 * Stores surface normal data used to displace a mesh in a texture.
	 */
	private var _bumpTexture : BaseTexture;
	/**
	 * Stores the pre-calculated light information of a mesh in a texture.
	 */
	private var _lightmapTexture : BaseTexture;
	/**
	 * The color of a material in ambient lighting.
	 */
	private var _ambientColor : Color3;
	/**
	 * AKA Diffuse Color in other nomenclature.
	 */
	private var _albedoColor : Color3;
	/**
	 * AKA Specular Color in other nomenclature.
	 */
	private var _reflectivityColor : Color3;
	/**
	 * The color applied when light is reflected from a material.
	 */
	private var _reflectionColor : Color3;
	/**
	 * The color applied when light is emitted from a material.
	 */
	private var _emissiveColor : Color3;
	/**
	 * AKA Glossiness in other nomenclature.
	 */
	private var _microSurface : Float;
	/**
	 * source material index of refraction (IOR)' / 'destination material IOR.
	 */
	private var _indexOfRefraction : Float;
	/**
	 * Controls if refraction needs to be inverted on Y. This could be usefull for procedural texture.
	 */
	private var _invertRefractionY : Bool;
	/**
	 * This parameters will make the material used its opacity to control how much it is refracting aginst not.
	 * Materials half opaque for instance using refraction could benefit from this control.
	 */
	private var _linkRefractionWithTransparency : Bool;
	/**
	 * Specifies that the material will use the light map as a show map.
	 */
	private var _useLightmapAsShadowmap : Bool;
	/**
	 * This parameters will enable/disable Horizon occlusion to prevent normal maps to look shiny when the normal
	 * makes the reflect vector face the model (under horizon).
	 */
	private var _useHorizonOcclusion : Bool;
	/**
	 * This parameters will enable/disable radiance occlusion by preventing the radiance to lit
	 * too much the area relying on ambient texture to define their ambient occlusion.
	 */
	private var _useRadianceOcclusion : Bool;
	/**
	 * Specifies that the alpha is coming form the albedo channel alpha channel for alpha blending.
	 */
	private var _useAlphaFromAlbedoTexture : Bool;
	/**
	 * Specifies that the material will keeps the specular highlights over a transparent surface (only the most limunous ones).
	 * A car glass is a good exemple of that. When sun reflects on it you can not see what is behind.
	 */
	private var _useSpecularOverAlpha : Bool;
	/**
	 * Specifies if the reflectivity texture contains the glossiness information in its alpha channel.
	 */
	private var _useMicroSurfaceFromReflectivityMapAlpha : Bool;
	/**
	 * Specifies if the metallic texture contains the roughness information in its alpha channel.
	 */
	private var _useRoughnessFromMetallicTextureAlpha : Bool;
	/**
	 * Specifies if the metallic texture contains the roughness information in its green channel.
	 */
	private var _useRoughnessFromMetallicTextureGreen : Bool;
	/**
	 * Specifies if the metallic texture contains the metallness information in its blue channel.
	 */
	private var _useMetallnessFromMetallicTextureBlue : Bool;
	/**
	 * Specifies if the metallic texture contains the ambient occlusion information in its red channel.
	 */
	private var _useAmbientOcclusionFromMetallicTextureRed : Bool;
	/**
	 * Specifies if the ambient texture contains the ambient occlusion information in its red channel only.
	 */
	private var _useAmbientInGrayScale : Bool;
	/**
	 * In case the reflectivity map does not contain the microsurface information in its alpha channel,
	 * The material will try to infer what glossiness each pixel should be.
	 */
	private var _useAutoMicroSurfaceFromReflectivityMap : Bool;
	/**
	 * BJS is using an harcoded light falloff based on a manually sets up range.
	 * In PBR, one way to represents the fallof is to use the inverse squared root algorythm.
	 * This parameter can help you switch back to the BJS mode in order to create scenes using both materials.
	 */
	private var _usePhysicalLightFalloff : Bool;
	/**
	 * Specifies that the material will keeps the reflection highlights over a transparent surface (only the most limunous ones).
	 * A car glass is a good exemple of that. When the street lights reflects on it you can not see what is behind.
	 */
	private var _useRadianceOverAlpha : Bool;
	/**
	 * Allows using an object space normal map (instead of tangent space).
	 */
	private var _useObjectSpaceNormalMap : Bool;
	/**
	 * Allows using the bump map in parallax mode.
	 */
	private var _useParallax : Bool;
	/**
	 * Allows using the bump map in parallax occlusion mode.
	 */
	private var _useParallaxOcclusion : Bool;
	/**
	 * Controls the scale bias of the parallax mode.
	 */
	private var _parallaxScaleBias : Float;
	/**
	 * If sets to true, disables all the lights affecting the material.
	 */
	private var _disableLighting : Bool;
	/**
	 * Number of Simultaneous lights allowed on the material.
	 */
	private var _maxSimultaneousLights : Float;
	/**
	 * If sets to true, x component of normal map value will be inverted (x = 1.0 - x).
	 */
	private var _invertNormalMapX : Bool;
	/**
	 * If sets to true, y component of normal map value will be inverted (y = 1.0 - y).
	 */
	private var _invertNormalMapY : Bool;
	/**
	 * If sets to true and backfaceCulling is false, normals will be flipped on the backside.
	 */
	private var _twoSidedLighting : Bool;
	/**
	 * Defines the alpha limits in alpha test mode.
	 */
	private var _alphaCutOff : Float;
	/**
	 * Enforces alpha test in opaque or blend mode in order to improve the performances of some situations.
	 */
	private var _forceAlphaTest : Bool;
	/**
	 * A fresnel is applied to the alpha of the model to ensure grazing angles edges are not alpha tested.
	 * And/Or occlude the blended part. (alpha is converted to gamma to compute the fresnel)
	 */
	private var _useAlphaFresnel : Bool;
	/**
	 * A fresnel is applied to the alpha of the model to ensure grazing angles edges are not alpha tested.
	 * And/Or occlude the blended part. (alpha stays linear to compute the fresnel)
	 */
	private var _useLinearAlphaFresnel : Bool;
	/**
	 * The transparency mode of the material.
	 */
	private var _transparencyMode : Null<Float>;
	/**
	 * Specifies the environment BRDF texture used to comput the scale and offset roughness values
	 * from cos thetav and roughness:
	 * http://blog.selfshadow.com/publications/s2013-shading-course/karis/s2013_pbs_epic_notes_v2.pdf
	 */
	private var _environmentBRDFTexture : Null<BaseTexture>;
	/**
	 * Force the shader to compute irradiance in the fragment shader in order to take bump in account.
	 */
	private var _forceIrradianceInFragment : Bool;
	/**
	 * Force normal to face away from face.
	 */
	private var _forceNormalForward : Bool;
	/**
	 * Enables specular anti aliasing in the PBR shader.
	 * It will both interacts on the Geometry for analytical and IBL lighting.
	 * It also prefilter the roughness map based on the bump values.
	 */
	private var _enableSpecularAntiAliasing : Bool;
	/**
	 * Default configuration related to image processing available in the PBR Material.
	 */
	private var _imageProcessingConfiguration : ImageProcessingConfiguration;
	/**
	 * Keep track of the image processing observer to allow dispose and replace.
	 */
	private var _imageProcessingObserver : Dynamic;
	/**
	 * Stores the available render targets.
	 */
	private var _renderTargets : Dynamic;
	/**
	 * Sets the global ambient color for the material used in lighting calculations.
	 */
	private var _globalAmbientColor : Dynamic;
	/**
	 * Enables the use of logarithmic depth buffers, which is good for wide depth buffers.
	 */
	private var _useLogarithmicDepth : Dynamic;
	/**
	 * If set to true, no lighting calculations will be applied.
	 */
	private var _unlit : Dynamic;
	/**
	 * Enabled the use of logarithmic depth buffers, which is good for wide depth buffers.
	 * Enabled the use of logarithmic depth buffers, which is good for wide depth buffers.
	 */
	var useLogarithmicDepth : Bool;
	/**
	 * Gets the current transparency mode.
	 * Sets the transparency mode of the material.
	 */
	var transparencyMode : Null<Float>;
	/**
	 * Returns true if alpha blending should be disabled.
	 */
	private var _disableAlphaBlending(default, null) : Dynamic;
	/**
	 * Stores the reflectivity values based on metallic roughness workflow.
	 */
	private static var _scaledReflectivity : Dynamic;

	/**
	 * Attaches a new image processing configuration to the PBR Material.
	 */
	function _attachImageProcessingConfiguration(configuration:Null<ImageProcessingConfiguration>) : Void;
	/**
	 * The Physically based material base class of BJS.
	 * 
	 * This offers the main features of a standard PBR material.
	 * For more information, please refer to the documentation :
	 * http://doc.babylonjs.com/extensions/Physically_Based_Rendering
	 */
	@:overload(function(name:String, scene:Scene): Void{})
	function new(name:String, scene:Scene, ?doNotAdd:Bool) : Void;
	/**
	 * Gets the name of the material class.
	 */
	override function getClassName() : String;
	/**
	 * Specifies whether or not this material should be rendered in alpha blend mode.
	 */
	override function needAlphaBlending() : Bool;
	/**
	 * Specifies if the mesh will require alpha blending.
	 */
	override function needAlphaBlendingForMesh(mesh:AbstractMesh) : Bool;
	/**
	 * Specifies whether or not this material should be rendered in alpha test mode.
	 */
	override function needAlphaTesting() : Bool;
	/**
	 * Specifies whether or not the alpha value of the albedo texture should be used for alpha blending.
	 */
	function _shouldUseAlphaFromAlbedoTexture() : Bool;
	/**
	 * Gets the texture used for the alpha test.
	 */
	@:overload(function(): BaseTexture{})
	override function getAlphaTestTexture() : Null<BaseTexture>;
	/**
	 * Specifies that the submesh is ready to be used.
	 * @returns - boolean indicating that the submesh is ready or not.
	 */
	@:overload(function(mesh:AbstractMesh, subMesh:SubMesh,?useInstances:Bool): Bool{})
	override function isReadyForSubMesh(mesh:AbstractMesh, subMesh:BaseSubMesh, ?useInstances:Bool) : Bool;
	/**
	 * Specifies if the material uses metallic roughness workflow.
	 * @returns boolean specifiying if the material uses metallic roughness workflow.
	 */
	function isMetallicWorkflow() : Bool;
	private function _prepareEffect(mesh:Dynamic, defines:Dynamic, ?onCompiled:Dynamic, ?onError:Dynamic, ?useInstances:Dynamic, ?useClipPlane:Dynamic) : Dynamic;
	private function _prepareDefines(mesh:Dynamic, defines:Dynamic, ?useInstances:Dynamic, ?useClipPlane:Dynamic) : Dynamic;
	/**
	 * Force shader compilation
	 */
	override function forceCompilation(mesh:AbstractMesh, ?onCompiled:Material->Void, ?options:Partial<{ var clipPlane : Bool; }>) : Void;
	/**
	 * Initializes the uniform buffer layout for the shader.
	 */
	function buildUniformLayout() : Void;
	/**
	 * Unbinds the textures.
	 */
	override function unbind() : Void;
	/**
	 * Binds the submesh data.
	 */
	override function bindForSubMesh(world:Matrix, mesh:Mesh, subMesh:SubMesh) : Void;
	/**
	 * Returns the animatable textures.
	 * @returns - Array of animatable textures.
	 */
	function getAnimatables() : Array<IAnimatable>;
	/**
	 * Returns the texture used for reflections.
	 * @returns - Reflection texture if present.  Otherwise, returns the environment texture.
	 */
	private function _getReflectionTexture() : Dynamic;
	/**
	 * Returns the texture used for refraction or null if none is used.
	 * @returns - Refection texture if present.  If no refraction texture and refraction
	 * is linked with transparency, returns environment texture.  Otherwise, returns null.
	 */
	private function _getRefractionTexture() : Dynamic;
	/**
	 * Disposes the resources of the material.
	 */
	override function dispose(?forceDisposeEffect:Bool, ?forceDisposeTextures:Bool) : Void;
}