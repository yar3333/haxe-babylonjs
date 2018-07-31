package babylon;

extern class GroundMesh extends Mesh
{
	var generateOctree : Bool;
	private var _worldInverse : Dynamic/*UNKNOW_TYPE*/;
	private var _heightQuads : Dynamic/*UNKNOW_TYPE*/;
	var _subdivisionsX : Float;
	var _subdivisionsY : Float;
	var _width : Float;
	var _height : Float;
	var _minX : Float;
	var _maxX : Float;
	var _minZ : Float;
	var _maxZ : Float;
	function new(name:String, scene:Scene) : Void;
	var subdivisions : Float;
	var subdivisionsX : Float;
	var subdivisionsY : Float;
	function optimize(chunksCount:Float, ?octreeBlocksSize:Float) : Void;
	/**
	 * Returns a height (y) value in the Worl system :
	 * the ground altitude at the coordinates (x, z) expressed in the World system.
	 * Returns the ground y position if (x, z) are outside the ground surface.
	 * Not pertinent if the ground is rotated.
	 */
	function getHeightAtCoordinates(x:Float, z:Float) : Float;
	/**
	 * Returns a normalized vector (Vector3) orthogonal to the ground
	 * at the ground coordinates (x, z) expressed in the World system.
	 * Returns Vector3(0, 1, 0) if (x, z) are outside the ground surface.
	 * Not pertinent if the ground is rotated.
	 */
	function getNormalAtCoordinates(x:Float, z:Float) : Vector3;
	/**
	 * Updates the Vector3 passed a reference with a normalized vector orthogonal to the ground
	 * at the ground coordinates (x, z) expressed in the World system.
	 * Doesn't uptade the reference Vector3 if (x, z) are outside the ground surface.
	 * Not pertinent if the ground is rotated.
	 */
	function getNormalAtCoordinatesToRef(x:Float, z:Float, ref:Vector3) : Void;
	/**
	* Force the heights to be recomputed for getHeightAtCoordinates() or getNormalAtCoordinates()
	* if the ground has been updated.
	* This can be used in the render loop
	*/
	function updateCoordinateHeights() : Void;
	private function _getFacetAt(x, z);
	private function _initHeightQuads();
	private function _computeHeightQuads();
}