package babylon;

extern class CubeTexture extends BaseTexture
{
	var url : String;
	var coordinatesMode : Float;
	private var _noMipmap : Dynamic/*UNKNOW_TYPE*/;
	private var _files : Dynamic/*UNKNOW_TYPE*/;
	private var _extensions : Dynamic/*UNKNOW_TYPE*/;
	private var _textureMatrix : Dynamic/*UNKNOW_TYPE*/;
	static function CreateFromImages(files:Array<String>, scene:Scene, ?noMipmap:Bool) : CubeTexture;
	function new(rootUrl:String, scene:Scene, ?extensions:Array<String>, ?noMipmap:Bool, ?files:Array<String>, ?onLoad:Void->Void, ?onError:Void->Void) : Void;
	function delayLoad() : Void;
	function getReflectionTextureMatrix() : Matrix;
	static function Parse(parsedTexture:Dynamic, scene:Scene, rootUrl:String) : CubeTexture;
	function clone() : CubeTexture;
}