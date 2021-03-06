package babylonjs;

/**
 * Internal class used by the engine to get list of {BABYLON.InternalTexture} already bound to the GL context
 */
@:native("BABYLON.DummyInternalTextureTracker")
extern class DummyInternalTextureTracker
{
	/**
	 * Gets or set the previous tracker in the list
	 */
	var previous : Null<IInternalTextureTracker>;
	/**
	 * Gets or set the next tracker in the list
	 */
	var next : Null<IInternalTextureTracker>;
}