package babylonjs.babylon;

/**
 * Creates a plane geometry
 * @description see http://doc.babylonjs.com/how_to/set_shapes#plane
 */
@:native("BABYLON.PlaneGeometry")
extern class PlaneGeometry extends _PrimitiveGeometry
{
	/**
	 * Defines the size of the plane (width === height)
	 */
	var size : Float;
	/**
	 * Defines if the created geometry is double sided or not (default is BABYLON.Mesh.DEFAULTSIDE)
	 */
	var side : Float;

	/**
	 * Creates a plane geometry
	 * @description see http://doc.babylonjs.com/how_to/set_shapes#plane
	 */
	@:overload(function(id:String, scene:Scene, size:Float,?canBeRegenerated:Bool,?mesh:Null<Mesh>,?side:Float): Void{})
	function new(id:String, scene:Scene, ?vertexData:VertexData, ?updatable:Bool, ?mesh:Null<Mesh>) : Void;
	override function _regenerateVertexData() : VertexData;
	override function copy(id:String) : Geometry;
	override function serialize() : Dynamic;
	static function Parse(parsedPlane:Dynamic, scene:Scene) : Null<PlaneGeometry>;
}