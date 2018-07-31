package babylon;

import js.html.*;

extern class Vector2
{
	var x : Float;
	var y : Float;
	function new(x:Float, y:Float) : Void;
	function toString() : String;
	function getClassName() : String;
	function getHashCode() : Float;
	function toArray(array:haxe.extern.EitherType<Array<Float>, Float32Array>, ?index:Float) : Vector2;
	function asArray() : Array<Float>;
	function copyFrom(source:Vector2) : Vector2;
	function copyFromFloats(x:Float, y:Float) : Vector2;
	function add(otherVector:Vector2) : Vector2;
	function addToRef(otherVector:Vector2, result:Vector2) : Vector2;
	function addInPlace(otherVector:Vector2) : Vector2;
	function addVector3(otherVector:Vector3) : Vector2;
	function subtract(otherVector:Vector2) : Vector2;
	function subtractToRef(otherVector:Vector2, result:Vector2) : Vector2;
	function subtractInPlace(otherVector:Vector2) : Vector2;
	function multiplyInPlace(otherVector:Vector2) : Vector2;
	function multiply(otherVector:Vector2) : Vector2;
	function multiplyToRef(otherVector:Vector2, result:Vector2) : Vector2;
	function multiplyByFloats(x:Float, y:Float) : Vector2;
	function divide(otherVector:Vector2) : Vector2;
	function divideToRef(otherVector:Vector2, result:Vector2) : Vector2;
	function negate() : Vector2;
	function scaleInPlace(scale:Float) : Vector2;
	function scale(scale:Float) : Vector2;
	function equals(otherVector:Vector2) : Bool;
	function equalsWithEpsilon(otherVector:Vector2, ?epsilon:Float) : Bool;
	function length() : Float;
	function lengthSquared() : Float;
	function normalize() : Vector2;
	function clone() : Vector2;
	static function Zero() : Vector2;
	static function FromArray(array:haxe.extern.EitherType<Array<Float>, Float32Array>, ?offset:Float) : Vector2;
	static function FromArrayToRef(array:haxe.extern.EitherType<Array<Float>, Float32Array>, offset:Float, result:Vector2) : Void;
	static function CatmullRom(value1:Vector2, value2:Vector2, value3:Vector2, value4:Vector2, amount:Float) : Vector2;
	static function Clamp(value:Vector2, min:Vector2, max:Vector2) : Vector2;
	static function Hermite(value1:Vector2, tangent1:Vector2, value2:Vector2, tangent2:Vector2, amount:Float) : Vector2;
	static function Lerp(start:Vector2, end:Vector2, amount:Float) : Vector2;
	static function Dot(left:Vector2, right:Vector2) : Float;
	static function Normalize(vector:Vector2) : Vector2;
	static function Minimize(left:Vector2, right:Vector2) : Vector2;
	static function Maximize(left:Vector2, right:Vector2) : Vector2;
	static function Transform(vector:Vector2, transformation:Matrix) : Vector2;
	static function TransformToRef(vector:Vector2, transformation:Matrix, result:Vector2) : Void;
	static function PointInTriangle(p:Vector2, p0:Vector2, p1:Vector2, p2:Vector2) : Bool;
	static function Distance(value1:Vector2, value2:Vector2) : Float;
	static function DistanceSquared(value1:Vector2, value2:Vector2) : Float;
	static function Center(value1:Vector2, value2:Vector2) : Vector2;
	static function DistanceOfPointFromSegment(p:Vector2, segA:Vector2, segB:Vector2) : Float;
}