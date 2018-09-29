package babylonjs;

/**
 * Abstract class used to provide common services for all typed geometries
 * @hidden
 */
@:native("BABYLON._PrimitiveGeometry")
extern class _PrimitiveGeometry extends Geometry
{
	private var _canBeRegenerated : Dynamic;
	private var _beingRegenerated : Dynamic;

	/**
	 * Abstract class used to provide common services for all typed geometries
	 * @hidden
	 */
	@:overload(function(id:String, scene:Scene,?_canBeRegenerated:Bool,?mesh:Null<Mesh>): Void{})
	function new(id:String, scene:Scene, ?vertexData:VertexData, ?updatable:Bool, ?mesh:Null<Mesh>) : Void;
	/**
	 * Gets a value indicating if the geometry supports being regenerated with new parameters (false by default)
	 * @returns true if the geometry can be regenerated
	 */
	function canBeRegenerated() : Bool;
	/**
	 * If the geometry supports regeneration, the function will recreates the geometry with updated parameter values
	 */
	function regenerate() : Void;
	/**
	 * Clone the geometry
	 * @returns the new geometry
	 */
	function asNewGeometry(id:String) : Geometry;
	override function setAllVerticesData(vertexData:VertexData, ?updatable:Bool) : Void;
	@:overload(function(kind:String, data:FloatArray,?updatable:Bool): Void{})
	override function setVerticesData(kind:String, data:FloatArray, updatable:Bool) : Void;
	/**
	 * @hidden 
	 */
	function _regenerateVertexData() : VertexData;
	override function copy(id:String) : Geometry;
	override function serialize() : Dynamic;
}