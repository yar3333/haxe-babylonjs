package babylon/internals;

extern class DDSTools
{
	static function GetDDSInfo(arrayBuffer:Dynamic) : DDSInfo;
	private static function GetRGBAArrayBuffer(width, height, dataOffset, dataLength, arrayBuffer);
	private static function GetRGBArrayBuffer(width, height, dataOffset, dataLength, arrayBuffer);
	private static function GetLuminanceArrayBuffer(width, height, dataOffset, dataLength, arrayBuffer);
	static function UploadDDSLevels(gl:js.html.webgl.RenderingContext, ext:Dynamic, arrayBuffer:Dynamic, info:DDSInfo, loadMipmaps:Bool, faces:Float) : Void;
}