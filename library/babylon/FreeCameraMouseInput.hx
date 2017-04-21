package babylon;

extern class FreeCameraMouseInput implements ICameraInput<FreeCamera>
{
	var touchEnabled : Bool;
	var camera : FreeCamera;
	var buttons : Array<Float>;
	var angularSensibility : Float;
	private var _pointerInput : Dynamic/*UNKNOW_TYPE*/;
	private var _onMouseMove : Dynamic/*UNKNOW_TYPE*/;
	private var _observer : Dynamic/*UNKNOW_TYPE*/;
	private var previousPosition : Dynamic/*UNKNOW_TYPE*/;
	function new(?touchEnabled:Bool) : Void;
	function attachControl(element:HtmlElement, ?noPreventDefault:Bool) : Void;
	function detachControl(element:HtmlElement) : Void;
	function getTypeName() : String;
	function getSimpleName() : String;
}