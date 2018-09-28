package babylonjs.babylon;

/**
 * Class used to hold a RBG color
 */
@:native("BABYLON.Color3")
extern class Color3
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
	 * Class used to hold a RBG color
	 */
	function new(?r:Float, ?g:Float, ?b:Float) : Void;
	/**
	 * Creates a string with the Color3 current values
	 * @returns the string representation of the Color3 object
	 */
	function toString() : String;
	/**
	 * Returns the string "Color3"
	 * @returns "Color3"
	 */
	function getClassName() : String;
	/**
	 * Compute the Color3 hash code
	 * @returns an unique number that can be used to hash Color3 objects
	 */
	function getHashCode() : Float;
	/**
	 * Stores in the given array from the given starting index the red, green, blue values as successive elements
	 * @returns the current Color3 object
	 */
	function toArray(array:FloatArray, ?index:Float) : Color3;
	/**
	 * Returns a new {BABYLON.Color4} object from the current Color3 and the given alpha
	 * @returns a new {BABYLON.Color4} object
	 */
	function toColor4(?alpha:Float) : Color4;
	/**
	 * Returns a new array populated with 3 numeric elements : red, green and blue values
	 * @returns the new array
	 */
	function asArray() : Array<Float>;
	/**
	 * Returns the luminance value
	 * @returns a float value
	 */
	function toLuminance() : Float;
	/**
	 * Multiply each Color3 rgb values by the given Color3 rgb values in a new Color3 object
	 * @returns the new Color3 object
	 */
	function multiply(otherColor:Color3) : Color3;
	/**
	 * Multiply the rgb values of the Color3 and the given Color3 and stores the result in the object "result"
	 * @returns the current Color3
	 */
	function multiplyToRef(otherColor:Color3, result:Color3) : Color3;
	/**
	 * Determines equality between Color3 objects
	 * @returns true if the rgb values are equal to the given ones
	 */
	function equals(otherColor:Color3) : Bool;
	/**
	 * Determines equality between the current Color3 object and a set of r,b,g values
	 * @returns true if the rgb values are equal to the given ones
	 */
	function equalsFloats(r:Float, g:Float, b:Float) : Bool;
	/**
	 * Multiplies in place each rgb value by scale
	 * @returns the updated Color3
	 */
	function scale(scale:Float) : Color3;
	/**
	 * Multiplies the rgb values by scale and stores the result into "result"
	 * @returns the unmodified current Color3
	 */
	function scaleToRef(scale:Float, result:Color3) : Color3;
	/**
	 * Scale the current Color3 values by a factor and add the result to a given Color3
	 * @returns the unmodified current Color3
	 */
	function scaleAndAddToRef(scale:Float, result:Color3) : Color3;
	/**
	 * Clamps the rgb values by the min and max values and stores the result into "result"
	 * @returns the original Color3
	 */
	function clampToRef(min:haxe.extern.EitherType<Float, {}>, max:haxe.extern.EitherType<Float, {}>, result:Color3) : Color3;
	/**
	 * Creates a new Color3 set with the added values of the current Color3 and of the given one
	 * @returns the new Color3
	 */
	function add(otherColor:Color3) : Color3;
	/**
	 * Stores the result of the addition of the current Color3 and given one rgb values into "result"
	 * @returns the unmodified current Color3
	 */
	function addToRef(otherColor:Color3, result:Color3) : Color3;
	/**
	 * Returns a new Color3 set with the subtracted values of the given one from the current Color3
	 * @returns the new Color3
	 */
	function subtract(otherColor:Color3) : Color3;
	/**
	 * Stores the result of the subtraction of given one from the current Color3 rgb values into "result"
	 * @returns the unmodified current Color3
	 */
	function subtractToRef(otherColor:Color3, result:Color3) : Color3;
	/**
	 * Copy the current object
	 * @returns a new Color3 copied the current one
	 */
	function clone() : Color3;
	/**
	 * Copies the rgb values from the source in the current Color3
	 * @returns the updated Color3 object
	 */
	function copyFrom(source:Color3) : Color3;
	/**
	 * Updates the Color3 rgb values from the given floats
	 * @returns the current Color3 object
	 */
	function copyFromFloats(r:Float, g:Float, b:Float) : Color3;
	/**
	 * Updates the Color3 rgb values from the given floats
	 * @returns the current Color3 object
	 */
	function set(r:Float, g:Float, b:Float) : Color3;
	/**
	 * Compute the Color3 hexadecimal code as a string
	 * @returns a string containing the hexadecimal representation of the Color3 object
	 */
	function toHexString() : String;
	/**
	 * Computes a new Color3 converted from the current one to linear space
	 * @returns a new Color3 object
	 */
	function toLinearSpace() : Color3;
	/**
	 * Converts the Color3 values to linear space and stores the result in "convertedColor"
	 * @returns the unmodified Color3
	 */
	function toLinearSpaceToRef(convertedColor:Color3) : Color3;
	/**
	 * Computes a new Color3 converted from the current one to gamma space
	 * @returns a new Color3 object
	 */
	function toGammaSpace() : Color3;
	/**
	 * Converts the Color3 values to gamma space and stores the result in "convertedColor"
	 * @returns the unmodified Color3
	 */
	function toGammaSpaceToRef(convertedColor:Color3) : Color3;
	/**
	 * Creates a new Color3 from the string containing valid hexadecimal values
	 * @returns a new Color3 object
	 */
	static function FromHexString(hex:String) : Color3;
	/**
	 * Creates a new Vector3 from the starting index of the given array
	 * @returns a new Color3 object
	 */
	static function FromArray(array:ArrayLike<Float>, ?offset:Float) : Color3;
	/**
	 * Creates a new Color3 from integer values (< 256)
	 * @returns a new Color3 object
	 */
	static function FromInts(r:Float, g:Float, b:Float) : Color3;
	/**
	 * Creates a new Color3 with values linearly interpolated of "amount" between the start Color3 and the end Color3
	 * @returns a new Color3 object
	 */
	static function Lerp(start:Color3, end:Color3, amount:Float) : Color3;
	/**
	 * Returns a Color3 value containing a red color
	 * @returns a new Color3 object
	 */
	static function Red() : Color3;
	/**
	 * Returns a Color3 value containing a green color
	 * @returns a new Color3 object
	 */
	static function Green() : Color3;
	/**
	 * Returns a Color3 value containing a blue color
	 * @returns a new Color3 object
	 */
	static function Blue() : Color3;
	/**
	 * Returns a Color3 value containing a black color
	 * @returns a new Color3 object
	 */
	static function Black() : Color3;
	/**
	 * Returns a Color3 value containing a white color
	 * @returns a new Color3 object
	 */
	static function White() : Color3;
	/**
	 * Returns a Color3 value containing a purple color
	 * @returns a new Color3 object
	 */
	static function Purple() : Color3;
	/**
	 * Returns a Color3 value containing a magenta color
	 * @returns a new Color3 object
	 */
	static function Magenta() : Color3;
	/**
	 * Returns a Color3 value containing a yellow color
	 * @returns a new Color3 object
	 */
	static function Yellow() : Color3;
	/**
	 * Returns a Color3 value containing a gray color
	 * @returns a new Color3 object
	 */
	static function Gray() : Color3;
	/**
	 * Returns a Color3 value containing a teal color
	 * @returns a new Color3 object
	 */
	static function Teal() : Color3;
	/**
	 * Returns a Color3 value containing a random color
	 * @returns a new Color3 object
	 */
	static function Random() : Color3;
}