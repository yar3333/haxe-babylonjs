package babylon/internals;

extern interface CubeMapInfo
{
	/**
	 * The pixel array for the front face.
	 * This is stored in RGB, left to right, up to down format.
	 */
	var front : Float32Array;
	/**
	 * The pixel array for the back face.
	 * This is stored in RGB, left to right, up to down format.
	 */
	var back : Float32Array;
	/**
	 * The pixel array for the left face.
	 * This is stored in RGB, left to right, up to down format.
	 */
	var left : Float32Array;
	/**
	 * The pixel array for the right face.
	 * This is stored in RGB, left to right, up to down format.
	 */
	var right : Float32Array;
	/**
	 * The pixel array for the up face.
	 * This is stored in RGB, left to right, up to down format.
	 */
	var up : Float32Array;
	/**
	 * The pixel array for the down face.
	 * This is stored in RGB, left to right, up to down format.
	 */
	var down : Float32Array;
	/**
	 * The size of the cubemap stored.
	 *
	 * Each faces will be size * size pixels.
	 */
	var size : Float;
}