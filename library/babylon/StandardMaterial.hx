package babylon;

extern class StandardMaterial extends Material
{
	var diffuseTexture : BaseTexture;
	var ambientTexture : BaseTexture;
	var opacityTexture : BaseTexture;
	var reflectionTexture : BaseTexture;
	var emissiveTexture : BaseTexture;
	var specularTexture : BaseTexture;
	var bumpTexture : BaseTexture;
	var lightmapTexture : BaseTexture;
	var refractionTexture : BaseTexture;
	var ambientColor : Color3;
	var diffuseColor : Color3;
	var specularColor : Color3;
	var emissiveColor : Color3;
	var specularPower : Float;
	var useAlphaFromDiffuseTexture : Bool;
	var useEmissiveAsIllumination : Bool;
	var linkEmissiveWithDiffuse : Bool;
	var useReflectionFresnelFromSpecular : Bool;
	var useSpecularOverAlpha : Bool;
	var useReflectionOverAlpha : Bool;
	var disableLighting : Bool;
	var useParallax : Bool;
	var useParallaxOcclusion : Bool;
	var parallaxScaleBias : Float;
	var roughness : Float;
	var indexOfRefraction : Float;
	var invertRefractionY : Bool;
	var useLightmapAsShadowmap : Bool;
	var diffuseFresnelParameters : FresnelParameters;
	var opacityFresnelParameters : FresnelParameters;
	var reflectionFresnelParameters : FresnelParameters;
	var refractionFresnelParameters : FresnelParameters;
	var emissiveFresnelParameters : FresnelParameters;
	var useGlossinessFromSpecularMapAlpha : Bool;
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
	private var _renderTargets : Dynamic/*UNKNOW_TYPE*/;
	private var _worldViewProjectionMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _globalAmbientColor : Dynamic/*UNKNOW_TYPE*/;
	private var _renderId : Dynamic/*UNKNOW_TYPE*/;
	private var _defines : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedDefines : Dynamic/*UNKNOW_TYPE*/;
	private var _useLogarithmicDepth : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, scene:Scene) : Void;
	var useLogarithmicDepth : Bool;
	function needAlphaBlending() : Bool;
	function needAlphaTesting() : Bool;
	private function _shouldUseAlphaFromDiffuseTexture();
	function getAlphaTestTexture() : BaseTexture;
	private function _checkCache(scene, ?mesh, useInstances?);
	function isReady(?mesh:AbstractMesh, ?useInstances:Bool) : Bool;
	function unbind() : Void;
	function bindOnlyWorldMatrix(world:Matrix) : Void;
	function bind(world:Matrix, ?mesh:Mesh) : Void;
	function getAnimatables() : Array<IAnimatable>;
	function dispose(?forceDisposeEffect:Bool, ?forceDisposeTextures:Bool) : Void;
	function clone(name:String) : StandardMaterial;
	function serialize() : Dynamic;
	static function Parse(source:Dynamic, scene:Scene, rootUrl:String) : StandardMaterial;
	static var DiffuseTextureEnabled : Bool;
	static var AmbientTextureEnabled : Bool;
	static var OpacityTextureEnabled : Bool;
	static var ReflectionTextureEnabled : Bool;
	static var EmissiveTextureEnabled : Bool;
	static var SpecularTextureEnabled : Bool;
	static var BumpTextureEnabled : Bool;
	static var FresnelEnabled : Bool;
	static var LightmapTextureEnabled : Bool;
	static var RefractionTextureEnabled : Bool;
	static var ColorGradingTextureEnabled : Bool;
}