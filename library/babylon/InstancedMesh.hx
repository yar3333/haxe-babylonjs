package babylon;

extern class InstancedMesh extends AbstractMesh
{
	private var _sourceMesh : Dynamic/*UNKNOW_TYPE*/;
	private var _currentLOD : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, source:Mesh) : Void;
	var receiveShadows : Bool;
	var material : Material;
	var visibility : Float;
	var skeleton : Skeleton;
	var renderingGroupId : Float;
	function getTotalVertices() : Float;
	var sourceMesh : Mesh;
	function getVerticesData(kind:String, ?copyWhenShared:Bool) : haxe.extern.EitherType<Array<Float>, Float32Array>;
	function isVerticesDataPresent(kind:String) : Bool;
	function getIndices() : haxe.extern.EitherType<Array<Float>, Int32Array>;
	var _positions : Array<Vector3>;
	function refreshBoundingInfo() : Void;
	function _preActivate() : Void;
	function _activate(renderId:Float) : Void;
	function getLOD(camera:Camera) : AbstractMesh;
	function _syncSubMeshes() : Void;
	function _generatePointsArray() : Bool;
	function clone(name:String, newParent:Node, ?doNotCloneChildren:Bool) : InstancedMesh;
	function dispose(?doNotRecurse:Bool) : Void;
}