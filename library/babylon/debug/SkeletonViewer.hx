package babylon/debug;

extern class SkeletonViewer
{
	var skeleton : Skeleton;
	var mesh : AbstractMesh;
	var autoUpdateBonesMatrices : Bool;
	var renderingGroupId : Float;
	var color : Color3;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _debugLines : Dynamic/*UNKNOW_TYPE*/;
	private var _debugMesh : Dynamic/*UNKNOW_TYPE*/;
	private var _isEnabled : Dynamic/*UNKNOW_TYPE*/;
	private var _renderFunction : Dynamic/*UNKNOW_TYPE*/;
	function new(skeleton:Skeleton, mesh:AbstractMesh, scene:Scene, ?autoUpdateBonesMatrices:Bool, ?renderingGroupId:Float) : Void;
	var isEnabled : Bool;
	private function _getBonePosition(position, bone, meshMat, ?x, y?, ?z);
	private function _getLinesForBonesWithLength(bones, meshMat);
	private function _getLinesForBonesNoLength(bones, meshMat);
	function update() : Void;
	function dispose() : Void;
}