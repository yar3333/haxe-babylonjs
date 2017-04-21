package babylon;

extern class PhysicsImpostor
{
	var object : IPhysicsEnabledObject;
	var type : Float;
	private var _options : Dynamic/*UNKNOW_TYPE*/;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	static var DEFAULT_OBJECT_SIZE : Vector3;
	private var _physicsEngine : Dynamic/*UNKNOW_TYPE*/;
	private var _physicsBody : Dynamic/*UNKNOW_TYPE*/;
	private var _bodyUpdateRequired : Dynamic/*UNKNOW_TYPE*/;
	private var _onBeforePhysicsStepCallbacks : Dynamic/*UNKNOW_TYPE*/;
	private var _onAfterPhysicsStepCallbacks : Dynamic/*UNKNOW_TYPE*/;
	private var _onPhysicsCollideCallbacks : Dynamic/*UNKNOW_TYPE*/;
	private var _deltaPosition : Dynamic/*UNKNOW_TYPE*/;
	private var _deltaRotation : Dynamic/*UNKNOW_TYPE*/;
	private var _deltaRotationConjugated : Dynamic/*UNKNOW_TYPE*/;
	private var _parent : Dynamic/*UNKNOW_TYPE*/;
	var uniqueId : Float;
	private var _joints : Dynamic/*UNKNOW_TYPE*/;
	function new(object:IPhysicsEnabledObject, type:Float, ?_options:PhysicsImpostorParameters, ?_scene:Scene) : Void;
	/**
	 * This function will completly initialize this impostor.
	 * It will create a new body - but only if this mesh has no parent.
	 * If it has, this impostor will not be used other than to define the impostor
	 * of the child mesh.
	 */
	function _init() : Void;
	private function _getPhysicsParent();
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
	/**
	 * Gets the body that holds this impostor. Either its own, or its parent.
	 */
	/**
	 * Set the physics body. Used mainly by the physics engine/plugin
	 */
	var physicsBody : Dynamic;
	var parent : PhysicsImpostor;
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
	function getLinearVelocity() : Vector3;
	/**
	 * Set the body's linear velocity.
	 */
	function setLinearVelocity(velocity:Vector3) : Void;
	function getAngularVelocity() : Vector3;
	/**
	 * Set the body's linear velocity.
	 */
	function setAngularVelocity(velocity:Vector3) : Void;
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
	function unregisterOnPhysicsCollide(collideAgainst:haxe.extern.EitherType<PhysicsImpostor, Array<PhysicsImpostor>>, func: (collider:PhysicsImpostor, collidedAgainst:haxe.extern.EitherType<PhysicsImpostor, Array<PhysicsImpostor>>) => void) : Void;
	private var _tmpPositionWithDelta : Dynamic/*UNKNOW_TYPE*/;
	private var _tmpRotationWithDelta : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * this function is executed by the physics engine.
	 */
	var beforeStep : Void->Void;
	/**
	 * this function is executed by the physics engine.
	 */
	var afterStep : Void->Void;
	var onCollide :
	{
		body: Dynamic
	}->Void;
	/**
	 * Apply a force
	 */
	function applyForce(force:Vector3, contactPoint:Vector3) : Void;
	/**
	 * Apply an impulse
	 */
	function applyImpulse(force:Vector3, contactPoint:Vector3) : Void;
	/**
	 * A help function to create a joint.
	 */
	function createJoint(otherImpostor:PhysicsImpostor, jointType:Float, jointData:PhysicsJointData) : Void;
	/**
	 * Add a joint to this impostor with a different impostor.
	 */
	function addJoint(otherImpostor:PhysicsImpostor, joint:PhysicsJoint) : Void;
	/**
	 * Will keep this body still, in a sleep mode.
	 */
	function sleep() : Void;
	/**
	 * Wake the body up.
	 */
	function wakeUp() : Void;
	function clone(newObject:IPhysicsEnabledObject) : PhysicsImpostor;
	function dispose() : Void;
	function setDeltaPosition(position:Vector3) : Void;
	function setDeltaRotation(rotation:Quaternion) : Void;
	static var NoImpostor : Float;
	static var SphereImpostor : Float;
	static var BoxImpostor : Float;
	static var PlaneImpostor : Float;
	static var MeshImpostor : Float;
	static var CylinderImpostor : Float;
	static var ParticleImpostor : Float;
	static var HeightmapImpostor : Float;
}