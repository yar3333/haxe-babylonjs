package babylon;

extern class Hinge2Joint extends MotorEnabledJoint
{
	function new(jointData:PhysicsJointData) : Void;
	/**
	 * Set the motor values.
	 * Attention, this function is plugin specific. Engines won't react 100% the same.
	 * @param {number} force the force to apply
	 * @param {number} maxForce max force for this motor.
	 * @param {motorIndex} the motor's index, 0 or 1.
	 */
	function setMotor(?force:Float, ?maxForce:Float, ?motorIndex:Float) : Void;
	/**
	 * Set the motor limits.
	 * Attention, this function is plugin specific. Engines won't react 100% the same.
	 * @param {number} upperLimit the upper limit
	 * @param {number} lowerLimit lower limit
	 * @param {motorIndex} the motor's index, 0 or 1.
	 */
	function setLimit(upperLimit:Float, ?lowerLimit:Float, ?motorIndex:Float) : Void;
}