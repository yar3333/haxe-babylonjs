package babylonjs.babylon;

@:native("BABYLON.Curve3")
extern class Curve3
{
	private var _points : Dynamic;
	private var _length : Dynamic;

	/**
	 * Returns a Curve3 object along a Quadratic Bezier curve : http://doc.babylonjs.com/tutorials/How_to_use_Curve3#quadratic-bezier-curve
	 */
	static function CreateQuadraticBezier(v0:Vector3, v1:Vector3, v2:Vector3, nbPoints:Float) : Curve3;
	/**
	 * Returns a Curve3 object along a Cubic Bezier curve : http://doc.babylonjs.com/tutorials/How_to_use_Curve3#cubic-bezier-curve
	 */
	static function CreateCubicBezier(v0:Vector3, v1:Vector3, v2:Vector3, v3:Vector3, nbPoints:Float) : Curve3;
	/**
	 * Returns a Curve3 object along a Hermite Spline curve : http://doc.babylonjs.com/tutorials/How_to_use_Curve3#hermite-spline
	 */
	static function CreateHermiteSpline(p1:Vector3, t1:Vector3, p2:Vector3, t2:Vector3, nbPoints:Float) : Curve3;
	/**
	 * Returns a Curve3 object along a CatmullRom Spline curve :
	 */
	static function CreateCatmullRomSpline(points:Array<Vector3>, nbPoints:Float) : Curve3;
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
	inline function continue_(curve:Curve3) : Curve3 return (cast this)[cast 'continue'](curve);
	private function _computeLength(path:Dynamic) : Dynamic;
}