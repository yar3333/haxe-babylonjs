package babylonjs;

extern interface IGetSetVerticesData
{
	function isVerticesDataPresent(kind:String) : Bool;
	function getVerticesData(kind:String, ?copyWhenShared:Bool, ?forceCopy:Bool) : Null<FloatArray>;
	function getIndices(?copyWhenShared:Bool) : Null<IndicesArray>;
	function setVerticesData(kind:String, data:FloatArray, updatable:Bool) : Void;
	function updateVerticesData(kind:String, data:FloatArray, ?updateExtends:Bool, ?makeItUnique:Bool) : Void;
	function setIndices(indices:IndicesArray, totalVertices:Null<Float>, ?updatable:Bool) : Void;
}