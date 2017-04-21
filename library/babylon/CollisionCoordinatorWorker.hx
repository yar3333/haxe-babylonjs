package babylon;

extern class CollisionCoordinatorWorker implements ICollisionCoordinator
{
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _scaledPosition : Dynamic/*UNKNOW_TYPE*/;
	private var _scaledVelocity : Dynamic/*UNKNOW_TYPE*/;
	private var _collisionsCallbackArray : Dynamic/*UNKNOW_TYPE*/;
	private var _init : Dynamic/*UNKNOW_TYPE*/;
	private var _runningUpdated : Dynamic/*UNKNOW_TYPE*/;
	private var _runningCollisionTask : Dynamic/*UNKNOW_TYPE*/;
	private var _worker : Dynamic/*UNKNOW_TYPE*/;
	private var _addUpdateMeshesList : Dynamic/*UNKNOW_TYPE*/;
	private var _addUpdateGeometriesList : Dynamic/*UNKNOW_TYPE*/;
	private var _toRemoveMeshesArray : Dynamic/*UNKNOW_TYPE*/;
	private var _toRemoveGeometryArray : Dynamic/*UNKNOW_TYPE*/;
	function new() : Void;
	static var SerializeMesh : AbstractMesh->SerializedMesh;
	static var SerializeGeometry : Geometry->SerializedGeometry;
	function getNewPosition(position:Vector3, velocity:Vector3, collider:Collider, maximumRetry:Float, excludedMesh:AbstractMesh, onNewPosition: (collisionIndex:Float, newPosition:Vector3, ?collidedMesh:AbstractMesh) => void, collisionIndex:Float) : Void;
	function init(scene:Scene) : Void;
	function destroy() : Void;
	function onMeshAdded(mesh:AbstractMesh) : Void;
	var onMeshUpdated : AbstractMesh->Void;
	function onMeshRemoved(mesh:AbstractMesh) : Void;
	function onGeometryAdded(geometry:Geometry) : Void;
	var onGeometryUpdated : Geometry->Void;
	function onGeometryDeleted(geometry:Geometry) : Void;
	private var _afterRender : Dynamic/*UNKNOW_TYPE*/;
	private var _onMessageFromWorker : Dynamic/*UNKNOW_TYPE*/;
}