package babylon;

extern interface ICollisionCoordinator
{
	function getNewPosition(position:Vector3, velocity:Vector3, collider:Collider, maximumRetry:Float, excludedMesh:AbstractMesh, onNewPosition: (collisionIndex:Float, newPosition:Vector3, ?collidedMesh:AbstractMesh) => void, collisionIndex:Float) : Void;
	function init(scene:Scene) : Void;
	function destroy() : Void;
	function onMeshAdded(mesh:AbstractMesh) : Dynamic;
	function onMeshUpdated(mesh:AbstractMesh) : Dynamic;
	function onMeshRemoved(mesh:AbstractMesh) : Dynamic;
	function onGeometryAdded(geometry:Geometry) : Dynamic;
	function onGeometryUpdated(geometry:Geometry) : Dynamic;
	function onGeometryDeleted(geometry:Geometry) : Dynamic;
}