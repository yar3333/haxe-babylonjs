package babylonjs.babylon;

/**
 * Creates a disc geometry
 * @description see http://doc.babylonjs.com/how_to/set_shapes#disc-or-regular-polygon
 */
@:native("BABYLON.DiscGeometry")
extern class DiscGeometry extends _PrimitiveGeometry
{
	/**
	 * Defines the radius of the disc
	 */
	var radius : Float;
	/**
	 * Defines the tesselation factor to apply to the disc
	 */
	var tessellation : Float;
	/**
	 * Defines if the created geometry is double sided or not (default is BABYLON.Mesh.DEFAULTSIDE)
	 */
	var side : Float;

	/**
	 * Creates a disc geometry
	 * @description see http://doc.babylonjs.com/how_to/set_shapes#disc-or-regular-polygon
	 */
	@:overload(function(id:String, scene:Scene, radius:Float, tessellation:Float,?canBeRegenerated:Bool,?mesh:Null<Mesh>,?side:Float): Void{})
	function new(id:String, scene:Scene, ?vertexData:VertexData, ?updatable:Bool, ?mesh:Null<Mesh>) : Void;
	override function _regenerateVertexData() : VertexData;
	override function copy(id:String) : Geometry;
}