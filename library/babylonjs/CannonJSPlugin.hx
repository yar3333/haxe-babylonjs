package babylonjs;

@:native("BABYLON.CannonJSPlugin")
extern class CannonJSPlugin
	implements IPhysicsEnginePlugin
{
	private var _useDeltaForWorldStep : Dynamic;
	var world : Dynamic;
	var name : String;
	private var _physicsMaterials : Dynamic;
	private var _fixedTimeStep : Dynamic;
	var BJSCANNON : Dynamic;
	private var _minus90X : Dynamic;
	private var _plus90X : Dynamic;
	private var _tmpPosition : Dynamic;
	private var _tmpDeltaPosition : Dynamic;
	private var _tmpUnityRotation : Dynamic;

	function new(?_useDeltaForWorldStep:Bool, ?iterations:Float) : Void;
	function setGravity(gravity:Vector3) : Void;
	function setTimeStep(timeStep:Float) : Void;
	function getTimeStep() : Float;
	function executeStep(delta:Float, impostors:Array<PhysicsImpostor>) : Void;
	function applyImpulse(impostor:PhysicsImpostor, force:Vector3, contactPoint:Vector3) : Void;
	function applyForce(impostor:PhysicsImpostor, force:Vector3, contactPoint:Vector3) : Void;
	function generatePhysicsBody(impostor:PhysicsImpostor) : Void;
	private function _processChildMeshes(mainImpostor:Dynamic) : Dynamic;
	function removePhysicsBody(impostor:PhysicsImpostor) : Void;
	@:overload(function(impostorJoint:PhysicsImpostorJoint): Void{})
	function generateJoint(joint:PhysicsImpostorJoint) : Void;
	@:overload(function(impostorJoint:PhysicsImpostorJoint): Void{})
	function removeJoint(joint:PhysicsImpostorJoint) : Void;
	private function _addMaterial(name:Dynamic, friction:Dynamic, restitution:Dynamic) : Dynamic;
	private function _checkWithEpsilon(value:Dynamic) : Dynamic;
	private function _createShape(impostor:Dynamic) : Dynamic;
	private function _createHeightmap(object:Dynamic, ?pointDepth:Dynamic) : Dynamic;
	private function _updatePhysicsBodyTransformation(impostor:Dynamic) : Dynamic;
	function setTransformationFromPhysicsBody(impostor:PhysicsImpostor) : Void;
	function setPhysicsBodyTransformation(impostor:PhysicsImpostor, newPosition:Vector3, newRotation:Quaternion) : Void;
	function isSupported() : Bool;
	@:overload(function(impostor:PhysicsImpostor, velocity:Vector3): Void{})
	function setLinearVelocity(impostor:PhysicsImpostor, velocity:Null<Vector3>) : Void;
	@:overload(function(impostor:PhysicsImpostor, velocity:Vector3): Void{})
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
	@:overload(function(joint:IMotorEnabledJoint,?speed:Float,?maxForce:Float,?motorIndex:Float): Void{})
	function setMotor(joint:IMotorEnabledJoint, speed:Float, ?maxForce:Float, ?motorIndex:Float) : Void;
	@:overload(function(joint:IMotorEnabledJoint, upperLimit:Float,?lowerLimit:Float): Void{})
	function setLimit(joint:IMotorEnabledJoint, upperLimit:Float, ?lowerLimit:Float, ?motorIndex:Float) : Void;
	function syncMeshWithImpostor(mesh:AbstractMesh, impostor:PhysicsImpostor) : Void;
	function getRadius(impostor:PhysicsImpostor) : Float;
	function getBoxSizeToRef(impostor:PhysicsImpostor, result:Vector3) : Void;
	function dispose() : Void;
	private function _extendNamespace() : Dynamic;
}