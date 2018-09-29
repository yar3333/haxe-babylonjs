package babylonjs;

/**
 * This represents a texture coming from an HDR input.
 * 
 * The only supported format is currently panorama picture stored in RGBE format.
 * Example of such files can be found on HDRLib: http://hdrlib.com/
 */
@:native("BABYLON.HDRCubeTexture")
extern class HDRCubeTexture extends BaseTexture
{
	private static var _facesMapping : Dynamic;
	private var _generateHarmonics : Dynamic;
	private var _noMipmap : Dynamic;
	private var _textureMatrix : Dynamic;
	private var _size : Dynamic;
	private var _onLoad : Dynamic;
	private var _onError : Dynamic;
	/**
	 * The texture URL.
	 */
	var url : String;
	/**
	 * The texture coordinates mode. As this texture is stored in a cube format, please modify carefully.
	 */
	//var coordinatesMode : Float;
	private var _isBlocking : Bool;
	/**
	 * Gets wether or not the texture is blocking during loading.
	 * Sets wether or not the texture is blocking during loading.
	 */
	//var isBlocking : Bool;
	private var _rotationY : Float;
	/**
	 * Gets texture matrix rotation angle around Y axis radians.
	 * Sets texture matrix rotation angle around Y axis in radians.
	 */
	var rotationY : Float;
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

	/**
	 * This represents a texture coming from an HDR input.
	 * 
	 * The only supported format is currently panorama picture stored in RGBE format.
	 * Example of such files can be found on HDRLib: http://hdrlib.com/
	 */
	@:overload(function(url:String, scene:Scene, size:Float,?noMipmap:Bool,?generateHarmonics:Bool,?gammaSpace:Bool,?reserved:Bool,?onLoad:Null<Void->Void>,?onError:Null<String->Dynamic->Void>): Void{})
	function new(scene:Null<Scene>) : Void;
	/**
	 * Occurs when the file is raw .hdr file.
	 */
	private function loadTexture() : Dynamic;
	@:overload(function(): HDRCubeTexture{})
	override function clone() : Null<BaseTexture>;
	override function delayLoad() : Void;
	override function getReflectionTextureMatrix() : Matrix;
	function setReflectionTextureMatrix(value:Matrix) : Void;
	static function Parse(parsedTexture:Dynamic, scene:Scene, rootUrl:String) : Null<HDRCubeTexture>;
	override function serialize() : Dynamic;
}