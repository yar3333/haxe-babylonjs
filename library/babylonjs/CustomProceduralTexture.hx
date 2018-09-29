package babylonjs;

@:native("BABYLON.CustomProceduralTexture")
extern class CustomProceduralTexture extends ProceduralTexture
{
	private var _animate : Dynamic;
	private var _time : Dynamic;
	private var _config : Dynamic;
	private var _texturePath : Dynamic;
	var animate : Bool;

	@:overload(function(name:String, texturePath:Dynamic, size:Float, scene:Scene,?fallbackTexture:Texture,?generateMipMaps:Bool): Void{})
	function new(scene:Null<Scene>) : Void;
	private function loadJson(jsonUrl:Dynamic) : Dynamic;
	override function isReady() : Bool;
	override function render(?useCameraPostProcess:Bool) : Void;
	function updateTextures() : Void;
	function updateShaderUniforms() : Void;
}