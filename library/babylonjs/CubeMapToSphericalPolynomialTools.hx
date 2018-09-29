package babylonjs;

/**
 * Helper class dealing with the extraction of spherical polynomial dataArray
 * from a cube map.
 */
@:native("BABYLON.CubeMapToSphericalPolynomialTools")
extern class CubeMapToSphericalPolynomialTools
{
	private static var FileFaces : Dynamic;

	/**
	 * Converts a texture to the according Spherical Polynomial data.
	 * This extracts the first 3 orders only as they are the only one used in the lighting.
	 * 
	 * @return The Spherical Polynomial data.
	 */
	static function ConvertCubeMapTextureToSphericalPolynomial(texture:BaseTexture) : Null<SphericalPolynomial>;
	/**
	 * Converts a cubemap to the according Spherical Polynomial data.
	 * This extracts the first 3 orders only as they are the only one used in the lighting.
	 * 
	 * @return The Spherical Polynomial data.
	 */
	static function ConvertCubeMapToSphericalPolynomial(cubeInfo:CubeMapInfo) : SphericalPolynomial;
}