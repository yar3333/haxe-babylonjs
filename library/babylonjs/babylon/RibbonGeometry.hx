package babylonjs.babylon;

/**
 * Creates a ribbon geometry
 * @description See http://doc.babylonjs.com/how_to/ribbon_tutorial, http://doc.babylonjs.com/resources/maths_make_ribbons
 */
@:native("BABYLON.RibbonGeometry")
extern class RibbonGeometry extends _PrimitiveGeometry
{
	/**
	 * Defines the array of paths to use
	 */
	var pathArray : Array<Array<Vector3>>;
	/**
	 * Defines if the last and first points of each path in your pathArray must be joined
	 */
	var closeArray : Bool;
	/**
	 * Defines if the last and first points of each path in your pathArray must be joined
	 */
	var closePath : Bool;
	/**
	 * Defines the offset between points
	 */
	var offset : Float;
	/**
	 * Defines if the created geometry is double sided or not (default is BABYLON.Mesh.DEFAULTSIDE)
	 */
	var side : Float;

	/**
	 * Creates a ribbon geometry
	 * @description See http://doc.babylonjs.com/how_to/ribbon_tutorial, http://doc.babylonjs.com/resources/maths_make_ribbons
	 */
	@:overload(function(id:String, scene:Scene, pathArray:Array<Array<Vector3>>, closeArray:Bool, closePath:Bool, offset:Float,?canBeRegenerated:Bool,?mesh:Mesh,?side:Float): Void{})
	function new(id:String, scene:Scene, ?vertexData:VertexData, ?updatable:Bool, ?mesh:Null<Mesh>) : Void;
	/**
	 * @hidden 
	 */
	override function _regenerateVertexData() : VertexData;
	override function copy(id:String) : Geometry;
}