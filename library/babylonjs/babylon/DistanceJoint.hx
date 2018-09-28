package babylonjs.babylon;

/**
 * A class representing a physics distance joint.
 */
@:native("BABYLON.DistanceJoint")
extern class DistanceJoint extends PhysicsJoint
{
	/**
	 * A class representing a physics distance joint.
	 */
	@:overload(function(jointData:DistanceJointData): Void{})
	function new(type:Float, jointData:PhysicsJointData) : Void;
	/**
	 * Update the predefined distance.
	 */
	function updateDistance(maxDistance:Float, ?minDistance:Float) : Void;
}