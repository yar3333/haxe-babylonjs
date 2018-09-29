package babylonjs;

@:native("BABYLON.CollisionDetectorTransferable")
extern class CollisionDetectorTransferable
	implements ICollisionDetector
{
	private var _collisionCache : Dynamic;

	function onInit(payload:InitPayload) : Void;
	function onUpdate(payload:UpdatePayload) : Void;
	function onCollision(payload:CollidePayload) : Void;
}