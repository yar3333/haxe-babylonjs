package babylonjs;

@:native("BABYLON.BaseTexture")
extern class BaseTexture
{
	static var DEFAULT_ANISOTROPIC_FILTERING_LEVEL : Float;
	var name : String;
	private var _hasAlpha : Dynamic;
	var hasAlpha : Bool;
	var getAlphaFromRGB : Bool;
	var level : Float;
	var coordinatesIndex : Float;
	private var _coordinatesMode : Dynamic;
	/**
	 * How a texture is mapped.
	 * 
	 * | Value | Type                                | Description |
	 * | ----- | ----------------------------------- | ----------- |
	 * | 0     | EXPLICIT_MODE                       |             |
	 * | 1     | SPHERICAL_MODE                      |             |
	 * | 2     | PLANAR_MODE                         |             |
	 * | 3     | CUBIC_MODE                          |             |
	 * | 4     | PROJECTION_MODE                     |             |
	 * | 5     | SKYBOX_MODE                         |             |
	 * | 6     | INVCUBIC_MODE                       |             |
	 * | 7     | EQUIRECTANGULAR_MODE                |             |
	 * | 8     | FIXED_EQUIRECTANGULAR_MODE          |             |
	 * | 9     | FIXED_EQUIRECTANGULAR_MIRRORED_MODE |             |
	 */
	var coordinatesMode : Float;
	/**
	 * | Value | Type               | Description |
	 * | ----- | ------------------ | ----------- |
	 * | 0     | CLAMP_ADDRESSMODE  |             |
	 * | 1     | WRAP_ADDRESSMODE   |             |
	 * | 2     | MIRROR_ADDRESSMODE |             |
	 */
	var wrapU : Float;
	/**
	 * | Value | Type               | Description |
	 * | ----- | ------------------ | ----------- |
	 * | 0     | CLAMP_ADDRESSMODE  |             |
	 * | 1     | WRAP_ADDRESSMODE   |             |
	 * | 2     | MIRROR_ADDRESSMODE |             |
	 */
	var wrapV : Float;
	/**
	 * | Value | Type               | Description |
	 * | ----- | ------------------ | ----------- |
	 * | 0     | CLAMP_ADDRESSMODE  |             |
	 * | 1     | WRAP_ADDRESSMODE   |             |
	 * | 2     | MIRROR_ADDRESSMODE |             |
	 */
	var wrapR : Float;
	var anisotropicFilteringLevel : Float;
	var isCube : Bool;
	var is3D : Bool;
	var gammaSpace : Bool;
	var invertZ : Bool;
	var lodLevelInAlpha : Bool;
	var lodGenerationOffset : Float;
	var lodGenerationScale : Float;
	var isRenderTarget : Bool;
	var uid(default, null) : String;
	var animations : Array<Animation>;
	/**
	 * An event triggered when the texture is disposed.
	 */
	var onDisposeObservable : Observable<BaseTexture>;
	private var _onDisposeObserver : Dynamic;
	var onDispose : Void->Void;
	var delayLoadState : Float;
	private var _scene : Dynamic;
	var _texture : Null<InternalTexture>;
	private var _uid : Dynamic;
	var isBlocking(default, null) : Bool;
	var canRescale(default, null) : Bool;
	var textureType(default, null) : Float;
	var textureFormat(default, null) : Float;
	var sphericalPolynomial : Null<SphericalPolynomial>;
	var _lodTextureHigh(default, null) : Null<BaseTexture>;
	var _lodTextureMid(default, null) : Null<BaseTexture>;
	var _lodTextureLow(default, null) : Null<BaseTexture>;

	function toString() : String;
	function getClassName() : String;
	function new(scene:Null<Scene>) : Void;
	function getScene() : Null<Scene>;
	function getTextureMatrix() : Matrix;
	function getReflectionTextureMatrix() : Matrix;
	function getInternalTexture() : Null<InternalTexture>;
	function isReadyOrNotBlocking() : Bool;
	function isReady() : Bool;
	function getSize() : ISize;
	function getBaseSize() : ISize;
	function scale(ratio:Float) : Void;
	function _getFromCache(url:Null<String>, noMipmap:Bool, ?sampling:Float) : Null<InternalTexture>;
	function _rebuild() : Void;
	function delayLoad() : Void;
	function clone() : Null<BaseTexture>;
	function readPixels(?faceIndex:Float) : Null<js.html.ArrayBufferView>;
	function releaseInternalTexture() : Void;
	function dispose() : Void;
	function serialize() : Dynamic;
	static function WhenAllReady(textures:Array<BaseTexture>, callback:Void->Void) : Void;
}