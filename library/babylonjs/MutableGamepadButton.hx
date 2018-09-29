package babylonjs;

extern interface MutableGamepadButton
{
	/**
	 * Value of the button/trigger
	 */
	var value : Float;
	/**
	 * If the button/trigger is currently touched
	 */
	var touched : Bool;
	/**
	 * If the button/trigger is currently pressed
	 */
	var pressed : Bool;
}