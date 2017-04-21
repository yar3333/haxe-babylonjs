package babylon;

extern class Curve3
{
	private var _points : Dynamic/*UNKNOW_TYPE*/;
	private var _length : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * Returns a Curve3 object along a Quadratic Bezier curve : http://doc.babylonjs.com/tutorials/How_to_use_Curve3#quadratic-bezier-curve
	 * @param v0 (Vector3) the origin point of the Quadratic Bezier
	 * @param v1 (Vector3) the control point
	 * @param v2 (Vector3) the end point of the Quadratic Bezier
	 * @param nbPoints (integer) the wanted number of points in the curve
	 */
	static function CreateQuadraticBezier(v0:Vector3, v1:Vector3, v2:Vector3, nbPoints:Float) : Curve3;
	/**
	 * Returns a Curve3 object along a Cubic Bezier curve : http://doc.babylonjs.com/tutorials/How_to_use_Curve3#cubic-bezier-curve
	 * @param v0 (Vector3) the origin point of the Cubic Bezier
	 * @param v1 (Vector3) the first control point
	 * @param v2 (Vector3) the second control point
	 * @param v3 (Vector3) the end point of the Cubic Bezier
	 * @param nbPoints (integer) the wanted number of points in the curve
	 */
	static function CreateCubicBezier(v0:Vector3, v1:Vector3, v2:Vector3, v3:Vector3, nbPoints:Float) : Curve3;
	/**
	 * Returns a Curve3 object along a Hermite Spline curve : http://doc.babylonjs.com/tutorials/How_to_use_Curve3#hermite-spline
	 * @param p1 (Vector3) the origin point of the Hermite Spline
	 * @param t1 (Vector3) the tangent vector at the origin point
	 * @param p2 (Vector3) the end point of the Hermite Spline
	 * @param t2 (Vector3) the tangent vector at the end point
	 * @param nbPoints (integer) the wanted number of points in the curve
	 */
	static function CreateHermiteSpline(p1:Vector3, t1:Vector3, p2:Vector3, t2:Vector3, nbPoints:Float) : Curve3;
	/**
	 * A Curve3 object is a logical object, so not a mesh, to handle curves in the 3D geometric space.
	 * A Curve3 is designed from a series of successive Vector3.
	 * Tuto : http://doc.babylonjs.com/tutorials/How_to_use_Curve3#curve3-object
	 */
	function new(points:Array<Vector3>) : Void;
	/**
	 * Returns the Curve3 stored array of successive Vector3
	 */
	function getPoints() : Array<Vector3>;
	/**
	 * Returns the computed length (float) of the curve.
	 */
	function length() : Float;
	/**
	 * Returns a new instance of Curve3 object : var curve = curveA.continue(curveB);
	 * This new Curve3 is built by translating and sticking the curveB at the end of the curveA.
	 * curveA and curveB keep unchanged.
	 */
	function continue(curve:Curve3) : Curve3;
	private function _computeLength(path);
}