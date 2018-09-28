package babylonjs.babylon;

@:native("BABYLON.QuadraticMatrix")
extern class QuadraticMatrix
{
	var data : Array<Float>;

	function new(?data:Array<Float>) : Void;
	function det(a11:Float, a12:Float, a13:Float, a21:Float, a22:Float, a23:Float, a31:Float, a32:Float, a33:Float) : Float;
	function addInPlace(matrix:QuadraticMatrix) : Void;
	function addArrayInPlace(data:Array<Float>) : Void;
	function add(matrix:QuadraticMatrix) : QuadraticMatrix;
	static function FromData(a:Float, b:Float, c:Float, d:Float) : QuadraticMatrix;
	static function DataFromNumbers(a:Float, b:Float, c:Float, d:Float) : Array<Float>;
}