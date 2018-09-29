package babylonjs;

extern interface ICameraInput<TCamera:Camera>
{
	var camera : Null<TCamera>;
	
	function attachControl(element:js.html.Element, ?noPreventDefault:Bool) : Void;
	function detachControl(element:Null<js.html.Element>) : Void;
	//@:optional function checkInputs() : Void;

	function getClassName() : String;
	function getSimpleName() : String;
}