package babylon;

extern class MotorEnabledJoint extends PhysicsJoint implements IMotorEnabledJoint
{
	function new(type:Float, jointData:PhysicsJointData) : Void;
	/**
	 * Set the motor values.
	 * Attention, this function is plugin specific. Engines won't react 100% the same.
	 * @param {number} force the force to apply
	 * @param {number} maxForce max force for this motor.
	 */
	function setMotor(?force:Float, ?maxForce:Float) : Void;
	/**
	 * Set the motor's limits.
	 * Attention, this function is plugin specific. Engines won't react 100% the same.
	 */
	function setLimit(upperLimit:Float, ?lowerLimit:Float) : Void;
}