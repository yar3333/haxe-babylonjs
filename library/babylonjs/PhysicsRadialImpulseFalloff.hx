package babylonjs;

/**
 * *** Enums ****
 * The strenght of the force in correspondence to the distance of the affected object
 */
@:native("BABYLON.PhysicsRadialImpulseFalloff")
@:enum abstract PhysicsRadialImpulseFalloff(Dynamic)
{
	/**
	 * Defines that impulse is constant in strength across it's whole radius 
	 */
	var Constant = 0;
	/**
	 * DEfines that impulse gets weaker if it's further from the origin 
	 */
	var Linear = 1;
}