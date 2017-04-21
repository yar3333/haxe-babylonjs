package babylon;

extern class QuadraticMatrix
{
	var data : Array<Float>;
	function new(?data:Array<Float>) : Void;
	function det(a11:Dynamic, a12:Dynamic, a13:Dynamic, a21:Dynamic, a22:Dynamic, a23:Dynamic, a31:Dynamic, a32:Dynamic, a33:Dynamic) : Float;
	function addInPlace(matrix:QuadraticMatrix) : Void;
	function addArrayInPlace(data:Array<Float>) : Void;
	function add(matrix:QuadraticMatrix) : QuadraticMatrix;
	static function FromData(a:Float, b:Float, c:Float, d:Float) : QuadraticMatrix;
	static function DataFromNumbers(a:Float, b:Float, c:Float, d:Float) : Array<Float>;
}