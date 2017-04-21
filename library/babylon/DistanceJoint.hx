package babylon;

extern class DistanceJoint extends PhysicsJoint
{
	function new(jointData:DistanceJointData) : Void;
	/**
	 * Update the predefined distance.
	 */
	function updateDistance(maxDistance:Float, ?minDistance:Float) : Void;
}