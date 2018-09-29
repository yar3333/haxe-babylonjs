package babylonjs;

@:native("BABYLON.DDSTools")
extern class DDSTools
{
	static var StoreLODInAlphaChannel : Bool;
	private static var _FloatView : Dynamic;
	private static var _Int32View : Dynamic;

	static function GetDDSInfo(arrayBuffer:Dynamic) : DDSInfo;
	private static function _ToHalfFloat(value:Dynamic) : Dynamic;
	private static function _FromHalfFloat(value:Dynamic) : Dynamic;
	private static function _GetHalfFloatAsFloatRGBAArrayBuffer(width:Dynamic, height:Dynamic, dataOffset:Dynamic, dataLength:Dynamic, arrayBuffer:Dynamic, lod:Dynamic) : Dynamic;
	private static function _GetHalfFloatRGBAArrayBuffer(width:Dynamic, height:Dynamic, dataOffset:Dynamic, dataLength:Dynamic, arrayBuffer:Dynamic, lod:Dynamic) : Dynamic;
	private static function _GetFloatRGBAArrayBuffer(width:Dynamic, height:Dynamic, dataOffset:Dynamic, dataLength:Dynamic, arrayBuffer:Dynamic, lod:Dynamic) : Dynamic;
	private static function _GetFloatAsUIntRGBAArrayBuffer(width:Dynamic, height:Dynamic, dataOffset:Dynamic, dataLength:Dynamic, arrayBuffer:Dynamic, lod:Dynamic) : Dynamic;
	private static function _GetHalfFloatAsUIntRGBAArrayBuffer(width:Dynamic, height:Dynamic, dataOffset:Dynamic, dataLength:Dynamic, arrayBuffer:Dynamic, lod:Dynamic) : Dynamic;
	private static function _GetRGBAArrayBuffer(width:Dynamic, height:Dynamic, dataOffset:Dynamic, dataLength:Dynamic, arrayBuffer:Dynamic, rOffset:Dynamic, gOffset:Dynamic, bOffset:Dynamic, aOffset:Dynamic) : Dynamic;
	private static function _ExtractLongWordOrder(value:Dynamic) : Dynamic;
	private static function _GetRGBArrayBuffer(width:Dynamic, height:Dynamic, dataOffset:Dynamic, dataLength:Dynamic, arrayBuffer:Dynamic, rOffset:Dynamic, gOffset:Dynamic, bOffset:Dynamic) : Dynamic;
	private static function _GetLuminanceArrayBuffer(width:Dynamic, height:Dynamic, dataOffset:Dynamic, dataLength:Dynamic, arrayBuffer:Dynamic) : Dynamic;
	static function UploadDDSLevels(engine:Engine, gl:js.html.webgl.RenderingContext, arrayBuffer:Dynamic, info:DDSInfo, loadMipmaps:Bool, faces:Float, ?lodIndex:Float, ?currentFace:Float) : Void;
}