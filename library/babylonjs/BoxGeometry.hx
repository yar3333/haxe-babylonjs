package babylonjs;

/**
 * Creates a box geometry
 * @description see http://doc.babylonjs.com/how_to/set_shapes#box
 */
@:native("BABYLON.BoxGeometry")
extern class BoxGeometry extends _PrimitiveGeometry
{
	/**
	 * Defines the zise of the box (width, height and depth are the same)
	 */
	var size : Float;
	/**
	 * Defines if the created geometry is double sided or not (default is BABYLON.Mesh.DEFAULTSIDE)
	 */
	var side : Float;

	/**
	 * Creates a box geometry
	 * @description see http://doc.babylonjs.com/how_to/set_shapes#box
	 */
	@:overload(function(id:String, scene:Scene, size:Float,?canBeRegenerated:Bool,?mesh:Null<Mesh>,?side:Float): Void{})
	function new(id:String, scene:Scene, ?vertexData:VertexData, ?updatable:Bool, ?mesh:Null<Mesh>) : Void;
	override function _regenerateVertexData() : VertexData;
	override function copy(id:String) : Geometry;
	override function serialize() : Dynamic;
	static function Parse(parsedBox:Dynamic, scene:Scene) : Null<BoxGeometry>;
}