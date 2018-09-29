package babylonjs;

/**
 * This class represents a single hinge physics joint
 */
@:native("BABYLON.HingeJoint")
extern class HingeJoint extends MotorEnabledJoint
{
	/**
	 * This class represents a single hinge physics joint
	 */
	@:overload(function(jointData:PhysicsJointData): Void{})
	function new(type:Float, jointData:PhysicsJointData) : Void;
	/**
	 * Set the motor values.
	 * Attention, this function is plugin specific. Engines won't react 100% the same.
	 */
	@:overload(function(?force:Float,?maxForce:Float): Void{})
	override function setMotor(?force:Float, ?maxForce:Float, ?motorIndex:Float) : Void;
	/**
	 * Set the motor's limits.
	 * Attention, this function is plugin specific. Engines won't react 100% the same.
	 */
	@:overload(function(upperLimit:Float,?lowerLimit:Float): Void{})
	override function setLimit(upperLimit:Float, ?lowerLimit:Float, ?motorIndex:Float) : Void;
}