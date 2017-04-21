package babylon;

extern class Path2
{
	private var _points : Dynamic/*UNKNOW_TYPE*/;
	private var _length : Dynamic/*UNKNOW_TYPE*/;
	var closed : Bool;
	function new(x:Float, y:Float) : Void;
	function addLineTo(x:Float, y:Float) : Path2;
	function addArcTo(midX:Float, midY:Float, endX:Float, endY:Float, ?numberOfSegments:Float) : Path2;
	function close() : Path2;
	function length() : Float;
	function getPoints() : Array<Vector2>;
	function getPointAtLengthPosition(normalizedLengthPosition:Float) : Vector2;
	static function StartingAt(x:Float, y:Float) : Path2;
}