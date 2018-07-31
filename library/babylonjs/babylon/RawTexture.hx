package babylon;

extern class RawTexture extends Texture
{
	var format : Float;
	function new(data:ArrayBufferView, width:Float, height:Float, format:Float, scene:Scene, ?generateMipMaps:Bool, ?invertY:Bool, ?samplingMode:Float) : Void;
	function update(data:ArrayBufferView) : Void;
	static function CreateLuminanceTexture(data:ArrayBufferView, width:Float, height:Float, scene:Scene, ?generateMipMaps:Bool, ?invertY:Bool, ?samplingMode:Float) : RawTexture;
	static function CreateLuminanceAlphaTexture(data:ArrayBufferView, width:Float, height:Float, scene:Scene, ?generateMipMaps:Bool, ?invertY:Bool, ?samplingMode:Float) : RawTexture;
	static function CreateAlphaTexture(data:ArrayBufferView, width:Float, height:Float, scene:Scene, ?generateMipMaps:Bool, ?invertY:Bool, ?samplingMode:Float) : RawTexture;
	static function CreateRGBTexture(data:ArrayBufferView, width:Float, height:Float, scene:Scene, ?generateMipMaps:Bool, ?invertY:Bool, ?samplingMode:Float) : RawTexture;
	static function CreateRGBATexture(data:ArrayBufferView, width:Float, height:Float, scene:Scene, ?generateMipMaps:Bool, ?invertY:Bool, ?samplingMode:Float) : RawTexture;
}