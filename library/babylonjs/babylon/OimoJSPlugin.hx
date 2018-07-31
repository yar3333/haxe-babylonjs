package babylon;

extern class OimoJSPlugin
{
	var world : Dynamic;
	var name : String;
	function new(?iterations:Float) : Void;
	function setGravity(gravity:Vector3) : Void;
	function setTimeStep(timeStep:Float) : Void;
	private var _tmpImpostorsArray : Dynamic/*UNKNOW_TYPE*/;
	function executeStep(delta:Float, impostors:Array<PhysicsImpostor>) : Void;
	function applyImpulse(impostor:PhysicsImpostor, force:Vector3, contactPoint:Vector3) : Void;
	function applyForce(impostor:PhysicsImpostor, force:Vector3, contactPoint:Vector3) : Void;
	function generatePhysicsBody(impostor:PhysicsImpostor) : Void;
	private var _tmpPositionVector : Dynamic/*UNKNOW_TYPE*/;
	function removePhysicsBody(impostor:PhysicsImpostor) : Void;
	function generateJoint(impostorJoint:PhysicsImpostorJoint) : Void;
	function removeJoint(impostorJoint:PhysicsImpostorJoint) : Void;
	function isSupported() : Bool;
	function setTransformationFromPhysicsBody(impostor:PhysicsImpostor) : Void;
	function setPhysicsBodyTransformation(impostor:PhysicsImpostor, newPosition:Vector3, newRotation:Quaternion) : Void;
	private function _getLastShape(body);
	function setLinearVelocity(impostor:PhysicsImpostor, velocity:Vector3) : Void;
	function setAngularVelocity(impostor:PhysicsImpostor, velocity:Vector3) : Void;
	function getLinearVelocity(impostor:PhysicsImpostor) : Vector3;
	function getAngularVelocity(impostor:PhysicsImpostor) : Vector3;
	function setBodyMass(impostor:PhysicsImpostor, mass:Float) : Void;
	function sleepBody(impostor:PhysicsImpostor) : Void;
	function wakeUpBody(impostor:PhysicsImpostor) : Void;
	function updateDistanceJoint(joint:IMotorEnabledJoint, maxDistance:Float, ?minDistance:Float) : Void;
	function setMotor(joint:IMotorEnabledJoint, speed:Float, ?maxForce:Float, ?motorIndex:Float) : Void;
	function setLimit(joint:IMotorEnabledJoint, upperLimit:Float, ?lowerLimit:Float, ?motorIndex:Float) : Void;
	function dispose() : Void;
}