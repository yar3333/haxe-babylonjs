package babylonjs.babylon;

@:native("BABYLON.Size")
extern class Size
	implements ISize
{
	var width : Float;
	var height : Float;
	/**
	 * Returns the surface of the Size : width * height (float).
	 */
	var surface(default, null) : Float;

	function new(width:Float, height:Float) : Void;
	function toString() : String;
	/**
	 * Returns the string "Size"
	 */
	function getClassName() : String;
	/**
	 * Returns the Size hash code.
	 */
	function getHashCode() : Float;
	/**
	 * Updates the current size from the given one.
	 * Returns the updated Size.
	 */
	function copyFrom(src:Size) : Void;
	/**
	 * Updates in place the current Size from the given floats.
	 * Returns the updated Size.
	 */
	function copyFromFloats(width:Float, height:Float) : Size;
	/**
	 * Updates in place the current Size from the given floats.
	 * Returns the updated Size.
	 */
	function set(width:Float, height:Float) : Size;
	/**
	 * Returns a new Size set with the multiplication result of the current Size and the given floats.
	 */
	function multiplyByFloats(w:Float, h:Float) : Size;
	/**
	 * Returns a new Size copied from the given one.
	 */
	function clone() : Size;
	/**
	 * Boolean : True if the current Size and the given one width and height are strictly equal.
	 */
	function equals(other:Size) : Bool;
	/**
	 * Returns a new Size set to (0.0, 0.0)
	 */
	static function Zero() : Size;
	/**
	 * Returns a new Size set as the addition result of the current Size and the given one.
	 */
	function add(otherSize:Size) : Size;
	/**
	 * Returns a new Size set as the subtraction result of  the given one from the current Size.
	 */
	function subtract(otherSize:Size) : Size;
	/**
	 * Returns a new Size set at the linear interpolation "amount" between "start" and "end".
	 */
	static function Lerp(start:Size, end:Size, amount:Float) : Size;
}