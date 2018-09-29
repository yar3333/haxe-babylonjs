package babylonjs;

extern interface PhysicsJointData
{
	@:optional var mainPivot : Vector3;
	@:optional var connectedPivot : Vector3;
	@:optional var mainAxis : Vector3;
	@:optional var connectedAxis : Vector3;
	@:optional var collision : Bool;
	@:optional var nativeParams : Dynamic;
}