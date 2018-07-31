package babylon;

extern class Quaternion
{
	var x : Float;
	var y : Float;
	var z : Float;
	var w : Float;
	function new(?x:Float, ?y:Float, ?z:Float, ?w:Float) : Void;
	function toString() : String;
	function getClassName() : String;
	function getHashCode() : Float;
	function asArray() : Array<Float>;
	function equals(otherQuaternion:Quaternion) : Bool;
	function clone() : Quaternion;
	function copyFrom(other:Quaternion) : Quaternion;
	function copyFromFloats(x:Float, y:Float, z:Float, w:Float) : Quaternion;
	function add(other:Quaternion) : Quaternion;
	function subtract(other:Quaternion) : Quaternion;
	function scale(value:Float) : Quaternion;
	function multiply(q1:Quaternion) : Quaternion;
	function multiplyToRef(q1:Quaternion, result:Quaternion) : Quaternion;
	function multiplyInPlace(q1:Quaternion) : Quaternion;
	function conjugateToRef(ref:Quaternion) : Quaternion;
	function conjugateInPlace() : Quaternion;
	function conjugate() : Quaternion;
	function length() : Float;
	function normalize() : Quaternion;
	function toEulerAngles(?order:String) : Vector3;
	function toEulerAnglesToRef(result:Vector3, ?order:String) : Quaternion;
	function toRotationMatrix(result:Matrix) : Quaternion;
	function fromRotationMatrix(matrix:Matrix) : Quaternion;
	static function FromRotationMatrix(matrix:Matrix) : Quaternion;
	static function FromRotationMatrixToRef(matrix:Matrix, result:Quaternion) : Void;
	static function Inverse(q:Quaternion) : Quaternion;
	static function Identity() : Quaternion;
	static function RotationAxis(axis:Vector3, angle:Float) : Quaternion;
	static function RotationAxisToRef(axis:Vector3, angle:Float, result:Quaternion) : Quaternion;
	static function FromArray(array:Array<Float>, ?offset:Float) : Quaternion;
	static function RotationYawPitchRoll(yaw:Float, pitch:Float, roll:Float) : Quaternion;
	static function RotationYawPitchRollToRef(yaw:Float, pitch:Float, roll:Float, result:Quaternion) : Void;
	static function RotationAlphaBetaGamma(alpha:Float, beta:Float, gamma:Float) : Quaternion;
	static function RotationAlphaBetaGammaToRef(alpha:Float, beta:Float, gamma:Float, result:Quaternion) : Void;
	static function Slerp(left:Quaternion, right:Quaternion, amount:Float) : Quaternion;
	static function SlerpToRef(left:Quaternion, right:Quaternion, amount:Float, result:Quaternion) : Void;
}