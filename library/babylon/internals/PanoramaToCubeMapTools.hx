package babylon/internals;

extern class PanoramaToCubeMapTools
{
	private static var FACE_FRONT : Dynamic/*UNKNOW_TYPE*/;
	private static var FACE_BACK : Dynamic/*UNKNOW_TYPE*/;
	private static var FACE_RIGHT : Dynamic/*UNKNOW_TYPE*/;
	private static var FACE_LEFT : Dynamic/*UNKNOW_TYPE*/;
	private static var FACE_DOWN : Dynamic/*UNKNOW_TYPE*/;
	private static var FACE_UP : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * Converts a panorma stored in RGB right to left up to down format into a cubemap (6 faces).
	 *
	 * @param float32Array The source data.
	 * @param inputWidth The width of the input panorama.
	 * @param inputhHeight The height of the input panorama.
	 * @param size The willing size of the generated cubemap (each faces will be size * size pixels)
	 * @return The cubemap data
	 */
	static function ConvertPanoramaToCubemap(float32Array:Float32Array, inputWidth:Float, inputHeight:Float, size:Float) : CubeMapInfo;
	private static function CreateCubemapTexture(texSize, faceData, float32Array, inputWidth, inputHeight);
	private static function CalcProjectionSpherical(vDir, float32Array, inputWidth, inputHeight);
}