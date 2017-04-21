package babylon;

extern class CustomProceduralTexture extends ProceduralTexture
{
	private var _animate : Dynamic/*UNKNOW_TYPE*/;
	private var _time : Dynamic/*UNKNOW_TYPE*/;
	private var _config : Dynamic/*UNKNOW_TYPE*/;
	private var _texturePath : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, texturePath:Dynamic, size:Float, scene:Scene, ?fallbackTexture:Texture, ?generateMipMaps:Bool) : Void;
	private function loadJson(jsonUrl);
	function isReady() : Bool;
	function render(?useCameraPostProcess:Bool) : Void;
	function updateTextures() : Void;
	function updateShaderUniforms() : Void;
	var animate : Bool;
}