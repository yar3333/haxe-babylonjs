package babylonjs.babylon;

@:native("BABYLON.BezierCurve")
extern class BezierCurve
{
	/**
	 * Returns the cubic Bezier interpolated value (float) at "t" (float) from the given x1, y1, x2, y2 floats.
	 */
	static function interpolate(t:Float, x1:Float, y1:Float, x2:Float, y2:Float) : Float;
}