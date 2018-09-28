package babylonjs.babylon;

@:native("BABYLON.Path2")
extern class Path2
{
	private var _points : Dynamic;
	private var _length : Dynamic;
	var closed : Bool;

	function new(x:Float, y:Float) : Void;
	/**
	 * Adds a new segment until the given coordinates (x, y) to the current Path2.
	 * Returns the updated Path2.
	 */
	function addLineTo(x:Float, y:Float) : Path2;
	/**
	 * Adds _numberOfSegments_ segments according to the arc definition (middle point coordinates, end point coordinates, the arc start point being the current Path2 last point) to the current Path2.
	 * Returns the updated Path2.
	 */
	function addArcTo(midX:Float, midY:Float, endX:Float, endY:Float, ?numberOfSegments:Float) : Path2;
	/**
	 * Closes the Path2.
	 * Returns the Path2.
	 */
	function close() : Path2;
	/**
	 * Returns the Path2 total length (float).
	 */
	function length() : Float;
	/**
	 * Returns the Path2 internal array of points.
	 */
	function getPoints() : Array<Vector2>;
	/**
	 * Returns a new Vector2 located at a percentage of the Path2 total length on this path.
	 */
	function getPointAtLengthPosition(normalizedLengthPosition:Float) : Vector2;
	/**
	 * Returns a new Path2 starting at the coordinates (x, y).
	 */
	static function StartingAt(x:Float, y:Float) : Path2;
}