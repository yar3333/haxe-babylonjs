package babylonjs.babylon;

/**
 * EffectFallbacks can be used to add fallbacks (properties to disable) to certain properties when desired to improve performance.
 * (Eg. Start at high quality with reflection and fog, if fps is low, remove reflection, if still low remove fog)
 */
@:native("BABYLON.EffectFallbacks")
extern class EffectFallbacks
{
	private var _defines : Dynamic;
	private var _currentRank : Dynamic;
	private var _maxRank : Dynamic;
	private var _mesh : Dynamic;
	/**
	 * Checks to see if more fallbacks are still availible.
	 */
	var isMoreFallbacks(default, null) : Bool;

	/**
	 * Removes the fallback from the bound mesh.
	 */
	function unBindMesh() : Void;
	/**
	 * Adds a fallback on the specified property.
	 */
	function addFallback(rank:Float, define:String) : Void;
	/**
	 * Sets the mesh to use CPU skinning when needing to fallback.
	 */
	function addCPUSkinningFallback(rank:Float, mesh:AbstractMesh) : Void;
	/**
	 * Removes the defines that shoould be removed when falling back.
	 * @returns The resulting defines with defines of the current rank removed.
	 */
	function reduce(currentDefines:String, effect:Effect) : String;
}