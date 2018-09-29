package babylonjs;

@:native("BABYLON.GroundMesh")
extern class GroundMesh extends Mesh
{
	var generateOctree : Bool;
	private var _heightQuads : Dynamic;
	var _subdivisionsX : Float;
	var _subdivisionsY : Float;
	var _width : Float;
	var _height : Float;
	var _minX : Float;
	var _maxX : Float;
	var _minZ : Float;
	var _maxZ : Float;
	var subdivisions(default, null) : Float;
	var subdivisionsX(default, null) : Float;
	var subdivisionsY(default, null) : Float;

	@:overload(function(name:String, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	override function getClassName() : String;
	function optimize(chunksCount:Float, ?octreeBlocksSize:Float) : Void;
	/**
	 * Returns a height (y) value in the Worl system :
	 * the ground altitude at the coordinates (x, z) expressed in the World system.
	 * Returns the ground y position if (x, z) are outside the ground surface.
	 */
	function getHeightAtCoordinates(x:Float, z:Float) : Float;
	/**
	 * Returns a normalized vector (Vector3) orthogonal to the ground
	 * at the ground coordinates (x, z) expressed in the World system.
	 * Returns Vector3(0.0, 1.0, 0.0) if (x, z) are outside the ground surface.
	 */
	function getNormalAtCoordinates(x:Float, z:Float) : Vector3;
	/**
	 * Updates the Vector3 passed a reference with a normalized vector orthogonal to the ground
	 * at the ground coordinates (x, z) expressed in the World system.
	 * Doesn't uptade the reference Vector3 if (x, z) are outside the ground surface.
	 * Returns the GroundMesh.
	 */
	function getNormalAtCoordinatesToRef(x:Float, z:Float, ref:Vector3) : GroundMesh;
	/**
	 * Force the heights to be recomputed for getHeightAtCoordinates() or getNormalAtCoordinates()
	 * if the ground has been updated.
	 * This can be used in the render loop.
	 * Returns the GroundMesh.
	 */
	function updateCoordinateHeights() : GroundMesh;
	private function _getFacetAt(x:Dynamic, z:Dynamic) : Dynamic;
	private function _initHeightQuads() : Dynamic;
	private function _computeHeightQuads() : Dynamic;
	@:overload(function(serializationObject:Dynamic): Void{})
	override function serialize(?currentSerializationObject:Dynamic) : Dynamic;
	static function Parse(parsedMesh:Dynamic, scene:Scene) : GroundMesh;
}