package babylonjs.babylon;

extern interface IInternalTextureTracker
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