package babylonjs.babylon;

extern interface IPhysicsEnginePlugin
{
	var world : Dynamic;
	var name : String;

	function setGravity(gravity:Vector3) : Void;
	function setTimeStep(timeStep:Float) : Void;
	function getTimeStep() : Float;
	function executeStep(delta:Float, impostors:Array<PhysicsImpostor>) : Void;
	function applyImpulse(impostor:PhysicsImpostor, force:Vector3, contactPoint:Vector3) : Void;
	function applyForce(impostor:PhysicsImpostor, force:Vector3, contactPoint:Vector3) : Void;
	function generatePhysicsBody(impostor:PhysicsImpostor) : Void;
	function removePhysicsBody(impostor:PhysicsImpostor) : Void;
	function generateJoint(joint:PhysicsImpostorJoint) : Void;
	function removeJoint(joint:PhysicsImpostorJoint) : Void;
	function isSupported() : Bool;
	function setTransformationFromPhysicsBody(impostor:PhysicsImpostor) : Void;
	function setPhysicsBodyTransformation(impostor:PhysicsImpostor, newPosition:Vector3, newRotation:Quaternion) : Void;
	function setLinearVelocity(impostor:PhysicsImpostor, velocity:Null<Vector3>) : Void;
	function setAngularVelocity(impostor:PhysicsImpostor, velocity:Null<Vector3>) : Void;
	function getLinearVelocity(impostor:PhysicsImpostor) : Null<Vector3>;
	function getAngularVelocity(impostor:PhysicsImpostor) : Null<Vector3>;
	function setBodyMass(impostor:PhysicsImpostor, mass:Float) : Void;
	function getBodyMass(impostor:PhysicsImpostor) : Float;
	function getBodyFriction(impostor:PhysicsImpostor) : Float;
	function setBodyFriction(impostor:PhysicsImpostor, friction:Float) : Void;
	function getBodyRestitution(impostor:PhysicsImpostor) : Float;
	function setBodyRestitution(impostor:PhysicsImpostor, restitution:Float) : Void;
	function sleepBody(impostor:PhysicsImpostor) : Void;
	function wakeUpBody(impostor:PhysicsImpostor) : Void;
	function updateDistanceJoint(joint:PhysicsJoint, maxDistance:Float, ?minDistance:Float) : Void;
	function setMotor(joint:IMotorEnabledJoint, speed:Float, ?maxForce:Float, ?motorIndex:Float) : Void;
	function setLimit(joint:IMotorEnabledJoint, upperLimit:Float, ?lowerLimit:Float, ?motorIndex:Float) : Void;
	function getRadius(impostor:PhysicsImpostor) : Float;
	function getBoxSizeToRef(impostor:PhysicsImpostor, result:Vector3) : Void;
	function syncMeshWithImpostor(mesh:AbstractMesh, impostor:PhysicsImpostor) : Void;
	function dispose() : Void;
}