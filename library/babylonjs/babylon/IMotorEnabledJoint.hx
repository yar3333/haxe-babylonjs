package babylon;

extern interface IMotorEnabledJoint
{
	var physicsJoint : Dynamic;
	function setMotor(?force:Float, ?maxForce:Float, ?motorIndex:Float) : Dynamic;
	function setLimit(upperLimit:Float, ?lowerLimit:Float, ?motorIndex:Float) : Dynamic;
}