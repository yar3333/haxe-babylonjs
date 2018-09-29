package babylonjs;

@:native("BABYLON.PhysicsEngine")
extern class PhysicsEngine
{
	private var _physicsPlugin : Dynamic;
	var gravity : Vector3;
	static var Epsilon : Float;
	private var _impostors : Dynamic;
	private var _joints : Dynamic;

	function new(gravity:Null<Vector3>, ?_physicsPlugin:IPhysicsEnginePlugin) : Void;
	function setGravity(gravity:Vector3) : Void;
	/**
	 * Set the time step of the physics engine.
	 * default is 1/60.
	 * To slow it down, enter 1/600 for example.
	 * To speed it up, 1/30
	 */
	function setTimeStep(?newTimeStep:Float) : Void;
	/**
	 * Get the time step of the physics engine.
	 */
	function getTimeStep() : Float;
	function dispose() : Void;
	function getPhysicsPluginName() : String;
	/**
	 * Adding a new impostor for the impostor tracking.
	 * This will be done by the impostor itself.
	 */
	function addImpostor(impostor:PhysicsImpostor) : Void;
	/**
	 * Remove an impostor from the engine.
	 * This impostor and its mesh will not longer be updated by the physics engine.
	 */
	function removeImpostor(impostor:PhysicsImpostor) : Void;
	/**
	 * Add a joint to the physics engine
	 */
	function addJoint(mainImpostor:PhysicsImpostor, connectedImpostor:PhysicsImpostor, joint:PhysicsJoint) : Void;
	function removeJoint(mainImpostor:PhysicsImpostor, connectedImpostor:PhysicsImpostor, joint:PhysicsJoint) : Void;
	/**
	 * Called by the scene. no need to call it.
	 */
	function _step(delta:Float) : Void;
	function getPhysicsPlugin() : IPhysicsEnginePlugin;
	function getImpostors() : Array<PhysicsImpostor>;
	function getImpostorForPhysicsObject(object:IPhysicsEnabledObject) : Null<PhysicsImpostor>;
	function getImpostorWithPhysicsBody(body:Dynamic) : Null<PhysicsImpostor>;
}