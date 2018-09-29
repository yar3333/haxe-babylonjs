package babylonjs;

@:native("BABYLON.ArcRotateCameraPointersInput")
extern class ArcRotateCameraPointersInput
	implements ICameraInput<ArcRotateCamera>
{
	var camera : ArcRotateCamera;
	var buttons : Array<Float>;
	var angularSensibilityX : Float;
	var angularSensibilityY : Float;
	var pinchPrecision : Float;
	/**
	 * pinchDeltaPercentage will be used instead of pinchPrecision if different from 0.
	 * It defines the percentage of current camera.radius to use as delta when pinch zoom is used.
	 */
	var pinchDeltaPercentage : Float;
	var panningSensibility : Float;
	var multiTouchPanning : Bool;
	var multiTouchPanAndZoom : Bool;
	private var _isPanClick : Dynamic;
	var pinchInwards : Bool;
	private var _pointerInput : Dynamic;
	private var _observer : Dynamic;
	private var _onMouseMove : Dynamic;
	private var _onGestureStart : Dynamic;
	private var _onGesture : Dynamic;
	private var _MSGestureHandler : Dynamic;
	private var _onLostFocus : Dynamic;
	private var _onContextMenu : Dynamic;

	function attachControl(element:js.html.Element, ?noPreventDefault:Bool) : Void;
	function detachControl(element:Null<js.html.Element>) : Void;
	function getClassName() : String;
	function getSimpleName() : String;
}