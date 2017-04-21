package babylon;

extern class RenderingGroup
{
	var index : Float;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _opaqueSubMeshes : Dynamic/*UNKNOW_TYPE*/;
	private var _transparentSubMeshes : Dynamic/*UNKNOW_TYPE*/;
	private var _alphaTestSubMeshes : Dynamic/*UNKNOW_TYPE*/;
	private var _activeVertices : Dynamic/*UNKNOW_TYPE*/;
	private var _opaqueSortCompareFn : Dynamic/*UNKNOW_TYPE*/;
	private var _alphaTestSortCompareFn : Dynamic/*UNKNOW_TYPE*/;
	private var _transparentSortCompareFn : Dynamic/*UNKNOW_TYPE*/;
	private var _renderOpaque : Dynamic/*UNKNOW_TYPE*/;
	private var _renderAlphaTest : Dynamic/*UNKNOW_TYPE*/;
	private var _renderTransparent : Dynamic/*UNKNOW_TYPE*/;
	var onBeforeTransparentRendering : Void->Void;
	/**
	 * Set the opaque sort comparison function.
	 * If null the sub meshes will be render in the order they were created
	 */
	var opaqueSortCompareFn : SubMesh->SubMesh->Float;
	/**
	 * Set the alpha test sort comparison function.
	 * If null the sub meshes will be render in the order they were created
	 */
	var alphaTestSortCompareFn : SubMesh->SubMesh->Float;
	/**
	 * Set the transparent sort comparison function.
	 * If null the sub meshes will be render in the order they were created
	 */
	var transparentSortCompareFn : SubMesh->SubMesh->Float;
	/**
	 * Creates a new rendering group.
	 * @param index The rendering group index
	 * @param opaqueSortCompareFn The opaque sort comparison function. If null no order is applied
	 * @param alphaTestSortCompareFn The alpha test sort comparison function. If null no order is applied
	 * @param transparentSortCompareFn The transparent sort comparison function. If null back to front + alpha index sort is applied
	 */
	function new(index:Float, scene:Scene, ?opaqueSortCompareFn:SubMesh->SubMesh->Float, ?alphaTestSortCompareFn:SubMesh->SubMesh->Float, ?transparentSortCompareFn:SubMesh->SubMesh->Float) : Void;
	/**
	 * Render all the sub meshes contained in the group.
	 * @param customRenderFunction Used to override the default render behaviour of the group.
	 * @returns true if rendered some submeshes.
	 */
	function render(customRenderFunction: (opaqueSubMeshes:SmartArray<SubMesh>, transparentSubMeshes:SmartArray<SubMesh>, alphaTestSubMeshes:SmartArray<SubMesh>) => void) : Bool;
	/**
	 * Renders the opaque submeshes in the order from the opaqueSortCompareFn.
	 * @param subMeshes The submeshes to render
	 */
	private function renderOpaqueSorted(subMeshes);
	/**
	 * Renders the opaque submeshes in the order from the alphatestSortCompareFn.
	 * @param subMeshes The submeshes to render
	 */
	private function renderAlphaTestSorted(subMeshes);
	/**
	 * Renders the opaque submeshes in the order from the transparentSortCompareFn.
	 * @param subMeshes The submeshes to render
	 */
	private function renderTransparentSorted(subMeshes);
	/**
	 * Renders the submeshes in a specified order.
	 * @param subMeshes The submeshes to sort before render
	 * @param sortCompareFn The comparison function use to sort
	 * @param cameraPosition The camera position use to preprocess the submeshes to help sorting
	 * @param transparent Specifies to activate blending if true
	 */
	private static function renderSorted(subMeshes, sortCompareFn, cameraPosition, transparent);
	/**
	 * Renders the submeshes in the order they were dispatched (no sort applied).
	 * @param subMeshes The submeshes to render
	 */
	private static function renderUnsorted(subMeshes);
	/**
	 * Build in function which can be applied to ensure meshes of a special queue (opaque, alpha test, transparent)
	 * are rendered back to front if in the same alpha index.
	 *
	 * @param a The first submesh
	 * @param b The second submesh
	 * @returns The result of the comparison
	 */
	static function defaultTransparentSortCompare(a:SubMesh, b:SubMesh) : Float;
	/**
	 * Build in function which can be applied to ensure meshes of a special queue (opaque, alpha test, transparent)
	 * are rendered back to front.
	 *
	 * @param a The first submesh
	 * @param b The second submesh
	 * @returns The result of the comparison
	 */
	static function backToFrontSortCompare(a:SubMesh, b:SubMesh) : Float;
	/**
	 * Build in function which can be applied to ensure meshes of a special queue (opaque, alpha test, transparent)
	 * are rendered front to back (prevent overdraw).
	 *
	 * @param a The first submesh
	 * @param b The second submesh
	 * @returns The result of the comparison
	 */
	static function frontToBackSortCompare(a:SubMesh, b:SubMesh) : Float;
	/**
	 * Resets the different lists of submeshes to prepare a new frame.
	 */
	function prepare() : Void;
	/**
	 * Inserts the submesh in its correct queue depending on its material.
	 * @param subMesh The submesh to dispatch
	 */
	function dispatch(subMesh:SubMesh) : Void;
}