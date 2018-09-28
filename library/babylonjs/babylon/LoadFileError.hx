package babylonjs.babylon;

@:native("BABYLON.LoadFileError")
extern class LoadFileError extends js.Error
{
	var request : haxe.extern.EitherType<js.html.XMLHttpRequest, {}>;
	private static var _setPrototypeOf : Dynamic;

	function new(message:String, ?request:haxe.extern.EitherType<js.html.XMLHttpRequest, {}>) : Void;
}