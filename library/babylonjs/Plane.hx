package babylonjs;

@:native("BABYLON.Plane")
extern class Plane
{
	var normal : Vector3;
	var d : Float;

	function new(a:Float, b:Float, c:Float, d:Float) : Void;
	/**
	 * Returns the plane coordinates as a new array of 4 elements [a, b, c, d].
	 */
	function asArray() : Array<Float>;
	/**
	 * Returns a new plane copied from the current Plane.
	 */
	function clone() : Plane;
	/**
	 * Returns the string "Plane".
	 */
	function getClassName() : String;
	/**
	 * Returns the Plane hash code.
	 */
	function getHashCode() : Float;
	/**
	 * Normalize the current Plane in place.
	 * Returns the updated Plane.
	 */
	function normalize() : Plane;
	/**
	 * Returns a new Plane as the result of the transformation of the current Plane by the given matrix.
	 */
	function transform(transformation:Matrix) : Plane;
	/**
	 * Returns the dot product (float) of the point coordinates and the plane normal.
	 */
	function dotCoordinate(point:Vector3) : Float;
	/**
	 * Updates the current Plane from the plane defined by the three given points.
	 * Returns the updated Plane.
	 */
	function copyFromPoints(point1:Vector3, point2:Vector3, point3:Vector3) : Plane;
	/**
	 * Boolean : True is the vector "direction"  is the same side than the plane normal.
	 */
	function isFrontFacingTo(direction:Vector3, epsilon:Float) : Bool;
	/**
	 * Returns the signed distance (float) from the given point to the Plane.
	 */
	function signedDistanceTo(point:Vector3) : Float;
	/**
	 * Returns a new Plane from the given array.
	 */
	static function FromArray(array:ArrayLike<Float>) : Plane;
	/**
	 * Returns a new Plane defined by the three given points.
	 */
	static function FromPoints(point1:Vector3, point2:Vector3, point3:Vector3) : Plane;
	/**
	 * Returns a new Plane the normal vector to this plane at the given origin point.
	 * Note : the vector "normal" is updated because normalized.
	 */
	static function FromPositionAndNormal(origin:Vector3, normal:Vector3) : Plane;
	/**
	 * Returns the signed distance between the plane defined by the normal vector at the "origin"" point and the given other point.
	 */
	static function SignedDistanceToPlaneFromPositionAndNormal(origin:Vector3, normal:Vector3, point:Vector3) : Float;
}