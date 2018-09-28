package babylonjs.babylon;

extern interface IDisposable
{
	/**
	 * Releases all held resources
	 */
	function dispose(?deep:Bool) : Void;
}