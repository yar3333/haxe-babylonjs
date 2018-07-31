package babylon;

extern class FreeCameraKeyboardMoveInput implements ICameraInput<FreeCamera>
{
	var camera : FreeCamera;
	private var _keys : Dynamic/*UNKNOW_TYPE*/;
	private var _onKeyDown : Dynamic/*UNKNOW_TYPE*/;
	private var _onKeyUp : Dynamic/*UNKNOW_TYPE*/;
	var keysUp : Array<Float>;
	var keysDown : Array<Float>;
	var keysLeft : Array<Float>;
	var keysRight : Array<Float>;
	function attachControl(element:HtmlElement, ?noPreventDefault:Bool) : Void;
	function detachControl(element:HtmlElement) : Void;
	function checkInputs() : Void;
	function getTypeName() : String;
	function _onLostFocus(e:FocusEvent) : Void;
	function getSimpleName() : String;
}