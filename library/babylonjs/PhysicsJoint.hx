package babylonjs;

/**
 * This is a holder class for the physics joint created by the physics plugin.
 * It holds a set of functions to control the underlying joint.
 */
@:native("BABYLON.PhysicsJoint")
extern class PhysicsJoint
{
	var type : Float;
	var jointData : PhysicsJointData;
	private var _physicsJoint : Dynamic;
	private var _physicsPlugin : IPhysicsEnginePlugin;
	var physicsJoint : Dynamic;
	var physicsPlugin : IPhysicsEnginePlugin;
	static var DistanceJoint : Float;
	static var HingeJoint : Float;
	static var BallAndSocketJoint : Float;
	static var WheelJoint : Float;
	static var SliderJoint : Float;
	static var PrismaticJoint : Float;
	static var UniversalJoint : Float;
	static var Hinge2Joint : Float;
	static var PointToPointJoint : Float;
	static var SpringJoint : Float;
	static var LockJoint : Float;

	/**
	 * This is a holder class for the physics joint created by the physics plugin.
	 * It holds a set of functions to control the underlying joint.
	 */
	function new(type:Float, jointData:PhysicsJointData) : Void;
	/**
	 * Execute a function that is physics-plugin specific.
	 */
	function executeNativeFunction(func:Dynamic->Dynamic->Void) : Void;
}