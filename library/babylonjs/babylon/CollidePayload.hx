package babylon;

extern interface CollidePayload
{
	var collisionId : Float;
	var collider : SerializedColliderToWorker;
	var maximumRetry : Float;
	@:optional var excludedMeshUniqueId : Float;
}