package babylon;

extern interface ICollisionDetector
{
	function onInit(payload:InitPayload) : Void;
	function onUpdate(payload:UpdatePayload) : Void;
	function onCollision(payload:CollidePayload) : Void;
}