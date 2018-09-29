package babylonjs;

@:native("BABYLON.CameraInputsManager")
extern class CameraInputsManager<TCamera:Camera>
{
	var attached : CameraInputsMap<TCamera>;
	var attachedElement : Null<js.html.Element>;
	var noPreventDefault : Bool;
	var camera : TCamera;
	var checkInputs : Void->Void;

	function new(camera:TCamera) : Void;
	/**
	 * Add an input method to a camera.
	 * builtin inputs example: camera.inputs.addGamepad();
	 * custom inputs example: camera.inputs.add(new BABYLON.FreeCameraGamepadInput());
	 */
	function add(input:ICameraInput<TCamera>) : Void;
	/**
	 * Remove a specific input method from a camera
	 * example: camera.inputs.remove(camera.inputs.attached.mouse);
	 */
	function remove(inputToRemove:ICameraInput<TCamera>) : Void;
	function removeByType(inputType:String) : Void;
	private function _addCheckInputs(fn:Dynamic) : Dynamic;
	function attachInput(input:ICameraInput<TCamera>) : Void;
	function attachElement(element:js.html.Element, ?noPreventDefault:Bool) : Void;
	function detachElement(element:js.html.Element, ?disconnect:Bool) : Void;
	function rebuildInputCheck() : Void;
	/**
	 * Remove all attached input methods from a camera
	 */
	function clear() : Void;
	function serialize(serializedCamera:Dynamic) : Void;
	function parse(parsedCamera:Dynamic) : Void;
}