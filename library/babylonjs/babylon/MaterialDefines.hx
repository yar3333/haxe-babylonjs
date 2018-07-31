package babylon;

extern class MaterialDefines
{
	var _keys : Array<String>;
	function rebuild() : Void;
	function isEqual(other:MaterialDefines) : Bool;
	function cloneTo(other:MaterialDefines) : Void;
	function reset() : Void;
	function toString() : String;
}