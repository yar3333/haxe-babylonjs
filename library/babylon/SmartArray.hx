package babylon;

extern class SmartArray<T>
{
	var data : Array<T>;
	var length : Float;
	private var _id : Dynamic/*UNKNOW_TYPE*/;
	private var _duplicateId : Dynamic/*UNKNOW_TYPE*/;
	function new(capacity:Float) : Void;
	function push(value:Dynamic) : Void;
	function pushNoDuplicate(value:Dynamic) : Bool;
	function sort(compareFn:Dynamic) : Void;
	function reset() : Void;
	function concat(array:Dynamic) : Void;
	function concatWithNoDuplicate(array:Dynamic) : Void;
	function indexOf(value:Dynamic) : Float;
	private static var _GlobalId : Dynamic/*UNKNOW_TYPE*/;
}