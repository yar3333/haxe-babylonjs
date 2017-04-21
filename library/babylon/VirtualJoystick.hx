package babylon;

extern class VirtualJoystick
{
	var reverseLeftRight : Bool;
	var reverseUpDown : Bool;
	var deltaPosition : Vector3;
	var pressed : Bool;
	private static var _globalJoystickIndex : Dynamic/*UNKNOW_TYPE*/;
	private static var vjCanvas : Dynamic/*UNKNOW_TYPE*/;
	private static var vjCanvasContext : Dynamic/*UNKNOW_TYPE*/;
	private static var vjCanvasWidth : Dynamic/*UNKNOW_TYPE*/;
	private static var vjCanvasHeight : Dynamic/*UNKNOW_TYPE*/;
	private static var halfWidth : Dynamic/*UNKNOW_TYPE*/;
	private static var halfHeight : Dynamic/*UNKNOW_TYPE*/;
	private var _action : Dynamic/*UNKNOW_TYPE*/;
	private var _axisTargetedByLeftAndRight : Dynamic/*UNKNOW_TYPE*/;
	private var _axisTargetedByUpAndDown : Dynamic/*UNKNOW_TYPE*/;
	private var _joystickSensibility : Dynamic/*UNKNOW_TYPE*/;
	private var _inversedSensibility : Dynamic/*UNKNOW_TYPE*/;
	private var _rotationSpeed : Dynamic/*UNKNOW_TYPE*/;
	private var _inverseRotationSpeed : Dynamic/*UNKNOW_TYPE*/;
	private var _rotateOnAxisRelativeToMesh : Dynamic/*UNKNOW_TYPE*/;
	private var _joystickPointerID : Dynamic/*UNKNOW_TYPE*/;
	private var _joystickColor : Dynamic/*UNKNOW_TYPE*/;
	private var _joystickPointerPos : Dynamic/*UNKNOW_TYPE*/;
	private var _joystickPreviousPointerPos : Dynamic/*UNKNOW_TYPE*/;
	private var _joystickPointerStartPos : Dynamic/*UNKNOW_TYPE*/;
	private var _deltaJoystickVector : Dynamic/*UNKNOW_TYPE*/;
	private var _leftJoystick : Dynamic/*UNKNOW_TYPE*/;
	private var _joystickIndex : Dynamic/*UNKNOW_TYPE*/;
	private var _touches : Dynamic/*UNKNOW_TYPE*/;
	private var _onPointerDownHandlerRef : Dynamic/*UNKNOW_TYPE*/;
	private var _onPointerMoveHandlerRef : Dynamic/*UNKNOW_TYPE*/;
	private var _onPointerUpHandlerRef : Dynamic/*UNKNOW_TYPE*/;
	private var _onPointerOutHandlerRef : Dynamic/*UNKNOW_TYPE*/;
	private var _onResize : Dynamic/*UNKNOW_TYPE*/;
	function new(?leftJoystick:Bool) : Void;
	function setJoystickSensibility(newJoystickSensibility:Float) : Void;
	private function _onPointerDown(e);
	private function _onPointerMove(e);
	private function _onPointerUp(e);
	/**
	* Change the color of the virtual joystick
	* @param newColor a string that must be a CSS color value (like "red") or the hexa value (like "#FF0000")
	*/
	function setJoystickColor(newColor:String) : Void;
	function setActionOnTouch(action:Void->Dynamic) : Void;
	function setAxisForLeftRight(axis:JoystickAxis) : Void;
	function setAxisForUpDown(axis:JoystickAxis) : Void;
	private function _clearCanvas();
	private function _drawVirtualJoystick();
	function releaseCanvas() : Void;
}