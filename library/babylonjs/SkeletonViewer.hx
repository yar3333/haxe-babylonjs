package babylonjs;

/**
 * Demo available here: http://www.babylonjs-playground.com/#1BZJVJ#8
 */
@:native("BABYLON.SkeletonViewer")
extern class SkeletonViewer
{
	var skeleton : Skeleton;
	var mesh : AbstractMesh;
	var autoUpdateBonesMatrices : Bool;
	var renderingGroupId : Float;
	var color : Color3;
	private var _scene : Dynamic;
	private var _debugLines : Dynamic;
	private var _debugMesh : Dynamic;
	private var _isEnabled : Dynamic;
	private var _renderFunction : Dynamic;
	var isEnabled : Bool;

	/**
	 * Demo available here: http://www.babylonjs-playground.com/#1BZJVJ#8
	 */
	function new(skeleton:Skeleton, mesh:AbstractMesh, scene:Scene, ?autoUpdateBonesMatrices:Bool, ?renderingGroupId:Float) : Void;
	private function _getBonePosition(position:Dynamic, bone:Dynamic, meshMat:Dynamic, ?x:Dynamic, ?y:Dynamic, ?z:Dynamic) : Dynamic;
	private function _getLinesForBonesWithLength(bones:Dynamic, meshMat:Dynamic) : Dynamic;
	private function _getLinesForBonesNoLength(bones:Dynamic, meshMat:Dynamic) : Dynamic;
	function update() : Void;
	function dispose() : Void;
}