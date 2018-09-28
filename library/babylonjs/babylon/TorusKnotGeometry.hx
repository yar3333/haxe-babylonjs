package babylonjs.babylon;

/**
 * Creates a torus knot geometry
 * @description see http://doc.babylonjs.com/how_to/set_shapes#torus-knot
 */
@:native("BABYLON.TorusKnotGeometry")
extern class TorusKnotGeometry extends _PrimitiveGeometry
{
	/**
	 * Defines the radius of the torus knot
	 */
	var radius : Float;
	/**
	 * Defines the thickness of the torus knot tube
	 */
	var tube : Float;
	/**
	 * Defines the number of radial segments
	 */
	var radialSegments : Float;
	/**
	 * Defines the number of tubular segments
	 */
	var tubularSegments : Float;
	/**
	 * Defines the first number of windings
	 */
	var p : Float;
	/**
	 * Defines the second number of windings
	 */
	var q : Float;
	/**
	 * Defines if the created geometry is double sided or not (default is BABYLON.Mesh.DEFAULTSIDE)
	 */
	var side : Float;

	/**
	 * Creates a torus knot geometry
	 * @description see http://doc.babylonjs.com/how_to/set_shapes#torus-knot
	 */
	@:overload(function(id:String, scene:Scene, radius:Float, tube:Float, radialSegments:Float, tubularSegments:Float, p:Float, q:Float,?canBeRegenerated:Bool,?mesh:Null<Mesh>,?side:Float): Void{})
	function new(id:String, scene:Scene, ?vertexData:VertexData, ?updatable:Bool, ?mesh:Null<Mesh>) : Void;
	override function _regenerateVertexData() : VertexData;
	override function copy(id:String) : Geometry;
	override function serialize() : Dynamic;
	static function Parse(parsedTorusKnot:Dynamic, scene:Scene) : Null<TorusKnotGeometry>;
}