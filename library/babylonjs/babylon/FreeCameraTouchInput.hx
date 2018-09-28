package babylonjs.babylon;

@:native("BABYLON.FreeCameraTouchInput")
extern class FreeCameraTouchInput
	implements ICameraInput<FreeCamera>
{
	var camera : FreeCamera;
	private var _offsetX : Dynamic;
	private var _offsetY : Dynamic;
	private var _pointerPressed : Dynamic;
	private var _pointerInput : Dynamic;
	private var _observer : Dynamic;
	private var _onLostFocus : Dynamic;
	var touchAngularSensibility : Float;
	var touchMoveSensibility : Float;

	function attachControl(element:js.html.Element, ?noPreventDefault:Bool) : Void;
	function detachControl(element:Null<js.html.Element>) : Void;
	function checkInputs() : Void;
	function getClassName() : String;
	function getSimpleName() : String;
}