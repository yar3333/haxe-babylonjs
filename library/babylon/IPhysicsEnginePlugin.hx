package babylon;

extern interface IPhysicsEnginePlugin
{
	var world : Dynamic;
	var name : String;
	function setGravity(gravity:Vector3) : Dynamic;
	function setTimeStep(timeStep:Float) : Dynamic;
	function executeStep(delta:Float, impostors:Array<PhysicsImpostor>) : Void;
	function applyImpulse(impostor:PhysicsImpostor, force:Vector3, contactPoint:Vector3) : Dynamic;
	function applyForce(impostor:PhysicsImpostor, force:Vector3, contactPoint:Vector3) : Dynamic;
	function generatePhysicsBody(impostor:PhysicsImpostor) : Dynamic;
	function removePhysicsBody(impostor:PhysicsImpostor) : Dynamic;
	function generateJoint(joint:PhysicsImpostorJoint) : Dynamic;
	function removeJoint(joint:PhysicsImpostorJoint) : Dynamic;
	function isSupported() : Bool;
	function setTransformationFromPhysicsBody(impostor:PhysicsImpostor) : Dynamic;
	function setPhysicsBodyTransformation(impostor:PhysicsImpostor, newPosition:Vector3, newRotation:Quaternion) : Dynamic;
	function setLinearVelocity(impostor:PhysicsImpostor, velocity:Vector3) : Dynamic;
	function setAngularVelocity(impostor:PhysicsImpostor, velocity:Vector3) : Dynamic;
	function getLinearVelocity(impostor:PhysicsImpostor) : Vector3;
	function getAngularVelocity(impostor:PhysicsImpostor) : Vector3;
	function setBodyMass(impostor:PhysicsImpostor, mass:Float) : Dynamic;
	function sleepBody(impostor:PhysicsImpostor) : Dynamic;
	function wakeUpBody(impostor:PhysicsImpostor) : Dynamic;
	function updateDistanceJoint(joint:DistanceJoint, maxDistance:Float, ?minDistance:Float) : Dynamic;
	function setMotor(joint:IMotorEnabledJoint, speed:Float, ?maxForce:Float, ?motorIndex:Float) : Dynamic;
	function setLimit(joint:IMotorEnabledJoint, upperLimit:Float, ?lowerLimit:Float, ?motorIndex:Float) : Dynamic;
	function dispose() : Dynamic;
}