package babylon;

extern class ArcRotateCameraPointersInput implements ICameraInput<ArcRotateCamera>
{
	var camera : ArcRotateCamera;
	var buttons : Array<Float>;
	var angularSensibilityX : Float;
	var angularSensibilityY : Float;
	var pinchPrecision : Float;
	var panningSensibility : Float;
	private var _isPanClick : Dynamic/*UNKNOW_TYPE*/;
	var pinchInwards : Bool;
	private var _pointerInput : Dynamic/*UNKNOW_TYPE*/;
	private var _observer : Dynamic/*UNKNOW_TYPE*/;
	private var _onKeyDown : Dynamic/*UNKNOW_TYPE*/;
	private var _onKeyUp : Dynamic/*UNKNOW_TYPE*/;
	private var _onMouseMove : Dynamic/*UNKNOW_TYPE*/;
	private var _onGestureStart : Dynamic/*UNKNOW_TYPE*/;
	private var _onGesture : Dynamic/*UNKNOW_TYPE*/;
	private var _MSGestureHandler : Dynamic/*UNKNOW_TYPE*/;
	private var _onLostFocus : Dynamic/*UNKNOW_TYPE*/;
	private var _onContextMenu : Dynamic/*UNKNOW_TYPE*/;
	function attachControl(element:HtmlElement, ?noPreventDefault:Bool) : Void;
	function detachControl(element:HtmlElement) : Void;
	function getTypeName() : String;
	function getSimpleName() : String;
}