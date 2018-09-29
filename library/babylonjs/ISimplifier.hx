package babylonjs;

extern interface ISimplifier
{
	/**
	 * Simplification of a given mesh according to the given settings.
	 * Since this requires computation, it is assumed that the function runs async.
	 */
	function simplify(settings:ISimplificationSettings, successCallback:Mesh->Void, ?errorCallback:Void->Void) : Void;
}