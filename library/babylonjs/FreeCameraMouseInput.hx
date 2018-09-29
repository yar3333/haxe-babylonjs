package babylonjs;

@:native("BABYLON.FreeCameraMouseInput")
extern class FreeCameraMouseInput
	implements ICameraInput<FreeCamera>
{
	var touchEnabled : Bool;
	var camera : FreeCamera;
	var buttons : Array<Float>;
	var angularSensibility : Float;
	private var _pointerInput : Dynamic;
	private var _onMouseMove : Dynamic;
	private var _observer : Dynamic;
	private var previousPosition : Dynamic;

	function new(?touchEnabled:Bool) : Void;
	function attachControl(element:js.html.Element, ?noPreventDefault:Bool) : Void;
	function detachControl(element:Null<js.html.Element>) : Void;
	function getClassName() : String;
	function getSimpleName() : String;
}