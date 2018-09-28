package babylonjs.babylon;

@:native("BABYLON.PhysicsImpostor")
extern class PhysicsImpostor
{
	var object : IPhysicsEnabledObject;
	var type : Float;
	private var _options : Dynamic;
	private var _scene : Dynamic;
	static var DEFAULT_OBJECT_SIZE : Vector3;
	static var IDENTITY_QUATERNION : Quaternion;
	private var _physicsEngine : Dynamic;
	private var _physicsBody : Dynamic;
	private var _bodyUpdateRequired : Dynamic;
	private var _onBeforePhysicsStepCallbacks : Dynamic;
	private var _onAfterPhysicsStepCallbacks : Dynamic;
	private var _onPhysicsCollideCallbacks : Dynamic;
	private var _deltaPosition : Dynamic;
	private var _deltaRotation : Dynamic;
	private var _deltaRotationConjugated : Dynamic;
	private var _parent : Dynamic;
	private var _isDisposed : Dynamic;
	private static var _tmpVecs : Dynamic;
	private static var _tmpQuat : Dynamic;
	var isDisposed(default, null) : Bool;
	var mass : Float;
	var friction : Float;
	var restitution : Float;
	var uniqueId : Float;
	private var _joints : Dynamic;
	/**
	 * Gets the body that holds this impostor. Either its own, or its parent.
	 * Set the physics body. Used mainly by the physics engine/plugin
	 */
	var physicsBody : Dynamic;
	var parent : Null<PhysicsImpostor>;
	private var _tmpQuat : Dynamic;
	private var _tmpQuat2 : Dynamic;
	/**
	 * this function is executed by the physics engine.
	 */
	var beforeStep : Void->Void;
	/**
	 * this function is executed by the physics engine.
	 */
	var afterStep : Void->Void;
	/**
	 * Legacy collision detection event support
	 */
	var onCollideEvent : Null<PhysicsImpostor->PhysicsImpostor->Void>;
	var onCollide : { var body : Dynamic; }->Void;
	static var NoImpostor : Float;
	static var SphereImpostor : Float;
	static var BoxImpostor : Float;
	static var PlaneImpostor : Float;
	static var MeshImpostor : Float;
	static var CylinderImpostor : Float;
	static var ParticleImpostor : Float;
	static var HeightmapImpostor : Float;

	function new(object:IPhysicsEnabledObject, type:Float, ?_options:PhysicsImpostorParameters, ?_scene:haxe.extern.EitherType<Scene, {}>) : Void;
	/**
	 * This function will completly initialize this impostor.
	 * It will create a new body - but only if this mesh has no parent.
	 * If it has, this impostor will not be used other than to define the impostor
	 * of the child mesh.
	 */
	function _init() : Void;
	private function _getPhysicsParent() : Dynamic;
	/**
	 * Should a new body be generated.
	 */
	function isBodyInitRequired() : Bool;
	function setScalingUpdated(updated:Bool) : Void;
	/**
	 * Force a regeneration of this or the parent's impostor's body.
	 * Use under cautious - This will remove all joints already implemented.
	 */
	function forceUpdate() : Void;
	function resetUpdateFlags() : Void;
	function getObjectExtendSize() : Vector3;
	function getObjectCenter() : Vector3;
	/**
	 * Get a specific parametes from the options parameter.
	 */
	function getParam(paramName:String) : Dynamic;
	/**
	 * Sets a specific parameter in the options given to the physics plugin
	 */
	function setParam(paramName:String, value:Float) : Void;
	/**
	 * Specifically change the body's mass option. Won't recreate the physics body object
	 */
	function setMass(mass:Float) : Void;
	function getLinearVelocity() : Null<Vector3>;
	function setLinearVelocity(velocity:Null<Vector3>) : Void;
	function getAngularVelocity() : Null<Vector3>;
	function setAngularVelocity(velocity:Null<Vector3>) : Void;
	/**
	 * Execute a function with the physics plugin native code.
	 * Provide a function the will have two variables - the world object and the physics body object.
	 */
	function executeNativeFunction(func:Dynamic->Dynamic->Void) : Void;
	/**
	 * Register a function that will be executed before the physics world is stepping forward.
	 */
	function registerBeforePhysicsStep(func:PhysicsImpostor->Void) : Void;
	function unregisterBeforePhysicsStep(func:PhysicsImpostor->Void) : Void;
	/**
	 * Register a function that will be executed after the physics step
	 */
	function registerAfterPhysicsStep(func:PhysicsImpostor->Void) : Void;
	function unregisterAfterPhysicsStep(func:PhysicsImpostor->Void) : Void;
	/**
	 * register a function that will be executed when this impostor collides against a different body.
	 */
	function registerOnPhysicsCollide(collideAgainst:haxe.extern.EitherType<PhysicsImpostor, Array<PhysicsImpostor>>, func:PhysicsImpostor->PhysicsImpostor->Void) : Void;
	function unregisterOnPhysicsCollide(collideAgainst:haxe.extern.EitherType<PhysicsImpostor, Array<PhysicsImpostor>>, func:PhysicsImpostor->haxe.extern.EitherType<PhysicsImpostor, Array<PhysicsImpostor>>->Void) : Void;
	function getParentsRotation() : Quaternion;
	/**
	 * Apply a force
	 */
	function applyForce(force:Vector3, contactPoint:Vector3) : PhysicsImpostor;
	/**
	 * Apply an impulse
	 */
	function applyImpulse(force:Vector3, contactPoint:Vector3) : PhysicsImpostor;
	/**
	 * A help function to create a joint.
	 */
	function createJoint(otherImpostor:PhysicsImpostor, jointType:Float, jointData:PhysicsJointData) : PhysicsImpostor;
	/**
	 * Add a joint to this impostor with a different impostor.
	 */
	function addJoint(otherImpostor:PhysicsImpostor, joint:PhysicsJoint) : PhysicsImpostor;
	/**
	 * Will keep this body still, in a sleep mode.
	 */
	function sleep() : PhysicsImpostor;
	/**
	 * Wake the body up.
	 */
	function wakeUp() : PhysicsImpostor;
	function clone(newObject:IPhysicsEnabledObject) : Null<PhysicsImpostor>;
	function dispose() : Void;
	function setDeltaPosition(position:Vector3) : Void;
	function setDeltaRotation(rotation:Quaternion) : Void;
	function getBoxSizeToRef(result:Vector3) : PhysicsImpostor;
	function getRadius() : Float;
	/**
	 * Sync a bone with this impostor
	 */
	function syncBoneWithImpostor(bone:Bone, boneMesh:AbstractMesh, jointPivot:Vector3, ?distToJoint:Float, ?adjustRotation:Quaternion) : Void;
	/**
	 * Sync impostor to a bone
	 */
	function syncImpostorWithBone(bone:Bone, boneMesh:AbstractMesh, jointPivot:Vector3, ?distToJoint:Float, ?adjustRotation:Quaternion, ?boneAxis:Vector3) : Void;
}