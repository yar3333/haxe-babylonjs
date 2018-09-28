package babylonjs.babylon;

/**
 * Interface for attribute information associated with buffer instanciation
 */
@:native("BABYLON.InstancingAttributeInfo")
extern class InstancingAttributeInfo
{
	/**
	 * Index/offset of the attribute in the vertex shader
	 */
	var index : Float;
	/**
	 * size of the attribute, 1, 2, 3 or 4
	 */
	var attributeSize : Float;
	/**
	 * type of the attribute, gl.BYTE, gl.UNSIGNED_BYTE, gl.SHORT, gl.UNSIGNED_SHORT, gl.FIXED, gl.FLOAT.
	 * default is FLOAT
	 */
	var attribyteType : Float;
	/**
	 * normalization of fixed-point data. behavior unclear, use FALSE, default is FALSE
	 */
	var normalized : Bool;
	/**
	 * Offset of the data in the Vertex Buffer acting as the instancing buffer
	 */
	var offset : Float;
	/**
	 * Name of the GLSL attribute, for debugging purpose only
	 */
	var attributeName : String;
}