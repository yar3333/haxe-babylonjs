package babylon;

extern class CollideWorker
{
	var collider : Collider;
	private var _collisionCache : Dynamic/*UNKNOW_TYPE*/;
	private var finalPosition : Dynamic/*UNKNOW_TYPE*/;
	private var collisionsScalingMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var collisionTranformationMatrix : Dynamic/*UNKNOW_TYPE*/;
	function new(collider:Collider, _collisionCache:CollisionCache, finalPosition:Vector3) : Void;
	function collideWithWorld(position:Vector3, velocity:Vector3, maximumRetry:Float, ?excludedMeshUniqueId:Float) : Void;
	private function checkCollision(mesh);
	private function processCollisionsForSubMeshes(transformMatrix, mesh);
	private function collideForSubMesh(subMesh, transformMatrix, meshGeometry);
	private function checkSubmeshCollision(subMesh);
}