package babylon;

extern interface IGetSetVerticesData
{
	function isVerticesDataPresent(kind:String) : Bool;
	function getVerticesData(kind:String, ?copyWhenShared:Bool) : haxe.extern.EitherType<haxe.extern.EitherType<Array<Float>, Int32Array >, Float32Array>;
	function getIndices(?copyWhenShared:Bool) : haxe.extern.EitherType<Array<Float>, Int32Array>;
	function setVerticesData(kind:String, data:haxe.extern.EitherType<Array<Float>, Float32Array>, ?updatable:Bool) : Void;
	function updateVerticesData(kind:String, data:haxe.extern.EitherType<Array<Float>, Float32Array>, ?updateExtends:Bool, ?makeItUnique:Bool) : Void;
	function setIndices(indices:haxe.extern.EitherType<Array<Float>, Int32Array>) : Void;
}