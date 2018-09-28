package babylonjs.babylon;

/**
 * Creates a new ground geometry
 * @description see http://doc.babylonjs.com/how_to/set_shapes#ground
 */
@:native("BABYLON.GroundGeometry")
extern class GroundGeometry extends _PrimitiveGeometry
{
	/**
	 * Defines the width of the ground
	 */
	var width : Float;
	/**
	 * Defines the height of the ground
	 */
	var height : Float;
	/**
	 * Defines the subdivisions to apply to the ground
	 */
	var subdivisions : Float;

	/**
	 * Creates a new ground geometry
	 * @description see http://doc.babylonjs.com/how_to/set_shapes#ground
	 */
	@:overload(function(id:String, scene:Scene, width:Float, height:Float, subdivisions:Float,?canBeRegenerated:Bool,?mesh:Null<Mesh>): Void{})
	function new(id:String, scene:Scene, ?vertexData:VertexData, ?updatable:Bool, ?mesh:Null<Mesh>) : Void;
	override function _regenerateVertexData() : VertexData;
	override function copy(id:String) : Geometry;
	override function serialize() : Dynamic;
	static function Parse(parsedGround:Dynamic, scene:Scene) : Null<GroundGeometry>;
}