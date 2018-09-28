package babylonjs.babylon;

/**
 * Creates a new cylinder geometry
 * @description see http://doc.babylonjs.com/how_to/set_shapes#cylinder-or-cone
 */
@:native("BABYLON.CylinderGeometry")
extern class CylinderGeometry extends _PrimitiveGeometry
{
	/**
	 * Defines the height of the cylinder
	 */
	var height : Float;
	/**
	 * Defines the diameter of the cylinder's top cap
	 */
	var diameterTop : Float;
	/**
	 * Defines the diameter of the cylinder's bottom cap
	 */
	var diameterBottom : Float;
	/**
	 * Defines the tessellation factor to apply to the cylinder
	 */
	var tessellation : Float;
	/**
	 * Defines the number of subdivisions to apply to the cylinder (1 by default)
	 */
	var subdivisions : Float;
	/**
	 * Defines if the created geometry is double sided or not (default is BABYLON.Mesh.DEFAULTSIDE)
	 */
	var side : Float;

	/**
	 * Creates a new cylinder geometry
	 * @description see http://doc.babylonjs.com/how_to/set_shapes#cylinder-or-cone
	 */
	@:overload(function(id:String, scene:Scene, height:Float, diameterTop:Float, diameterBottom:Float, tessellation:Float,?subdivisions:Float,?canBeRegenerated:Bool,?mesh:Null<Mesh>,?side:Float): Void{})
	function new(id:String, scene:Scene, ?vertexData:VertexData, ?updatable:Bool, ?mesh:Null<Mesh>) : Void;
	override function _regenerateVertexData() : VertexData;
	override function copy(id:String) : Geometry;
	override function serialize() : Dynamic;
	static function Parse(parsedCylinder:Dynamic, scene:Scene) : Null<CylinderGeometry>;
}