package babylonjs;

@:native("BABYLON.MotorEnabledJoint")
extern class MotorEnabledJoint extends PhysicsJoint
	implements IMotorEnabledJoint
{
	function new(type:Float, jointData:PhysicsJointData) : Void;
	/**
	 * Set the motor values.
	 * Attention, this function is plugin specific. Engines won't react 100% the same.
	 */
	@:overload(function(?force:Float,?maxForce:Float): Void{})
	function setMotor(?force:Float, ?maxForce:Float, ?motorIndex:Float) : Void;
	/**
	 * Set the motor's limits.
	 * Attention, this function is plugin specific. Engines won't react 100% the same.
	 */
	@:overload(function(upperLimit:Float,?lowerLimit:Float): Void{})
	function setLimit(upperLimit:Float, ?lowerLimit:Float, ?motorIndex:Float) : Void;
}