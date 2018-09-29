package babylonjs;

/**
 * Manages the defines for the Material
 */
@:native("BABYLON.MaterialDefines")
extern class MaterialDefines
{
	private var _keys : Dynamic;
	private var _isDirty : Dynamic;
	/**
	 * @hidden 
	 */
	var _renderId : Float;
	/**
	 * @hidden 
	 */
	var _areLightsDirty : Bool;
	/**
	 * @hidden 
	 */
	var _areAttributesDirty : Bool;
	/**
	 * @hidden 
	 */
	var _areTexturesDirty : Bool;
	/**
	 * @hidden 
	 */
	var _areFresnelDirty : Bool;
	/**
	 * @hidden 
	 */
	var _areMiscDirty : Bool;
	/**
	 * @hidden 
	 */
	var _areImageProcessingDirty : Bool;
	/**
	 * @hidden 
	 */
	var _normals : Bool;
	/**
	 * @hidden 
	 */
	var _uvs : Bool;
	/**
	 * @hidden 
	 */
	var _needNormals : Bool;
	/**
	 * @hidden 
	 */
	var _needUVs : Bool;
	/**
	 * Specifies if the material needs to be re-calculated
	 */
	var isDirty(default, null) : Bool;

	/**
	 * Marks the material to indicate that it has been re-calculated
	 */
	function markAsProcessed() : Void;
	/**
	 * Marks the material to indicate that it needs to be re-calculated
	 */
	function markAsUnprocessed() : Void;
	/**
	 * Marks the material to indicate all of its defines need to be re-calculated
	 */
	function markAllAsDirty() : Void;
	/**
	 * Marks the material to indicate that image processing needs to be re-calculated
	 */
	function markAsImageProcessingDirty() : Void;
	/**
	 * Marks the material to indicate the lights need to be re-calculated
	 */
	function markAsLightDirty() : Void;
	/**
	 * Marks the attribute state as changed
	 */
	function markAsAttributesDirty() : Void;
	/**
	 * Marks the texture state as changed
	 */
	function markAsTexturesDirty() : Void;
	/**
	 * Marks the fresnel state as changed
	 */
	function markAsFresnelDirty() : Void;
	/**
	 * Marks the misc state as changed
	 */
	function markAsMiscDirty() : Void;
	/**
	 * Rebuilds the material defines
	 */
	function rebuild() : Void;
	/**
	 * Specifies if two material defines are equal
	 * @returns - Boolean indicating if the material defines are equal (true) or not (false)
	 */
	function isEqual(other:MaterialDefines) : Bool;
	/**
	 * Clones this instance's defines to another instance
	 */
	function cloneTo(other:MaterialDefines) : Void;
	/**
	 * Resets the material define values
	 */
	function reset() : Void;
	/**
	 * Converts the material define values to a string
	 * @returns - String of material define information
	 */
	function toString() : String;
}