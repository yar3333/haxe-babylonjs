package babylonjs;

/**
 * This groups tools to convert HDR texture to native colors array.
 */
@:native("BABYLON.HDRTools")
extern class HDRTools
{
	private static function Ldexp(mantissa:Dynamic, exponent:Dynamic) : Dynamic;
	private static function Rgbe2float(float32array:Dynamic, red:Dynamic, green:Dynamic, blue:Dynamic, exponent:Dynamic, index:Dynamic) : Dynamic;
	private static function readStringLine(uint8array:Dynamic, startIndex:Dynamic) : Dynamic;
	/**
	 * Reads header information from an RGBE texture stored in a native array.
	 * More information on this format are available here:
	 * https://en.wikipedia.org/wiki/RGBE_image_format
	 * 
	 * @return The header information.
	 */
	static function RGBE_ReadHeader(uint8array:js.html.Uint8Array) : HDRInfo;
	/**
	 * Returns the cubemap information (each faces texture data) extracted from an RGBE texture.
	 * This RGBE texture needs to store the information as a panorama.
	 * 
	 * More information on this format are available here:
	 * https://en.wikipedia.org/wiki/RGBE_image_format
	 * 
	 * @return The Cube Map information.
	 */
	static function GetCubeMapTextureData(buffer:js.html.ArrayBuffer, size:Float) : CubeMapInfo;
	/**
	 * Returns the pixels data extracted from an RGBE texture.
	 * This pixels will be stored left to right up to down in the R G B order in one array.
	 * 
	 * More information on this format are available here:
	 * https://en.wikipedia.org/wiki/RGBE_image_format
	 * 
	 * @return The pixels data in RGB right to left up to down order.
	 */
	static function RGBE_ReadPixels(uint8array:js.html.Uint8Array, hdrInfo:HDRInfo) : js.html.Float32Array;
	private static function RGBE_ReadPixels_RLE(uint8array:Dynamic, hdrInfo:Dynamic) : Dynamic;
}