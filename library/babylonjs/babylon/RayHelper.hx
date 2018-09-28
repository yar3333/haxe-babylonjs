package babylonjs.babylon;

@:native("BABYLON.RayHelper")
extern class RayHelper
{
	var ray : Null<Ray>;
	private var _renderPoints : Dynamic;
	private var _renderLine : Dynamic;
	private var _renderFunction : Dynamic;
	private var _scene : Dynamic;
	private var _updateToMeshFunction : Dynamic;
	private var _attachedToMesh : Dynamic;
	private var _meshSpaceDirection : Dynamic;
	private var _meshSpaceOrigin : Dynamic;

	static function CreateAndShow(ray:Ray, scene:Scene, color:Color3) : RayHelper;
	function new(ray:Ray) : Void;
	function show(scene:Scene, color:Color3) : Void;
	function hide() : Void;
	private function _render() : Dynamic;
	function attachToMesh(mesh:AbstractMesh, ?meshSpaceDirection:Vector3, ?meshSpaceOrigin:Vector3, ?length:Float) : Void;
	function detachFromMesh() : Void;
	private function _updateToMesh() : Dynamic;
	function dispose() : Void;
}