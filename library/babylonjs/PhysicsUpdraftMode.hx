package babylonjs;

/**
 * The strenght of the force in correspondence to the distance of the affected object
 */
@:native("BABYLON.PhysicsUpdraftMode")
@:enum abstract PhysicsUpdraftMode(Dynamic)
{
	/**
	 * Defines that the upstream forces will pull towards the top center of the cylinder 
	 */
	var Center = 0;
	/**
	 * Defines that once a impostor is inside the cylinder, it will shoot out perpendicular from the ground of the cylinder 
	 */
	var Perpendicular = 1;
}