package babylonjs;

/**
 * The implemented types of simplification
 * At the moment only Quadratic Error Decimation is implemented
 */
@:native("BABYLON.SimplificationType")
@:enum abstract SimplificationType(Dynamic)
{
	/**
	 * Quadratic error decimation 
	 */
	var QUADRATIC = 0;
}