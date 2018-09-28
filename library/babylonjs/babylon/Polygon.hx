package babylonjs.babylon;

@:native("BABYLON.Polygon")
extern class Polygon
{
	static function Rectangle(xmin:Float, ymin:Float, xmax:Float, ymax:Float) : Array<Vector2>;
	static function Circle(radius:Float, ?cx:Float, ?cy:Float, ?numberOfSides:Float) : Array<Vector2>;
	static function Parse(input:String) : Array<Vector2>;
	static function StartingAt(x:Float, y:Float) : Path2;
}