package babylonjs.babylon;

extern interface ICollisionCoordinator
{
	function getNewPosition(position:Vector3, displacement:Vector3, collider:Collider, maximumRetry:Float, excludedMesh:Null<AbstractMesh>, onNewPosition:Float->Vector3->Null<AbstractMesh>->Void, collisionIndex:Float) : Void;
	function init(scene:Scene) : Void;
	function destroy() : Void;
	function onMeshAdded(mesh:AbstractMesh) : Void;
	function onMeshUpdated(mesh:AbstractMesh) : Void;
	function onMeshRemoved(mesh:AbstractMesh) : Void;
	function onGeometryAdded(geometry:Geometry) : Void;
	function onGeometryUpdated(geometry:Geometry) : Void;
	function onGeometryDeleted(geometry:Geometry) : Void;
}