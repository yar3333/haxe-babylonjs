package babylonjs;

/**
 * Represents a Depth Sorted Particle in the solid particle system.
 */
@:native("BABYLON.DepthSortedParticle")
extern class DepthSortedParticle
{
	/**
	 * Index of the particle in the "indices" array
	 */
	var ind : Float;
	/**
	 * Length of the particle shape in the "indices" array
	 */
	var indicesLength : Float;
	/**
	 * Squared distance from the particle to the camera
	 */
	var sqDistance : Float;
}