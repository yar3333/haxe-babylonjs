package babylonjs;

@:native("BABYLON.SmartArrayNoDuplicate")
extern class SmartArrayNoDuplicate<T:Dynamic> extends SmartArray<T>
{
	private var _duplicateId : Dynamic;

	//function push(value:T) : Void;
	function pushNoDuplicate(value:T) : Bool;
	//function reset() : Void;
	function concatWithNoDuplicate(array:Dynamic) : Void;
}