package babylonjs.babylon;

@:native("BABYLON.SmartArray")
extern class SmartArray<T:Dynamic>
{
	var data : Array<T>;
	var length : Float;
	private var _id : Float;
	private static var _GlobalId : Dynamic;

	function new(capacity:Float) : Void;
	function push(value:T) : Void;
	function forEach(func:T->Void) : Void;
	function sort(compareFn:T->T->Float) : Void;
	function reset() : Void;
	function dispose() : Void;
	function concat(array:Dynamic) : Void;
	function indexOf(value:T) : Float;
	function contains(value:T) : Bool;
}