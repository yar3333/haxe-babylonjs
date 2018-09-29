package babylonjs;

@:native("BABYLON.ArcRotateCameraMouseWheelInput")
extern class ArcRotateCameraMouseWheelInput
	implements ICameraInput<ArcRotateCamera>
{
	var camera : ArcRotateCamera;
	private var _wheel : Dynamic;
	private var _observer : Dynamic;
	var wheelPrecision : Float;
	/**
	 * wheelDeltaPercentage will be used instead of wheelPrecision if different from 0.
	 * It defines the percentage of current camera.radius to use as delta when wheel is used.
	 */
	var wheelDeltaPercentage : Float;

	function attachControl(element:js.html.Element, ?noPreventDefault:Bool) : Void;
	function detachControl(element:Null<js.html.Element>) : Void;
	function getClassName() : String;
	function getSimpleName() : String;
}