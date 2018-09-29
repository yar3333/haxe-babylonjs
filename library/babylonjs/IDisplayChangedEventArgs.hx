package babylonjs;

extern interface IDisplayChangedEventArgs
{
	/**
	 * Gets the vrDisplay object (if any) 
	 */
	var vrDisplay : Null<Dynamic>;
	/**
	 * Gets a boolean indicating if webVR is supported 
	 */
	var vrSupported : Bool;
}