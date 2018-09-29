package babylonjs;

@:native("BABYLON.RenderingGroup")
extern class RenderingGroup
{
	var index : Float;
	private var _scene : Dynamic;
	private var _opaqueSubMeshes : Dynamic;
	private var _transparentSubMeshes : Dynamic;
	private var _alphaTestSubMeshes : Dynamic;
	private var _depthOnlySubMeshes : Dynamic;
	private var _particleSystems : Dynamic;
	private var _spriteManagers : Dynamic;
	private var _opaqueSortCompareFn : Dynamic;
	private var _alphaTestSortCompareFn : Dynamic;
	private var _transparentSortCompareFn : Dynamic;
	private var _renderOpaque : Dynamic;
	private var _renderAlphaTest : Dynamic;
	private var _renderTransparent : Dynamic;
	private var _edgesRenderers : Dynamic;
	var onBeforeTransparentRendering : Void->Void;
	/**
	 * Set the opaque sort comparison function.
	 * If null the sub meshes will be render in the order they were created
	 */
	var opaqueSortCompareFn : Null<SubMesh->SubMesh->Float>;
	/**
	 * Set the alpha test sort comparison function.
	 * If null the sub meshes will be render in the order they were created
	 */
	var alphaTestSortCompareFn : Null<SubMesh->SubMesh->Float>;
	/**
	 * Set the transparent sort comparison function.
	 * If null the sub meshes will be render in the order they were created
	 */
	var transparentSortCompareFn : Null<SubMesh->SubMesh->Float>;

	function new(index:Float, scene:Scene, ?opaqueSortCompareFn:Null<SubMesh->SubMesh->Float>, ?alphaTestSortCompareFn:Null<SubMesh->SubMesh->Float>, ?transparentSortCompareFn:Null<SubMesh->SubMesh->Float>) : Void;
	/**
	 * Render all the sub meshes contained in the group.
	 * @returns true if rendered some submeshes.
	 */
	function render(customRenderFunction:Null<SmartArray<SubMesh>->SmartArray<SubMesh>->SmartArray<SubMesh>->SmartArray<SubMesh>->Void>, renderSprites:Bool, renderParticles:Bool, activeMeshes:Null<Array<AbstractMesh>>) : Void;
	/**
	 * Renders the opaque submeshes in the order from the opaqueSortCompareFn.
	 */
	private function renderOpaqueSorted(subMeshes:Dynamic) : Dynamic;
	/**
	 * Renders the opaque submeshes in the order from the alphatestSortCompareFn.
	 */
	private function renderAlphaTestSorted(subMeshes:Dynamic) : Dynamic;
	/**
	 * Renders the opaque submeshes in the order from the transparentSortCompareFn.
	 */
	private function renderTransparentSorted(subMeshes:Dynamic) : Dynamic;
	/**
	 * Renders the submeshes in a specified order.
	 */
	private static function renderSorted(subMeshes:Dynamic, sortCompareFn:Dynamic, camera:Dynamic, transparent:Dynamic) : Dynamic;
	/**
	 * Renders the submeshes in the order they were dispatched (no sort applied).
	 */
	private static function renderUnsorted(subMeshes:Dynamic) : Dynamic;
	/**
	 * Build in function which can be applied to ensure meshes of a special queue (opaque, alpha test, transparent)
	 * are rendered back to front if in the same alpha index.
	 * 
	 * @returns The result of the comparison
	 */
	static function defaultTransparentSortCompare(a:SubMesh, b:SubMesh) : Float;
	/**
	 * Build in function which can be applied to ensure meshes of a special queue (opaque, alpha test, transparent)
	 * are rendered back to front.
	 * 
	 * @returns The result of the comparison
	 */
	static function backToFrontSortCompare(a:SubMesh, b:SubMesh) : Float;
	/**
	 * Build in function which can be applied to ensure meshes of a special queue (opaque, alpha test, transparent)
	 * are rendered front to back (prevent overdraw).
	 * 
	 * @returns The result of the comparison
	 */
	static function frontToBackSortCompare(a:SubMesh, b:SubMesh) : Float;
	/**
	 * Resets the different lists of submeshes to prepare a new frame.
	 */
	function prepare() : Void;
	function dispose() : Void;
	/**
	 * Inserts the submesh in its correct queue depending on its material.
	 */
	function dispatch(subMesh:SubMesh, ?mesh:AbstractMesh, ?material:Null<Material>) : Void;
	function dispatchSprites(spriteManager:SpriteManager) : Void;
	function dispatchParticles(particleSystem:IParticleSystem) : Void;
	private function _renderParticles(activeMeshes:Dynamic) : Dynamic;
	private function _renderSprites() : Dynamic;
}