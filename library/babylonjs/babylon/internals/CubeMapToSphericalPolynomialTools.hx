package babylon/internals;

extern class CubeMapToSphericalPolynomialTools
{
	private static var FileFaces : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * Converts a cubemap to the according Spherical Polynomial data.
	 * This extracts the first 3 orders only as they are the only one used in the lighting.
	 *
	 * @param cubeInfo The Cube map to extract the information from.
	 * @return The Spherical Polynomial data.
	 */
	static function ConvertCubeMapToSphericalPolynomial(cubeInfo:CubeMapInfo) : SphericalPolynomial;
}