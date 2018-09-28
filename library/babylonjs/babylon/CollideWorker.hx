package babylonjs.babylon;

@:native("BABYLON.CollideWorker")
extern class CollideWorker
{
	var collider : Collider;
	private var _collisionCache : Dynamic;
	private var finalPosition : Dynamic;
	private var collisionsScalingMatrix : Dynamic;
	private var collisionTranformationMatrix : Dynamic;

	function new(collider:Collider, _collisionCache:CollisionCache, finalPosition:Vector3) : Void;
	function collideWithWorld(position:Vector3, velocity:Vector3, maximumRetry:Float, excludedMeshUniqueId:Null<Float>) : Void;
	private function checkCollision(mesh:Dynamic) : Dynamic;
	private function processCollisionsForSubMeshes(transformMatrix:Dynamic, mesh:Dynamic) : Dynamic;
	private function collideForSubMesh(subMesh:Dynamic, transformMatrix:Dynamic, meshGeometry:Dynamic) : Dynamic;
	private function checkSubmeshCollision(subMesh:Dynamic) : Dynamic;
}