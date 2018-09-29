package babylonjs;

/**
 * @hidden 
 */
@:native("BABYLON.StandardMaterialDefines")
extern class StandardMaterialDefines extends MaterialDefines
	implements IImageProcessingConfigurationDefines
{
	var MAINUV1 : Bool;
	var MAINUV2 : Bool;
	var DIFFUSE : Bool;
	var DIFFUSEDIRECTUV : Float;
	var AMBIENT : Bool;
	var AMBIENTDIRECTUV : Float;
	var OPACITY : Bool;
	var OPACITYDIRECTUV : Float;
	var OPACITYRGB : Bool;
	var REFLECTION : Bool;
	var EMISSIVE : Bool;
	var EMISSIVEDIRECTUV : Float;
	var SPECULAR : Bool;
	var SPECULARDIRECTUV : Float;
	var BUMP : Bool;
	var BUMPDIRECTUV : Float;
	var PARALLAX : Bool;
	var PARALLAXOCCLUSION : Bool;
	var SPECULAROVERALPHA : Bool;
	var CLIPPLANE : Bool;
	var ALPHATEST : Bool;
	var DEPTHPREPASS : Bool;
	var ALPHAFROMDIFFUSE : Bool;
	var POINTSIZE : Bool;
	var FOG : Bool;
	var SPECULARTERM : Bool;
	var DIFFUSEFRESNEL : Bool;
	var OPACITYFRESNEL : Bool;
	var REFLECTIONFRESNEL : Bool;
	var REFRACTIONFRESNEL : Bool;
	var EMISSIVEFRESNEL : Bool;
	var FRESNEL : Bool;
	var NORMAL : Bool;
	var UV1 : Bool;
	var UV2 : Bool;
	var VERTEXCOLOR : Bool;
	var VERTEXALPHA : Bool;
	var NUM_BONE_INFLUENCERS : Float;
	var BonesPerMesh : Float;
	var INSTANCES : Bool;
	var GLOSSINESS : Bool;
	var ROUGHNESS : Bool;
	var EMISSIVEASILLUMINATION : Bool;
	var LINKEMISSIVEWITHDIFFUSE : Bool;
	var REFLECTIONFRESNELFROMSPECULAR : Bool;
	var LIGHTMAP : Bool;
	var LIGHTMAPDIRECTUV : Float;
	var OBJECTSPACE_NORMALMAP : Bool;
	var USELIGHTMAPASSHADOWMAP : Bool;
	var REFLECTIONMAP_3D : Bool;
	var REFLECTIONMAP_SPHERICAL : Bool;
	var REFLECTIONMAP_PLANAR : Bool;
	var REFLECTIONMAP_CUBIC : Bool;
	var USE_LOCAL_REFLECTIONMAP_CUBIC : Bool;
	var REFLECTIONMAP_PROJECTION : Bool;
	var REFLECTIONMAP_SKYBOX : Bool;
	var REFLECTIONMAP_EXPLICIT : Bool;
	var REFLECTIONMAP_EQUIRECTANGULAR : Bool;
	var REFLECTIONMAP_EQUIRECTANGULAR_FIXED : Bool;
	var REFLECTIONMAP_MIRROREDEQUIRECTANGULAR_FIXED : Bool;
	var INVERTCUBICMAP : Bool;
	var LOGARITHMICDEPTH : Bool;
	var REFRACTION : Bool;
	var REFRACTIONMAP_3D : Bool;
	var REFLECTIONOVERALPHA : Bool;
	var TWOSIDEDLIGHTING : Bool;
	var SHADOWFLOAT : Bool;
	var MORPHTARGETS : Bool;
	var MORPHTARGETS_NORMAL : Bool;
	var MORPHTARGETS_TANGENT : Bool;
	var NUM_MORPH_INFLUENCERS : Float;
	var NONUNIFORMSCALING : Bool;
	var PREMULTIPLYALPHA : Bool;
	var IMAGEPROCESSING : Bool;
	var VIGNETTE : Bool;
	var VIGNETTEBLENDMODEMULTIPLY : Bool;
	var VIGNETTEBLENDMODEOPAQUE : Bool;
	var TONEMAPPING : Bool;
	var CONTRAST : Bool;
	var COLORCURVES : Bool;
	var COLORGRADING : Bool;
	var COLORGRADING3D : Bool;
	var SAMPLER3DGREENDEPTH : Bool;
	var SAMPLER3DBGRMAP : Bool;
	var IMAGEPROCESSINGPOSTPROCESS : Bool;
	/**
	 * If the reflection texture on this material is in linear color space
	 * @hidden
	 */
	var IS_REFLECTION_LINEAR : Bool;
	/**
	 * If the refraction texture on this material is in linear color space
	 * @hidden
	 */
	var IS_REFRACTION_LINEAR : Bool;
	var EXPOSURE : Bool;

	/**
	 * @hidden 
	 */
	function new() : Void;
	function setReflectionMode(modeToEnable:String) : Void;
}