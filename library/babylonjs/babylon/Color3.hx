package babylon;

extern class Color3
{
	var r : Float;
	var g : Float;
	var b : Float;
	function new(?r:Float, ?g:Float, ?b:Float) : Void;
	function toString() : String;
	function getClassName() : String;
	function getHashCode() : Float;
	function toArray(array:Array<Float>, ?index:Float) : Color3;
	function toColor4(?alpha:Float) : Color4;
	function asArray() : Array<Float>;
	function toLuminance() : Float;
	function multiply(otherColor:Color3) : Color3;
	function multiplyToRef(otherColor:Color3, result:Color3) : Color3;
	function equals(otherColor:Color3) : Bool;
	function equalsFloats(r:Float, g:Float, b:Float) : Bool;
	function scale(scale:Float) : Color3;
	function scaleToRef(scale:Float, result:Color3) : Color3;
	function add(otherColor:Color3) : Color3;
	function addToRef(otherColor:Color3, result:Color3) : Color3;
	function subtract(otherColor:Color3) : Color3;
	function subtractToRef(otherColor:Color3, result:Color3) : Color3;
	function clone() : Color3;
	function copyFrom(source:Color3) : Color3;
	function copyFromFloats(r:Float, g:Float, b:Float) : Color3;
	function toHexString() : String;
	function toLinearSpace() : Color3;
	function toLinearSpaceToRef(convertedColor:Color3) : Color3;
	function toGammaSpace() : Color3;
	function toGammaSpaceToRef(convertedColor:Color3) : Color3;
	static function FromHexString(hex:String) : Color3;
	static function FromArray(array:Array<Float>, ?offset:Float) : Color3;
	static function FromInts(r:Float, g:Float, b:Float) : Color3;
	static function Lerp(start:Color3, end:Color3, amount:Float) : Color3;
	static function Red() : Color3;
	static function Green() : Color3;
	static function Blue() : Color3;
	static function Black() : Color3;
	static function White() : Color3;
	static function Purple() : Color3;
	static function Magenta() : Color3;
	static function Yellow() : Color3;
	static function Gray() : Color3;
}