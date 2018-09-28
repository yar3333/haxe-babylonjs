package babylonjs.babylon;

/**
 * Defines operator used for tonemapping 
 */
@:native("BABYLON.TonemappingOperator")
@:enum abstract TonemappingOperator(Dynamic)
{
	/**
	 * Hable 
	 */
	var Hable = 0;
	/**
	 * Reinhard 
	 */
	var Reinhard = 1;
	/**
	 * HejiDawson 
	 */
	var HejiDawson = 2;
	/**
	 * Photographic 
	 */
	var Photographic = 3;
}