package babylonjs;

/**
 * Helper class usefull to convert panorama picture to their cubemap representation in 6 faces.
 */
@:native("BABYLON.PanoramaToCubeMapTools")
extern class PanoramaToCubeMapTools
{
	private static var FACE_FRONT : Dynamic;
	private static var FACE_BACK : Dynamic;
	private static var FACE_RIGHT : Dynamic;
	private static var FACE_LEFT : Dynamic;
	private static var FACE_DOWN : Dynamic;
	private static var FACE_UP : Dynamic;

	/**
	 * Converts a panorma stored in RGB right to left up to down format into a cubemap (6 faces).
	 * 
	 * @return The cubemap data
	 */
	static function ConvertPanoramaToCubemap(float32Array:js.html.Float32Array, inputWidth:Float, inputHeight:Float, size:Float) : CubeMapInfo;
	private static function CreateCubemapTexture(texSize:Dynamic, faceData:Dynamic, float32Array:Dynamic, inputWidth:Dynamic, inputHeight:Dynamic) : Dynamic;
	private static function CalcProjectionSpherical(vDir:Dynamic, float32Array:Dynamic, inputWidth:Dynamic, inputHeight:Dynamic) : Dynamic;
}