package babylonjs;

extern interface CubeMapInfo
{
	/**
	 * The pixel array for the front face.
	 * This is stored in format, left to right, up to down format.
	 */
	var front : Null<js.html.ArrayBufferView>;
	/**
	 * The pixel array for the back face.
	 * This is stored in format, left to right, up to down format.
	 */
	var back : Null<js.html.ArrayBufferView>;
	/**
	 * The pixel array for the left face.
	 * This is stored in format, left to right, up to down format.
	 */
	var left : Null<js.html.ArrayBufferView>;
	/**
	 * The pixel array for the right face.
	 * This is stored in format, left to right, up to down format.
	 */
	var right : Null<js.html.ArrayBufferView>;
	/**
	 * The pixel array for the up face.
	 * This is stored in format, left to right, up to down format.
	 */
	var up : Null<js.html.ArrayBufferView>;
	/**
	 * The pixel array for the down face.
	 * This is stored in format, left to right, up to down format.
	 */
	var down : Null<js.html.ArrayBufferView>;
	/**
	 * The size of the cubemap stored.
	 * 
	 * Each faces will be size * size pixels.
	 */
	var size : Float;
	/**
	 * The format of the texture.
	 * 
	 * RGBA, RGB.
	 */
	var format : Float;
	/**
	 * The type of the texture data.
	 * 
	 * UNSIGNED_INT, FLOAT.
	 */
	var type : Float;
	/**
	 * Specifies whether the texture is in gamma space.
	 */
	var gammaSpace : Bool;
}