package babylonjs.babylon;

@:native("BABYLON.RawTexture")
extern class RawTexture extends Texture
{
	var format : Float;
	private var _engine : Dynamic;

	@:overload(function(data:js.html.ArrayBufferView, width:Float, height:Float, format:Float, scene:Scene,?generateMipMaps:Bool,?invertY:Bool,?samplingMode:Float,?type:Float): Void{})
	function new(scene:Null<Scene>) : Void;
	function update(data:js.html.ArrayBufferView) : Void;
	static function CreateLuminanceTexture(data:js.html.ArrayBufferView, width:Float, height:Float, scene:Scene, ?generateMipMaps:Bool, ?invertY:Bool, ?samplingMode:Float) : RawTexture;
	static function CreateLuminanceAlphaTexture(data:js.html.ArrayBufferView, width:Float, height:Float, scene:Scene, ?generateMipMaps:Bool, ?invertY:Bool, ?samplingMode:Float) : RawTexture;
	static function CreateAlphaTexture(data:js.html.ArrayBufferView, width:Float, height:Float, scene:Scene, ?generateMipMaps:Bool, ?invertY:Bool, ?samplingMode:Float) : RawTexture;
	static function CreateRGBTexture(data:js.html.ArrayBufferView, width:Float, height:Float, scene:Scene, ?generateMipMaps:Bool, ?invertY:Bool, ?samplingMode:Float, ?type:Float) : RawTexture;
	static function CreateRGBATexture(data:js.html.ArrayBufferView, width:Float, height:Float, scene:Scene, ?generateMipMaps:Bool, ?invertY:Bool, ?samplingMode:Float, ?type:Float) : RawTexture;
}