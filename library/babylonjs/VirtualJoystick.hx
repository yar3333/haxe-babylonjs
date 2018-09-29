package babylonjs;

/**
 * Class used to define virtual joystick (used in touch mode)
 */
@:native("BABYLON.VirtualJoystick")
extern class VirtualJoystick
{
	/**
	 * Gets or sets a boolean indicating that left and right values must be inverted
	 */
	var reverseLeftRight : Bool;
	/**
	 * Gets or sets a boolean indicating that up and down values must be inverted
	 */
	var reverseUpDown : Bool;
	/**
	 * Gets the offset value for the position (ie. the change of the position value)
	 */
	var deltaPosition : Vector3;
	/**
	 * Gets a boolean indicating if the virtual joystick was pressed
	 */
	var pressed : Bool;
	private static var _globalJoystickIndex : Dynamic;
	private static var vjCanvas : Dynamic;
	private static var vjCanvasContext : Dynamic;
	private static var vjCanvasWidth : Dynamic;
	private static var vjCanvasHeight : Dynamic;
	private static var halfWidth : Dynamic;
	private var _action : Dynamic;
	private var _axisTargetedByLeftAndRight : Dynamic;
	private var _axisTargetedByUpAndDown : Dynamic;
	private var _joystickSensibility : Dynamic;
	private var _inversedSensibility : Dynamic;
	private var _joystickPointerID : Dynamic;
	private var _joystickColor : Dynamic;
	private var _joystickPointerPos : Dynamic;
	private var _joystickPreviousPointerPos : Dynamic;
	private var _joystickPointerStartPos : Dynamic;
	private var _deltaJoystickVector : Dynamic;
	private var _leftJoystick : Dynamic;
	private var _touches : Dynamic;
	private var _onPointerDownHandlerRef : Dynamic;
	private var _onPointerMoveHandlerRef : Dynamic;
	private var _onPointerUpHandlerRef : Dynamic;
	private var _onResize : Dynamic;

	/**
	 * Class used to define virtual joystick (used in touch mode)
	 */
	function new(?leftJoystick:Bool) : Void;
	/**
	 * Defines joystick sensibility (ie. the ratio beteen a physical move and virtual joystick position change)
	 */
	function setJoystickSensibility(newJoystickSensibility:Float) : Void;
	private function _onPointerDown(e:Dynamic) : Dynamic;
	private function _onPointerMove(e:Dynamic) : Dynamic;
	private function _onPointerUp(e:Dynamic) : Dynamic;
	/**
	 * Change the color of the virtual joystick
	 */
	function setJoystickColor(newColor:String) : Void;
	/**
	 * Defines a callback to call when the joystick is touched
	 */
	function setActionOnTouch(action:Void->Dynamic) : Void;
	/**
	 * Defines which axis you'd like to control for left & right
	 */
	function setAxisForLeftRight(axis:JoystickAxis) : Void;
	/**
	 * Defines which axis you'd like to control for up & down
	 */
	function setAxisForUpDown(axis:JoystickAxis) : Void;
	private function _drawVirtualJoystick() : Dynamic;
	/**
	 * Release internal HTML canvas
	 */
	function releaseCanvas() : Void;
}