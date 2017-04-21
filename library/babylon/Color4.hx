package babylon;

extern class Color4
{
	var r : Float;
	var g : Float;
	var b : Float;
	var a : Float;
	function new(r:Float, g:Float, b:Float, a:Float) : Void;
	function addInPlace(right:Dynamic) : Color4;
	function asArray() : Array<Float>;
	function toArray(array:Array<Float>, ?index:Float) : Color4;
	function add(right:Color4) : Color4;
	function subtract(right:Color4) : Color4;
	function subtractToRef(right:Color4, result:Color4) : Color4;
	function scale(scale:Float) : Color4;
	function scaleToRef(scale:Float, result:Color4) : Color4;
	/**
	  * Multipy an RGBA Color4 value by another and return a new Color4 object
	  * @param color The Color4 (RGBA) value to multiply by
	  * @returns A new Color4.
	  */
	function multiply(color:Color4) : Color4;
	/**
	 * Multipy an RGBA Color4 value by another and push the result in a reference value
	 * @param color The Color4 (RGBA) value to multiply by
	 * @param result The Color4 (RGBA) to fill the result in
	 * @returns the result Color4.
	 */
	function multiplyToRef(color:Color4, result:Color4) : Color4;
	function toString() : String;
	function getClassName() : String;
	function getHashCode() : Float;
	function clone() : Color4;
	function copyFrom(source:Color4) : Color4;
	function toHexString() : String;
	static function FromHexString(hex:String) : Color4;
	static function Lerp(left:Color4, right:Color4, amount:Float) : Color4;
	static function LerpToRef(left:Color4, right:Color4, amount:Float, result:Color4) : Void;
	static function FromArray(array:Array<Float>, ?offset:Float) : Color4;
	static function FromInts(r:Float, g:Float, b:Float, a:Float) : Color4;
	static function CheckColors4(colors:Array<Float>, count:Float) : Array<Float>;
}