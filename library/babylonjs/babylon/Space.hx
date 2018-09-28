package babylonjs.babylon;

/**
 * Defines supported spaces 
 */
@:native("BABYLON.Space")
@:enum abstract Space(Dynamic)
{
	/**
	 * Local (object) space 
	 */
	var LOCAL = 0;
	/**
	 * World space 
	 */
	var WORLD = 1;
	/**
	 * Bone space 
	 */
	var BONE = 2;
}