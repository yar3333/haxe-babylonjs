package babylon;

extern class Vector3
{
	var x : Float;
	var y : Float;
	var z : Float;
	function new(x:Float, y:Float, z:Float) : Void;
	function toString() : String;
	function getClassName() : String;
	function getHashCode() : Float;
	function asArray() : Array<Float>;
	function toArray(array:haxe.extern.EitherType<Array<Float>, Float32Array>, ?index:Float) : Vector3;
	function toQuaternion() : Quaternion;
	function addInPlace(otherVector:Vector3) : Vector3;
	function add(otherVector:Vector3) : Vector3;
	function addToRef(otherVector:Vector3, result:Vector3) : Vector3;
	function subtractInPlace(otherVector:Vector3) : Vector3;
	function subtract(otherVector:Vector3) : Vector3;
	function subtractToRef(otherVector:Vector3, result:Vector3) : Vector3;
	function subtractFromFloats(x:Float, y:Float, z:Float) : Vector3;
	function subtractFromFloatsToRef(x:Float, y:Float, z:Float, result:Vector3) : Vector3;
	function negate() : Vector3;
	function scaleInPlace(scale:Float) : Vector3;
	function scale(scale:Float) : Vector3;
	function scaleToRef(scale:Float, result:Vector3) : Void;
	function equals(otherVector:Vector3) : Bool;
	function equalsWithEpsilon(otherVector:Vector3, ?epsilon:Float) : Bool;
	function equalsToFloats(x:Float, y:Float, z:Float) : Bool;
	function multiplyInPlace(otherVector:Vector3) : Vector3;
	function multiply(otherVector:Vector3) : Vector3;
	function multiplyToRef(otherVector:Vector3, result:Vector3) : Vector3;
	function multiplyByFloats(x:Float, y:Float, z:Float) : Vector3;
	function divide(otherVector:Vector3) : Vector3;
	function divideToRef(otherVector:Vector3, result:Vector3) : Vector3;
	function MinimizeInPlace(other:Vector3) : Vector3;
	function MaximizeInPlace(other:Vector3) : Vector3;
	function length() : Float;
	function lengthSquared() : Float;
	function normalize() : Vector3;
	function clone() : Vector3;
	function copyFrom(source:Vector3) : Vector3;
	function copyFromFloats(x:Float, y:Float, z:Float) : Vector3;
	static function GetClipFactor(vector0:Vector3, vector1:Vector3, axis:Vector3, size:Dynamic) : Float;
	static function FromArray(array:haxe.extern.EitherType<Array<Float>, Float32Array>, ?offset:Float) : Vector3;
	static function FromFloatArray(array:Float32Array, ?offset:Float) : Vector3;
	static function FromArrayToRef(array:haxe.extern.EitherType<Array<Float>, Float32Array>, offset:Float, result:Vector3) : Void;
	static function FromFloatArrayToRef(array:Float32Array, offset:Float, result:Vector3) : Void;
	static function FromFloatsToRef(x:Float, y:Float, z:Float, result:Vector3) : Void;
	static function Zero() : Vector3;
	static function Up() : Vector3;
	static function Forward() : Vector3;
	static function Right() : Vector3;
	static function Left() : Vector3;
	static function TransformCoordinates(vector:Vector3, transformation:Matrix) : Vector3;
	static function TransformCoordinatesToRef(vector:Vector3, transformation:Matrix, result:Vector3) : Void;
	static function TransformCoordinatesFromFloatsToRef(x:Float, y:Float, z:Float, transformation:Matrix, result:Vector3) : Void;
	static function TransformNormal(vector:Vector3, transformation:Matrix) : Vector3;
	static function TransformNormalToRef(vector:Vector3, transformation:Matrix, result:Vector3) : Void;
	static function TransformNormalFromFloatsToRef(x:Float, y:Float, z:Float, transformation:Matrix, result:Vector3) : Void;
	static function CatmullRom(value1:Vector3, value2:Vector3, value3:Vector3, value4:Vector3, amount:Float) : Vector3;
	static function Clamp(value:Vector3, min:Vector3, max:Vector3) : Vector3;
	static function Hermite(value1:Vector3, tangent1:Vector3, value2:Vector3, tangent2:Vector3, amount:Float) : Vector3;
	static function Lerp(start:Vector3, end:Vector3, amount:Float) : Vector3;
	static function Dot(left:Vector3, right:Vector3) : Float;
	static function Cross(left:Vector3, right:Vector3) : Vector3;
	static function CrossToRef(left:Vector3, right:Vector3, result:Vector3) : Void;
	static function Normalize(vector:Vector3) : Vector3;
	static function NormalizeToRef(vector:Vector3, result:Vector3) : Void;
	private static var _viewportMatrixCache : Dynamic/*UNKNOW_TYPE*/;
	private static var _matrixCache : Dynamic/*UNKNOW_TYPE*/;
	static function Project(vector:Vector3, world:Matrix, transform:Matrix, viewport:Viewport) : Vector3;
	static function UnprojectFromTransform(source:Vector3, viewportWidth:Float, viewportHeight:Float, world:Matrix, transform:Matrix) : Vector3;
	static function Unproject(source:Vector3, viewportWidth:Float, viewportHeight:Float, world:Matrix, view:Matrix, projection:Matrix) : Vector3;
	static function Minimize(left:Vector3, right:Vector3) : Vector3;
	static function Maximize(left:Vector3, right:Vector3) : Vector3;
	static function Distance(value1:Vector3, value2:Vector3) : Float;
	static function DistanceSquared(value1:Vector3, value2:Vector3) : Float;
	static function Center(value1:Vector3, value2:Vector3) : Vector3;
	/**
	 * Given three orthogonal normalized left-handed oriented Vector3 axis in space (target system),
	 * RotationFromAxis() returns the rotation Euler angles (ex : rotation.x, rotation.y, rotation.z) to apply
	 * to something in order to rotate it from its local system to the given target system.
	 */
	static function RotationFromAxis(axis1:Vector3, axis2:Vector3, axis3:Vector3) : Vector3;
	/**
	 * The same than RotationFromAxis but updates the passed ref Vector3 parameter.
	 */
	static function RotationFromAxisToRef(axis1:Vector3, axis2:Vector3, axis3:Vector3, ref:Vector3) : Void;
}