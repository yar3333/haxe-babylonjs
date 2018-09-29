package babylonjs;

@:native("BABYLON.CollisionCoordinatorWorker")
extern class CollisionCoordinatorWorker
	implements ICollisionCoordinator
{
	private var _scene : Dynamic;
	private var _scaledPosition : Dynamic;
	private var _scaledVelocity : Dynamic;
	private var _collisionsCallbackArray : Dynamic;
	private var _init : Dynamic;
	private var _runningUpdated : Dynamic;
	private var _worker : Dynamic;
	private var _addUpdateMeshesList : Dynamic;
	private var _addUpdateGeometriesList : Dynamic;
	private var _toRemoveMeshesArray : Dynamic;
	private var _toRemoveGeometryArray : Dynamic;
	static var SerializeMesh : AbstractMesh->SerializedMesh;
	static var SerializeGeometry : Geometry->SerializedGeometry;
	var onMeshUpdated : TransformNode->Void;
	var onGeometryUpdated : Geometry->Void;
	private var _afterRender : Dynamic;
	private var _onMessageFromWorker : Dynamic;

	function new() : Void;
	@:overload(function(position:Vector3, displacement:Vector3, collider:Collider, maximumRetry:Float, excludedMesh:AbstractMesh, onNewPosition:Float->Vector3->Null<AbstractMesh>->Void, collisionIndex:Float): Void{})
	function getNewPosition(position:Vector3, displacement:Vector3, collider:Collider, maximumRetry:Float, excludedMesh:Null<AbstractMesh>, onNewPosition:Float->Vector3->Null<AbstractMesh>->Void, collisionIndex:Float) : Void;
	function init(scene:Scene) : Void;
	function destroy() : Void;
	function onMeshAdded(mesh:AbstractMesh) : Void;
	function onMeshRemoved(mesh:AbstractMesh) : Void;
	function onGeometryAdded(geometry:Geometry) : Void;
	function onGeometryDeleted(geometry:Geometry) : Void;
}