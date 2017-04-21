package babylon;

extern class Texture extends BaseTexture
{
	static var NEAREST_SAMPLINGMODE : Float;
	static var BILINEAR_SAMPLINGMODE : Float;
	static var TRILINEAR_SAMPLINGMODE : Float;
	static var EXPLICIT_MODE : Float;
	static var SPHERICAL_MODE : Float;
	static var PLANAR_MODE : Float;
	static var CUBIC_MODE : Float;
	static var PROJECTION_MODE : Float;
	static var SKYBOX_MODE : Float;
	static var INVCUBIC_MODE : Float;
	static var EQUIRECTANGULAR_MODE : Float;
	static var FIXED_EQUIRECTANGULAR_MODE : Float;
	static var CLAMP_ADDRESSMODE : Float;
	static var WRAP_ADDRESSMODE : Float;
	static var MIRROR_ADDRESSMODE : Float;
	var url : String;
	var uOffset : Float;
	var vOffset : Float;
	var uScale : Float;
	var vScale : Float;
	var uAng : Float;
	var vAng : Float;
	var wAng : Float;
	var noMipmap : Bool;
	private var _noMipmap : Dynamic/*UNKNOW_TYPE*/;
	var _invertY : Bool;
	private var _rowGenerationMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedTextureMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _projectionModeMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _t0 : Dynamic/*UNKNOW_TYPE*/;
	private var _t1 : Dynamic/*UNKNOW_TYPE*/;
	private var _t2 : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedUOffset : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedVOffset : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedUScale : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedVScale : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedUAng : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedVAng : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedWAng : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedCoordinatesMode : Dynamic/*UNKNOW_TYPE*/;
	var _samplingMode : Float;
	private var _buffer : Dynamic/*UNKNOW_TYPE*/;
	private var _deleteBuffer : Dynamic/*UNKNOW_TYPE*/;
	private var _delayedOnLoad : Dynamic/*UNKNOW_TYPE*/;
	private var _delayedOnError : Dynamic/*UNKNOW_TYPE*/;
	private var _onLoadObservarble : Dynamic/*UNKNOW_TYPE*/;
	function new(url:String, scene:Scene, ?noMipmap:Bool, ?invertY:Bool, ?samplingMode:Float, ?onLoad:Void->Void, ?onError:Void->Void, ?buffer:Dynamic, ?deleteBuffer:Bool) : Void;
	function delayLoad() : Void;
	function updateSamplingMode(samplingMode:Float) : Void;
	private function _prepareRowForTextureGeneration(x, y, z, t);
	function getTextureMatrix() : Matrix;
	function getReflectionTextureMatrix() : Matrix;
	function clone() : Texture;
	var onLoadObservable : Observable<Bool>;
	static function CreateFromBase64String(data:String, name:String, scene:Scene, ?noMipmap:Bool, ?invertY:Bool, ?samplingMode:Float, ?onLoad:Void->Void, ?onError:Void->Void) : Texture;
	static function Parse(parsedTexture:Dynamic, scene:Scene, rootUrl:String) : BaseTexture;
	static function LoadFromDataString(name:String, buffer:Dynamic, scene:Scene, ?deleteBuffer:Bool, ?noMipmap:Bool, ?invertY:Bool, ?samplingMode:Float, ?onLoad:Void->Void, ?onError:Void->Void) : Texture;
}