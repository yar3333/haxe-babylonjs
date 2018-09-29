package babylonjs;

/**
 * Creates a sphere geometry
 * @description see http://doc.babylonjs.com/how_to/set_shapes#sphere
 */
@:native("BABYLON.SphereGeometry")
extern class SphereGeometry extends _PrimitiveGeometry
{
	/**
	 * Defines the number of segments to use to create the sphere
	 */
	var segments : Float;
	/**
	 * Defines the diameter of the sphere
	 */
	var diameter : Float;
	/**
	 * Defines if the created geometry is double sided or not (default is BABYLON.Mesh.DEFAULTSIDE)
	 */
	var side : Float;

	/**
	 * Creates a sphere geometry
	 * @description see http://doc.babylonjs.com/how_to/set_shapes#sphere
	 */
	@:overload(function(id:String, scene:Scene, segments:Float, diameter:Float,?canBeRegenerated:Bool,?mesh:Null<Mesh>,?side:Float): Void{})
	function new(id:String, scene:Scene, ?vertexData:VertexData, ?updatable:Bool, ?mesh:Null<Mesh>) : Void;
	override function _regenerateVertexData() : VertexData;
	override function copy(id:String) : Geometry;
	override function serialize() : Dynamic;
	static function Parse(parsedSphere:Dynamic, scene:Scene) : Null<SphereGeometry>;
}