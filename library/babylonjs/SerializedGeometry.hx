package babylonjs;

extern interface SerializedGeometry
{
	/**
	 * Defines the unique ID of the geometry
	 */
	var id : String;
	/**
	 * Defines the array containing the positions
	 */
	var positions : js.html.Float32Array;
	/**
	 * Defines the array containing the indices
	 */
	var indices : js.html.Uint32Array;
	/**
	 * Defines the array containing the normals
	 */
	var normals : js.html.Float32Array;
}