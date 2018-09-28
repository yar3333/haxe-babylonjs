package babylonjs.babylon;

@:native("BABYLON.CollisionCoordinatorLegacy")
extern class CollisionCoordinatorLegacy
	implements ICollisionCoordinator
{
	private var _scene : Dynamic;
	private var _scaledPosition : Dynamic;
	private var _scaledVelocity : Dynamic;
	private var _finalPosition : Dynamic;

	@:overload(function(position:Vector3, displacement:Vector3, collider:Collider, maximumRetry:Float, excludedMesh:AbstractMesh, onNewPosition:Float->Vector3->Null<AbstractMesh>->Void, collisionIndex:Float): Void{})
	function getNewPosition(position:Vector3, displacement:Vector3, collider:Collider, maximumRetry:Float, excludedMesh:Null<AbstractMesh>, onNewPosition:Float->Vector3->Null<AbstractMesh>->Void, collisionIndex:Float) : Void;
	function init(scene:Scene) : Void;
	function destroy() : Void;
	function onMeshAdded(mesh:AbstractMesh) : Void;
	function onMeshUpdated(mesh:AbstractMesh) : Void;
	function onMeshRemoved(mesh:AbstractMesh) : Void;
	function onGeometryAdded(geometry:Geometry) : Void;
	function onGeometryUpdated(geometry:Geometry) : Void;
	function onGeometryDeleted(geometry:Geometry) : Void;
	private function _collideWithWorld(position:Dynamic, velocity:Dynamic, collider:Dynamic, maximumRetry:Dynamic, finalPosition:Dynamic, ?excludedMesh:Dynamic) : Dynamic;
}