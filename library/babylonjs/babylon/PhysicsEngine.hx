package babylon;

extern class PhysicsEngine
{
	private var _physicsPlugin : Dynamic/*UNKNOW_TYPE*/;
	var gravity : Vector3;
	function new(?gravity:Vector3, ?_physicsPlugin:IPhysicsEnginePlugin) : Void;
	function setGravity(gravity:Vector3) : Void;
	/**
	 * Set the time step of the physics engine.
	 * default is 1/60.
	 * To slow it down, enter 1/600 for example.
	 * To speed it up, 1/30
	 * @param {number} newTimeStep the new timestep to apply to this world.
	 */
	function setTimeStep(?newTimeStep:Float) : Void;
	function dispose() : Void;
	function getPhysicsPluginName() : String;
	/**
	 * @Deprecated
	 *
	 */
	static var NoImpostor : Float;
	static var SphereImpostor : Float;
	static var BoxImpostor : Float;
	static var PlaneImpostor : Float;
	static var MeshImpostor : Float;
	static var CylinderImpostor : Float;
	static var HeightmapImpostor : Float;
	static var CapsuleImpostor : Float;
	static var ConeImpostor : Float;
	static var ConvexHullImpostor : Float;
	static var Epsilon : Float;
	private var _impostors : Dynamic/*UNKNOW_TYPE*/;
	private var _joints : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * Adding a new impostor for the impostor tracking.
	 * This will be done by the impostor itself.
	 * @param {PhysicsImpostor} impostor the impostor to add
	 */
	function addImpostor(impostor:PhysicsImpostor) : Void;
	/**
	 * Remove an impostor from the engine.
	 * This impostor and its mesh will not longer be updated by the physics engine.
	 * @param {PhysicsImpostor} impostor the impostor to remove
	 */
	function removeImpostor(impostor:PhysicsImpostor) : Void;
	/**
	 * Add a joint to the physics engine
	 * @param {PhysicsImpostor} mainImpostor the main impostor to which the joint is added.
	 * @param {PhysicsImpostor} connectedImpostor the impostor that is connected to the main impostor using this joint
	 * @param {PhysicsJoint} the joint that will connect both impostors.
	 */
	function addJoint(mainImpostor:PhysicsImpostor, connectedImpostor:PhysicsImpostor, joint:PhysicsJoint) : Void;
	function removeJoint(mainImpostor:PhysicsImpostor, connectedImpostor:PhysicsImpostor, joint:PhysicsJoint) : Void;
	/**
	 * Called by the scene. no need to call it.
	 */
	function _step(delta:Float) : Void;
	function getPhysicsPlugin() : IPhysicsEnginePlugin;
	function getImpostorForPhysicsObject(object:IPhysicsEnabledObject) : PhysicsImpostor;
	function getImpostorWithPhysicsBody(body:Dynamic) : PhysicsImpostor;
}