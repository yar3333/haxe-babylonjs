package babylon;

extern class FreeCameraTouchInput implements ICameraInput<FreeCamera>
{
	var camera : FreeCamera;
	private var _offsetX : Dynamic/*UNKNOW_TYPE*/;
	private var _offsetY : Dynamic/*UNKNOW_TYPE*/;
	private var _pointerCount : Dynamic/*UNKNOW_TYPE*/;
	private var _pointerPressed : Dynamic/*UNKNOW_TYPE*/;
	private var _pointerInput : Dynamic/*UNKNOW_TYPE*/;
	private var _observer : Dynamic/*UNKNOW_TYPE*/;
	private var _onLostFocus : Dynamic/*UNKNOW_TYPE*/;
	var touchAngularSensibility : Float;
	var touchMoveSensibility : Float;
	function attachControl(element:HtmlElement, ?noPreventDefault:Bool) : Void;
	function detachControl(element:HtmlElement) : Void;
	function checkInputs() : Void;
	function getTypeName() : String;
	function getSimpleName() : String;
}