package babylonjs;

@:native("BABYLON.CubeTexture")
extern class CubeTexture extends BaseTexture
{
	var url : String;
	//var coordinatesMode : Float;
	/**
	 * Gets or sets the center of the bounding box associated with the cube texture
	 * It must define where the camera used to render the texture was set
	 */
	var boundingBoxPosition : Vector3;
	private var _boundingBoxSize : Dynamic;
	/**
	 * Gets or sets the size of the bounding box associated with the cube texture
	 * When defined, the cubemap will switch to local mode
	 * @see https://community.arm.com/graphics/b/blog/posts/reflections-based-on-local-cubemaps-in-unity
	 * @example https://www.babylonjs-playground.com/#RNASML
	 */
	var boundingBoxSize : Vector3;
	private var _rotationY : Float;
	/**
	 * Gets texture matrix rotation angle around Y axis radians.
	 * Sets texture matrix rotation angle around Y axis in radians.
	 */
	var rotationY : Float;
	private var _noMipmap : Dynamic;
	private var _files : Dynamic;
	private var _extensions : Dynamic;
	private var _textureMatrix : Dynamic;
	private var _format : Dynamic;
	private var _prefiltered : Dynamic;

	static function CreateFromImages(files:Array<String>, scene:Scene, ?noMipmap:Bool) : CubeTexture;
	static function CreateFromPrefilteredData(url:String, scene:Scene, ?forcedExtension:Dynamic) : CubeTexture;
	@:overload(function(rootUrl:String, scene:Scene,?extensions:Null<Array<String>>,?noMipmap:Bool,?files:Null<Array<String>>,?onLoad:Null<Void->Void>,?onError:Null<String->Dynamic->Void>,?format:Float,?prefiltered:Bool,?forcedExtension:Dynamic): Void{})
	function new(scene:Null<Scene>) : Void;
	override function delayLoad() : Void;
	override function getReflectionTextureMatrix() : Matrix;
	function setReflectionTextureMatrix(value:Matrix) : Void;
	static function Parse(parsedTexture:Dynamic, scene:Scene, rootUrl:String) : CubeTexture;
	@:overload(function(): CubeTexture{})
	override function clone() : Null<BaseTexture>;
}