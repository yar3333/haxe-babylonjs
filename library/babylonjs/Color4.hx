package babylonjs;

/**
 * Class used to hold a RBGA color
 */
@:native("BABYLON.Color4")
extern class Color4
{
	/**
	 * Defines the red component (between 0 and 1, default is 0)
	 */
	var r : Float;
	/**
	 * Defines the green component (between 0 and 1, default is 0)
	 */
	var g : Float;
	/**
	 * Defines the blue component (between 0 and 1, default is 0)
	 */
	var b : Float;
	/**
	 * Defines the alpha component (between 0 and 1, default is 1)
	 */
	var a : Float;

	/**
	 * Class used to hold a RBGA color
	 */
	function new(?r:Float, ?g:Float, ?b:Float, ?a:Float) : Void;
	/**
	 * Adds in place the given Color4 values to the current Color4 object
	 * @returns the current updated Color4 object
	 */
	function addInPlace(right:Color4) : Color4;
	/**
	 * Creates a new array populated with 4 numeric elements : red, green, blue, alpha values
	 * @returns the new array
	 */
	function asArray() : Array<Float>;
	/**
	 * Stores from the starting index in the given array the Color4 successive values
	 * @returns the current Color4 object
	 */
	function toArray(array:Array<Float>, ?index:Float) : Color4;
	/**
	 * Creates a new Color4 set with the added values of the current Color4 and of the given one
	 * @returns a new Color4 object
	 */
	function add(right:Color4) : Color4;
	/**
	 * Creates a new Color4 set with the subtracted values of the given one from the current Color4
	 * @returns a new Color4 object
	 */
	function subtract(right:Color4) : Color4;
	/**
	 * Subtracts the given ones from the current Color4 values and stores the results in "result"
	 * @returns the current Color4 object
	 */
	function subtractToRef(right:Color4, result:Color4) : Color4;
	/**
	 * Creates a new Color4 with the current Color4 values multiplied by scale
	 * @returns a new Color4 object
	 */
	function scale(scale:Float) : Color4;
	/**
	 * Multiplies the current Color4 values by scale and stores the result in "result"
	 * @returns the current unmodified Color4
	 */
	function scaleToRef(scale:Float, result:Color4) : Color4;
	/**
	 * Scale the current Color4 values by a factor and add the result to a given Color4
	 * @returns the unmodified current Color4
	 */
	function scaleAndAddToRef(scale:Float, result:Color4) : Color4;
	/**
	 * Clamps the rgb values by the min and max values and stores the result into "result"
	 * @returns the cuurent Color4
	 */
	function clampToRef(min:haxe.extern.EitherType<Float, {}>, max:haxe.extern.EitherType<Float, {}>, result:Color4) : Color4;
	/**
	 * Multipy an Color4 value by another and return a new Color4 object
	 * @returns a new Color4 object
	 */
	function multiply(color:Color4) : Color4;
	/**
	 * Multipy a Color4 value by another and push the result in a reference value
	 * @returns the result Color4
	 */
	function multiplyToRef(color:Color4, result:Color4) : Color4;
	/**
	 * Creates a string with the Color4 current values
	 * @returns the string representation of the Color4 object
	 */
	function toString() : String;
	/**
	 * Returns the string "Color4"
	 * @returns "Color4"
	 */
	function getClassName() : String;
	/**
	 * Compute the Color4 hash code
	 * @returns an unique number that can be used to hash Color4 objects
	 */
	function getHashCode() : Float;
	/**
	 * Creates a new Color4 copied from the current one
	 * @returns a new Color4 object
	 */
	function clone() : Color4;
	/**
	 * Copies the given Color4 values into the current one
	 * @returns the current updated Color4 object
	 */
	function copyFrom(source:Color4) : Color4;
	/**
	 * Copies the given float values into the current one
	 * @returns the current updated Color4 object
	 */
	function copyFromFloats(r:Float, g:Float, b:Float, a:Float) : Color4;
	/**
	 * Copies the given float values into the current one
	 * @returns the current updated Color4 object
	 */
	function set(r:Float, g:Float, b:Float, a:Float) : Color4;
	/**
	 * Compute the Color4 hexadecimal code as a string
	 * @returns a string containing the hexadecimal representation of the Color4 object
	 */
	function toHexString() : String;
	/**
	 * Computes a new Color4 converted from the current one to linear space
	 * @returns a new Color4 object
	 */
	function toLinearSpace() : Color4;
	/**
	 * Converts the Color4 values to linear space and stores the result in "convertedColor"
	 * @returns the unmodified Color4
	 */
	function toLinearSpaceToRef(convertedColor:Color4) : Color4;
	/**
	 * Computes a new Color4 converted from the current one to gamma space
	 * @returns a new Color4 object
	 */
	function toGammaSpace() : Color4;
	/**
	 * Converts the Color4 values to gamma space and stores the result in "convertedColor"
	 * @returns the unmodified Color4
	 */
	function toGammaSpaceToRef(convertedColor:Color4) : Color4;
	/**
	 * Creates a new Color4 from the string containing valid hexadecimal values
	 * @returns a new Color4 object
	 */
	static function FromHexString(hex:String) : Color4;
	/**
	 * Creates a new Color4 object set with the linearly interpolated values of "amount" between the left Color4 object and the right Color4 object
	 * @returns a new Color4 object
	 */
	static function Lerp(left:Color4, right:Color4, amount:Float) : Color4;
	/**
	 * Set the given "result" with the linearly interpolated values of "amount" between the left Color4 object and the right Color4 object
	 */
	static function LerpToRef(left:Color4, right:Color4, amount:Float, result:Color4) : Void;
	/**
	 * Creates a new Color4 from the starting index element of the given array
	 * @returns a new Color4 object
	 */
	static function FromArray(array:ArrayLike<Float>, ?offset:Float) : Color4;
	/**
	 * Creates a new Color3 from integer values (< 256)
	 * @returns a new Color3 object
	 */
	static function FromInts(r:Float, g:Float, b:Float, a:Float) : Color4;
	/**
	 * Check the content of a given array and convert it to an array containing RGBA data
	 * If the original array was already containing count * 4 values then it is returned directly
	 * @returns an array containing count * 4 values (RGBA)
	 */
	static function CheckColors4(colors:Array<Float>, count:Float) : Array<Float>;
}