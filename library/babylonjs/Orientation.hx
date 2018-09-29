package babylonjs;

/**
 * Defines potential orientation for back face culling
 */
@:native("BABYLON.Orientation")
@:enum abstract Orientation(Dynamic)
{
	/**
	 * Clockwise
	 */
	var CW = 0;
	/**
	 * Counter clockwise 
	 */
	var CCW = 1;
}