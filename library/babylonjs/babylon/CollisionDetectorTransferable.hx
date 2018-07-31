package babylon;

extern class CollisionDetectorTransferable implements ICollisionDetector
{
	private var _collisionCache : Dynamic/*UNKNOW_TYPE*/;
	function onInit(payload:InitPayload) : Void;
	function onUpdate(payload:UpdatePayload) : Void;
	function onCollision(payload:CollidePayload) : Void;
}