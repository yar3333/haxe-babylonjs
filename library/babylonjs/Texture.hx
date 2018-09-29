package babylonjs;

@:native("BABYLON.Texture")
extern class Texture extends BaseTexture
{
	static var NEAREST_SAMPLINGMODE : Float;
	static var NEAREST_NEAREST_MIPLINEAR : Float;
	static var BILINEAR_SAMPLINGMODE : Float;
	static var LINEAR_LINEAR_MIPNEAREST : Float;
	static var TRILINEAR_SAMPLINGMODE : Float;
	static var LINEAR_LINEAR_MIPLINEAR : Float;
	static var NEAREST_NEAREST_MIPNEAREST : Float;
	static var NEAREST_LINEAR_MIPNEAREST : Float;
	static var NEAREST_LINEAR_MIPLINEAR : Float;
	static var NEAREST_LINEAR : Float;
	static var NEAREST_NEAREST : Float;
	static var LINEAR_NEAREST_MIPNEAREST : Float;
	static var LINEAR_NEAREST_MIPLINEAR : Float;
	static var LINEAR_LINEAR : Float;
	static var LINEAR_NEAREST : Float;
	static var EXPLICIT_MODE : Float;
	static var SPHERICAL_MODE : Float;
	static var PLANAR_MODE : Float;
	static var CUBIC_MODE : Float;
	static var PROJECTION_MODE : Float;
	static var SKYBOX_MODE : Float;
	static var INVCUBIC_MODE : Float;
	static var EQUIRECTANGULAR_MODE : Float;
	static var FIXED_EQUIRECTANGULAR_MODE : Float;
	static var FIXED_EQUIRECTANGULAR_MIRRORED_MODE : Float;
	static var CLAMP_ADDRESSMODE : Float;
	static var WRAP_ADDRESSMODE : Float;
	static var MIRROR_ADDRESSMODE : Float;
	/**
	 * Gets or sets a boolean which defines if the texture url must be build from the serialized URL instead of just using the name and loading them side by side with the scene file
	 */
	static var UseSerializedUrlIfAny : Bool;
	var url : Null<String>;
	var uOffset : Float;
	var vOffset : Float;
	var uScale : Float;
	var vScale : Float;
	var uAng : Float;
	var vAng : Float;
	var wAng : Float;
	var noMipmap(default, null) : Bool;
	private var _noMipmap : Dynamic;
	var _invertY : Bool;
	private var _rowGenerationMatrix : Dynamic;
	private var _cachedTextureMatrix : Dynamic;
	private var _projectionModeMatrix : Dynamic;
	private var _t0 : Dynamic;
	private var _t1 : Dynamic;
	private var _t2 : Dynamic;
	private var _cachedUOffset : Dynamic;
	private var _cachedVOffset : Dynamic;
	private var _cachedUScale : Dynamic;
	private var _cachedVScale : Dynamic;
	private var _cachedUAng : Dynamic;
	private var _cachedVAng : Dynamic;
	private var _cachedWAng : Dynamic;
	private var _cachedProjectionMatrixId : Dynamic;
	private var _cachedCoordinatesMode : Dynamic;
	var _samplingMode : Float;
	private var _buffer : Dynamic;
	private var _deleteBuffer : Dynamic;
	private var _format : Null<Float>;
	private var _delayedOnLoad : Dynamic;
	private var _delayedOnError : Dynamic;
	private var _onLoadObservable : Null<Observable<Texture>>;
	private var _isBlocking : Bool;
	//var isBlocking : Bool;
	var samplingMode(default, null) : Float;
	var onLoadObservable(default, null) : Observable<Texture>;

	@:overload(function(url:Null<String>, scene:Null<Scene>,?noMipmap:Bool,?invertY:Bool,?samplingMode:Float,?onLoad:Null<Void->Void>,?onError:Null<String->Dynamic->Void>,?buffer:Dynamic,?deleteBuffer:Bool,?format:Float): Void{})
	function new(scene:Null<Scene>) : Void;
	function updateURL(url:String) : Void;
	override function delayLoad() : Void;
	function updateSamplingMode(samplingMode:Float) : Void;
	private function _prepareRowForTextureGeneration(x:Dynamic, y:Dynamic, z:Dynamic, t:Dynamic) : Dynamic;
	override function getTextureMatrix() : Matrix;
	override function getReflectionTextureMatrix() : Matrix;
	@:overload(function(): Texture{})
	override function clone() : Null<BaseTexture>;
	override function serialize() : Dynamic;
	override function getClassName() : String;
	override function dispose() : Void;
	static function CreateFromBase64String(data:String, name:String, scene:Scene, ?noMipmap:Bool, ?invertY:Bool, ?samplingMode:Float, ?onLoad:Null<Void->Void>, ?onError:Null<Void->Void>, ?format:Float) : Texture;
	static function Parse(parsedTexture:Dynamic, scene:Scene, rootUrl:String) : Null<BaseTexture>;
	static function LoadFromDataString(name:String, buffer:Dynamic, scene:Scene, ?deleteBuffer:Bool, ?noMipmap:Bool, ?invertY:Bool, ?samplingMode:Float, ?onLoad:Null<Void->Void>, ?onError:Null<String->Dynamic->Void>, ?format:Float) : Texture;
}