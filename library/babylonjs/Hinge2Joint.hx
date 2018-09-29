package babylonjs;

/**
 * This class represents a dual hinge physics joint (same as wheel joint)
 */
@:native("BABYLON.Hinge2Joint")
extern class Hinge2Joint extends MotorEnabledJoint
{
	/**
	 * This class represents a dual hinge physics joint (same as wheel joint)
	 */
	@:overload(function(jointData:PhysicsJointData): Void{})
	function new(type:Float, jointData:PhysicsJointData) : Void;
	/**
	 * Set the motor values.
	 * Attention, this function is plugin specific. Engines won't react 100% the same.
	 */
	override function setMotor(?force:Float, ?maxForce:Float, ?motorIndex:Float) : Void;
	/**
	 * Set the motor limits.
	 * Attention, this function is plugin specific. Engines won't react 100% the same.
	 */
	override function setLimit(upperLimit:Float, ?lowerLimit:Float, ?motorIndex:Float) : Void;
}