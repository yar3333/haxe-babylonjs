package babylon;

extern class Plane
{
	var normal : Vector3;
	var d : Float;
	function new(a:Float, b:Float, c:Float, d:Float) : Void;
	function asArray() : Array<Float>;
	function clone() : Plane;
	function getClassName() : String;
	function getHashCode() : Float;
	function normalize() : Plane;
	function transform(transformation:Matrix) : Plane;
	function dotCoordinate(point:Dynamic) : Float;
	function copyFromPoints(point1:Vector3, point2:Vector3, point3:Vector3) : Plane;
	function isFrontFacingTo(direction:Vector3, epsilon:Float) : Bool;
	function signedDistanceTo(point:Vector3) : Float;
	static function FromArray(array:Array<Float>) : Plane;
	static function FromPoints(point1:Dynamic, point2:Dynamic, point3:Dynamic) : Plane;
	static function FromPositionAndNormal(origin:Vector3, normal:Vector3) : Plane;
	static function SignedDistanceToPlaneFromPositionAndNormal(origin:Vector3, normal:Vector3, point:Vector3) : Float;
}