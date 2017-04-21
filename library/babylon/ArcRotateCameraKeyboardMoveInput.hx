package babylon;

extern class ArcRotateCameraKeyboardMoveInput implements ICameraInput<ArcRotateCamera>
{
	var camera : ArcRotateCamera;
	private var _keys : Dynamic/*UNKNOW_TYPE*/;
	private var _onKeyDown : Dynamic/*UNKNOW_TYPE*/;
	private var _onKeyUp : Dynamic/*UNKNOW_TYPE*/;
	private var _onLostFocus : Dynamic/*UNKNOW_TYPE*/;
	var keysUp : Array<Float>;
	var keysDown : Array<Float>;
	var keysLeft : Array<Float>;
	var keysRight : Array<Float>;
	function attachControl(element:HtmlElement, ?noPreventDefault:Bool) : Void;
	function detachControl(element:HtmlElement) : Void;
	function checkInputs() : Void;
	function getTypeName() : String;
	function getSimpleName() : String;
}