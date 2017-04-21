package babylon;

extern class CollisionCoordinatorLegacy implements ICollisionCoordinator
{
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _scaledPosition : Dynamic/*UNKNOW_TYPE*/;
	private var _scaledVelocity : Dynamic/*UNKNOW_TYPE*/;
	private var _finalPosition : Dynamic/*UNKNOW_TYPE*/;
	function getNewPosition(position:Vector3, velocity:Vector3, collider:Collider, maximumRetry:Float, excludedMesh:AbstractMesh, onNewPosition: (collisionIndex:Float, newPosition:Vector3, ?collidedMesh:AbstractMesh) => void, collisionIndex:Float) : Void;
	function init(scene:Scene) : Void;
	function destroy() : Void;
	function onMeshAdded(mesh:AbstractMesh) : Void;
	function onMeshUpdated(mesh:AbstractMesh) : Void;
	function onMeshRemoved(mesh:AbstractMesh) : Void;
	function onGeometryAdded(geometry:Geometry) : Void;
	function onGeometryUpdated(geometry:Geometry) : Void;
	function onGeometryDeleted(geometry:Geometry) : Void;
	private function _collideWithWorld(position, velocity, collider, maximumRetry, finalPosition, ?excludedMesh);
}