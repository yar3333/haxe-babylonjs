package babylonjs.babylon;

@:native("BABYLON.ArcRotateCameraKeyboardMoveInput")
extern class ArcRotateCameraKeyboardMoveInput
	implements ICameraInput<ArcRotateCamera>
{
	var camera : ArcRotateCamera;
	private var _keys : Dynamic;
	var keysUp : Array<Float>;
	var keysDown : Array<Float>;
	var keysLeft : Array<Float>;
	var keysRight : Array<Float>;
	var keysReset : Array<Float>;
	var panningSensibility : Float;
	var zoomingSensibility : Float;
	var useAltToZoom : Bool;
	private var _ctrlPressed : Dynamic;
	private var _altPressed : Dynamic;
	private var _onCanvasBlurObserver : Dynamic;
	private var _onKeyboardObserver : Dynamic;
	private var _engine : Dynamic;
	private var _scene : Dynamic;

	function attachControl(element:js.html.Element, ?noPreventDefault:Bool) : Void;
	function detachControl(element:Null<js.html.Element>) : Void;
	function checkInputs() : Void;
	function getClassName() : String;
	function getSimpleName() : String;
}