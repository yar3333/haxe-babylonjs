package babylon;

extern class Size implements ISize
{
	var width : Float;
	var height : Float;
	function new(width:Float, height:Float) : Void;
	function toString() : String;
	function getClassName() : String;
	function getHashCode() : Float;
	function copyFrom(src:Size) : Void;
	function copyFromFloats(width:Float, height:Float) : Void;
	function multiplyByFloats(w:Float, h:Float) : Size;
	function clone() : Size;
	function equals(other:Size) : Bool;
	var surface : Float;
	static function Zero() : Size;
	function add(otherSize:Size) : Size;
	function substract(otherSize:Size) : Size;
	static function Lerp(start:Size, end:Size, amount:Float) : Size;
}