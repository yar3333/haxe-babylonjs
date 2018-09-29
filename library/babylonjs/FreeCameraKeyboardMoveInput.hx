package babylonjs;

@:native("BABYLON.FreeCameraKeyboardMoveInput")
extern class FreeCameraKeyboardMoveInput
	implements ICameraInput<FreeCamera>
{
	var camera : FreeCamera;
	private var _keys : Dynamic;
	private var _onCanvasBlurObserver : Dynamic;
	private var _onKeyboardObserver : Dynamic;
	private var _engine : Dynamic;
	private var _scene : Dynamic;
	var keysUp : Array<Float>;
	var keysDown : Array<Float>;
	var keysLeft : Array<Float>;
	var keysRight : Array<Float>;

	function attachControl(element:js.html.Element, ?noPreventDefault:Bool) : Void;
	function detachControl(element:Null<js.html.Element>) : Void;
	function checkInputs() : Void;
	function getClassName() : String;
	function _onLostFocus(e:js.html.FocusEvent) : Void;
	function getSimpleName() : String;
}