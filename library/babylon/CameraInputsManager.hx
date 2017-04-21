package babylon;

extern class CameraInputsManager<TCamera:BABYLON.Camera>
{
	var attached : CameraInputsMap<TCamera>;
	var attachedElement : HtmlElement;
	var noPreventDefault : Bool;
	var camera : TCamera;
	var checkInputs : Void->Void;
	function new(camera:TCamera) : Void;
	function add(input:ICameraInput<TCamera>) : Void;
	function remove(inputToRemove:ICameraInput<TCamera>) : Void;
	function removeByType(inputType:String) : Void;
	private function _addCheckInputs(fn);
	function attachInput(input:ICameraInput<TCamera>) : Void;
	function attachElement(element:HtmlElement, ?noPreventDefault:Bool) : Void;
	function detachElement(element:HtmlElement) : Void;
	function rebuildInputCheck() : Void;
	function clear() : Void;
	function serialize(serializedCamera:Dynamic) : Void;
	function parse(parsedCamera:Dynamic) : Void;
}