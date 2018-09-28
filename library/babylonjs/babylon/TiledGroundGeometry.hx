package babylonjs.babylon;

/**
 * Creates a tiled ground geometry
 * @description see http://doc.babylonjs.com/how_to/set_shapes#tiled-ground
 */
@:native("BABYLON.TiledGroundGeometry")
extern class TiledGroundGeometry extends _PrimitiveGeometry
{
	/**
	 * Defines the minimum value on X axis
	 */
	var xmin : Float;
	/**
	 * Defines the minimum value on Z axis
	 */
	var zmin : Float;
	/**
	 * Defines the maximum value on X axis
	 */
	var xmax : Float;
	/**
	 * Defines the maximum value on Z axis
	 */
	var zmax : Float;
	/**
	 * Defines the subdivisions to apply to the ground
	 */
	var subdivisions : { var w : Float; var h : Float; };
	/**
	 * Defines the precision to use when computing the tiles
	 */
	var precision : { var w : Float; var h : Float; };

	/**
	 * Creates a tiled ground geometry
	 * @description see http://doc.babylonjs.com/how_to/set_shapes#tiled-ground
	 */
	@:overload(function(id:String, scene:Scene, xmin:Float, zmin:Float, xmax:Float, zmax:Float, subdivisions:{ var w : Float; var h : Float;}, precision:{ var w : Float; var h : Float;},?canBeRegenerated:Bool,?mesh:Null<Mesh>): Void{})
	function new(id:String, scene:Scene, ?vertexData:VertexData, ?updatable:Bool, ?mesh:Null<Mesh>) : Void;
	override function _regenerateVertexData() : VertexData;
	override function copy(id:String) : Geometry;
}