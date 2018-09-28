package babylonjs.babylon;

/**
 * Creates a new torus geometry
 * @description see http://doc.babylonjs.com/how_to/set_shapes#torus
 */
@:native("BABYLON.TorusGeometry")
extern class TorusGeometry extends _PrimitiveGeometry
{
	/**
	 * Defines the diameter of the torus
	 */
	var diameter : Float;
	/**
	 * Defines the thickness of the torus (ie. internal diameter)
	 */
	var thickness : Float;
	/**
	 * Defines the tesselation factor to apply to the torus
	 */
	var tessellation : Float;
	/**
	 * Defines if the created geometry is double sided or not (default is BABYLON.Mesh.DEFAULTSIDE)
	 */
	var side : Float;

	/**
	 * Creates a new torus geometry
	 * @description see http://doc.babylonjs.com/how_to/set_shapes#torus
	 */
	@:overload(function(id:String, scene:Scene, diameter:Float, thickness:Float, tessellation:Float,?canBeRegenerated:Bool,?mesh:Null<Mesh>,?side:Float): Void{})
	function new(id:String, scene:Scene, ?vertexData:VertexData, ?updatable:Bool, ?mesh:Null<Mesh>) : Void;
	override function _regenerateVertexData() : VertexData;
	override function copy(id:String) : Geometry;
	override function serialize() : Dynamic;
	static function Parse(parsedTorus:Dynamic, scene:Scene) : Null<TorusGeometry>;
}