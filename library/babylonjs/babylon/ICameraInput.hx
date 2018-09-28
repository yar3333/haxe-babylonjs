package babylonjs.babylon;

extern interface ICameraInput<TCamera:Camera>
{
	var camera : Null<TCamera>;
	var attachControl : js.html.Element->Bool->Void;
	var detachControl : Null<js.html.Element>->Void;
	@:optional var checkInputs : Void->Void;

	function getClassName() : String;
	function getSimpleName() : String;
}