package babylon;

extern class PhysicsJoint
{
	var type : Float;
	var jointData : PhysicsJointData;
	private var _physicsJoint : Dynamic/*UNKNOW_TYPE*/;
	protected var _physicsPlugin : IPhysicsEnginePlugin;
	function new(type:Float, jointData:PhysicsJointData) : Void;
	var physicsJoint : Dynamic;
	var physicsPlugin : IPhysicsEnginePlugin;
	/**
	 * Execute a function that is physics-plugin specific.
	 * @param {Function} func the function that will be executed.
	 *                        It accepts two parameters: the physics world and the physics joint.
	 */
	function executeNativeFunction(func:Dynamic->Dynamic->Void) : Void;
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
}