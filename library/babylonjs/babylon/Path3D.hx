package babylonjs.babylon;

@:native("BABYLON.Path3D")
extern class Path3D
{
	var path : Array<Vector3>;
	private var _curve : Dynamic;
	private var _distances : Dynamic;
	private var _tangents : Dynamic;
	private var _normals : Dynamic;
	private var _binormals : Dynamic;
	private var _raw : Dynamic;

	function new(path:Array<Vector3>, ?firstNormal:Null<Vector3>, ?raw:Bool) : Void;
	/**
	 * Returns the Path3D array of successive Vector3 designing its curve.
	 */
	function getCurve() : Array<Vector3>;
	/**
	 * Returns an array populated with tangent vectors on each Path3D curve point.
	 */
	function getTangents() : Array<Vector3>;
	/**
	 * Returns an array populated with normal vectors on each Path3D curve point.
	 */
	function getNormals() : Array<Vector3>;
	/**
	 * Returns an array populated with binormal vectors on each Path3D curve point.
	 */
	function getBinormals() : Array<Vector3>;
	/**
	 * Returns an array populated with distances (float) of the i-th point from the first curve point.
	 */
	function getDistances() : Array<Float>;
	/**
	 * Forces the Path3D tangent, normal, binormal and distance recomputation.
	 * Returns the same object updated.
	 */
	function update(path:Array<Vector3>, ?firstNormal:Null<Vector3>) : Path3D;
	private function _compute(firstNormal:Dynamic) : Dynamic;
	private function _getFirstNonNullVector(index:Dynamic) : Dynamic;
	private function _getLastNonNullVector(index:Dynamic) : Dynamic;
	private function _normalVector(v0:Dynamic, vt:Dynamic, va:Dynamic) : Dynamic;
}