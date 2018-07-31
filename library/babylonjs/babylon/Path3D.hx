package babylon;

extern class Path3D
{
	var path : Array<Vector3>;
	private var _curve : Dynamic/*UNKNOW_TYPE*/;
	private var _distances : Dynamic/*UNKNOW_TYPE*/;
	private var _tangents : Dynamic/*UNKNOW_TYPE*/;
	private var _normals : Dynamic/*UNKNOW_TYPE*/;
	private var _binormals : Dynamic/*UNKNOW_TYPE*/;
	private var _raw : Dynamic/*UNKNOW_TYPE*/;
	/**
	* new Path3D(path, normal, raw)
	* Creates a Path3D. A Path3D is a logical math object, so not a mesh.
	* please read the description in the tutorial :  http://doc.babylonjs.com/tutorials/How_to_use_Path3D
	* path : an array of Vector3, the curve axis of the Path3D
	* normal (optional) : Vector3, the first wanted normal to the curve. Ex (0, 1, 0) for a vertical normal.
	* raw (optional, default false) : Bool, if true the returned Path3D isn't normalized. Useful to depict path acceleration or speed.
	*/
	function new(path:Array<Vector3>, ?firstNormal:Vector3, ?raw:Bool) : Void;
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
	function update(path:Array<Vector3>, ?firstNormal:Vector3) : Path3D;
	private function _compute(firstNormal);
	private function _getFirstNonNullVector(index);
	private function _getLastNonNullVector(index);
	private function _normalVector(v0, vt, va);
}