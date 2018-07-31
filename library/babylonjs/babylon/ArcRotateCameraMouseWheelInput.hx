package babylon;

extern class ArcRotateCameraMouseWheelInput implements ICameraInput<ArcRotateCamera>
{
	var camera : ArcRotateCamera;
	private var _wheel : Dynamic/*UNKNOW_TYPE*/;
	private var _observer : Dynamic/*UNKNOW_TYPE*/;
	var wheelPrecision : Float;
	function attachControl(element:HtmlElement, ?noPreventDefault:Bool) : Void;
	function detachControl(element:HtmlElement) : Void;
	function getTypeName() : String;
	function getSimpleName() : String;
}