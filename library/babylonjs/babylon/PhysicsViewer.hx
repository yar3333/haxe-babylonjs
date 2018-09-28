package babylonjs.babylon;

/**
 * Used to show the physics impostor around the specific mesh.
 */
@:native("BABYLON.PhysicsViewer")
extern class PhysicsViewer
{
	private var _impostors : Array<Null<PhysicsImpostor>>;
	private var _meshes : Array<Null<AbstractMesh>>;
	private var _scene : Null<Scene>;
	private var _numMeshes : Float;
	private var _physicsEnginePlugin : Null<IPhysicsEnginePlugin>;
	private var _renderFunction : Dynamic;
	private var _debugBoxMesh : Dynamic;
	private var _debugSphereMesh : Dynamic;
	private var _debugMaterial : Dynamic;

	/**
	 * Used to show the physics impostor around the specific mesh.
	 */
	function new(scene:Scene) : Void;
	function _updateDebugMeshes() : Void;
	function showImpostor(impostor:PhysicsImpostor) : Void;
	function hideImpostor(impostor:Null<PhysicsImpostor>) : Void;
	private function _getDebugMaterial(scene:Dynamic) : Dynamic;
	private function _getDebugBoxMesh(scene:Dynamic) : Dynamic;
	private function _getDebugSphereMesh(scene:Dynamic) : Dynamic;
	private function _getDebugMesh(impostor:Dynamic, scene:Dynamic) : Dynamic;
	function dispose() : Void;
}