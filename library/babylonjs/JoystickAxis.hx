package babylonjs;

/**
 * Defines the potential axis of a Joystick
 */
@:native("BABYLON.JoystickAxis")
@:enum abstract JoystickAxis(Dynamic)
{
	/**
	 * X axis 
	 */
	var X = 0;
	/**
	 * Y axis 
	 */
	var Y = 1;
	/**
	 * Z axis 
	 */
	var Z = 2;
}