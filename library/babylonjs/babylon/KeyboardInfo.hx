package babylonjs.babylon;

@:native("BABYLON.KeyboardInfo")
extern class KeyboardInfo
{
	var type : Float;
	var event : js.html.KeyboardEvent;

	function new(type:Float, event:js.html.KeyboardEvent) : Void;
}