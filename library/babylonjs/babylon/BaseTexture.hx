package babylon;

extern class BaseTexture
{
	var name : String;
	var hasAlpha : Bool;
	var getAlphaFromRGB : Bool;
	var level : Float;
	var coordinatesIndex : Float;
	var coordinatesMode : Float;
	var wrapU : Float;
	var wrapV : Float;
	var anisotropicFilteringLevel : Float;
	var isCube : Bool;
	var isRenderTarget : Bool;
	var uid : String;
	function toString() : String;
	var animations : Array<Animation>;
	/**
	* An event triggered when the texture is disposed.
	* @type {BABYLON.Observable}
	*/
	var onDisposeObservable : Observable<BaseTexture>;
	private var _onDisposeObserver : Dynamic/*UNKNOW_TYPE*/;
	var onDispose : Void->Void;
	var delayLoadState : Float;
	var _cachedAnisotropicFilteringLevel : Float;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	var _texture : WebGLTexture;
	private var _uid : Dynamic/*UNKNOW_TYPE*/;
	function new(scene:Scene) : Void;
	function getScene() : Scene;
	function getTextureMatrix() : Matrix;
	function getReflectionTextureMatrix() : Matrix;
	function getInternalTexture() : WebGLTexture;
	function isReady() : Bool;
	function getSize() : ISize;
	function getBaseSize() : ISize;
	function scale(ratio:Float) : Void;
	var canRescale : Bool;
	function _removeFromCache(url:String, noMipmap:Bool) : Void;
	function _getFromCache(url:String, noMipmap:Bool, ?sampling:Float) : WebGLTexture;
	function delayLoad() : Void;
	function clone() : BaseTexture;
	function releaseInternalTexture() : Void;
	function dispose() : Void;
	function serialize() : Dynamic;
}