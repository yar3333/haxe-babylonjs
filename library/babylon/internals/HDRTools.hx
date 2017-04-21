package babylon/internals;

extern class HDRTools
{
	private static function Ldexp(mantissa, exponent);
	private static function Rgbe2float(float32array, red, green, blue, exponent, index);
	private static function readStringLine(uint8array, startIndex);
	/**
	 * Reads header information from an RGBE texture stored in a native array.
	 * More information on this format are available here:
	 * https://en.wikipedia.org/wiki/RGBE_image_format
	 *
	 * @param uint8array The binary file stored in  native array.
	 * @return The header information.
	 */
	static function RGBE_ReadHeader(uint8array:Uint8Array) : HDRInfo;
	/**
	 * Returns the cubemap information (each faces texture data) extracted from an RGBE texture.
	 * This RGBE texture needs to store the information as a panorama.
	 *
	 * More information on this format are available here:
	 * https://en.wikipedia.org/wiki/RGBE_image_format
	 *
	 * @param buffer The binary file stored in an array buffer.
	 * @param size The expected size of the extracted cubemap.
	 * @return The Cube Map information.
	 */
	static function GetCubeMapTextureData(buffer:ArrayBuffer, size:Float) : CubeMapInfo;
	/**
	 * Returns the pixels data extracted from an RGBE texture.
	 * This pixels will be stored left to right up to down in the R G B order in one array.
	 *
	 * More information on this format are available here:
	 * https://en.wikipedia.org/wiki/RGBE_image_format
	 *
	 * @param uint8array The binary file stored in an array buffer.
	 * @param hdrInfo The header information of the file.
	 * @return The pixels data in RGB right to left up to down order.
	 */
	static function RGBE_ReadPixels(uint8array:Uint8Array, hdrInfo:HDRInfo) : Float32Array;
	private static function RGBE_ReadPixels_RLE(uint8array, hdrInfo);
}