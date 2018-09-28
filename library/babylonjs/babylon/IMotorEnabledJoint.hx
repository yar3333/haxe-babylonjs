package babylonjs.babylon;

extern interface IMotorEnabledJoint
{
	var physicsJoint : Dynamic;

	function setMotor(?force:Float, ?maxForce:Float, ?motorIndex:Float) : Void;
	function setLimit(upperLimit:Float, ?lowerLimit:Float, ?motorIndex:Float) : Void;
}