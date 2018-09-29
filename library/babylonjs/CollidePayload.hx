package babylonjs;

extern interface CollidePayload
{
	var collisionId : Float;
	var collider : SerializedColliderToWorker;
	var maximumRetry : Float;
	var excludedMeshUniqueId : Null<Float>;
}