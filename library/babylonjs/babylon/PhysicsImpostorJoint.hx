package babylon;

extern interface PhysicsImpostorJoint
{
	var mainImpostor : PhysicsImpostor;
	var connectedImpostor : PhysicsImpostor;
	var joint : PhysicsJoint;
}