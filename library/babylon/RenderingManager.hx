package babylon;

extern class RenderingManager
{
	/**
	 * The max id used for rendering groups (not included)
	 */
	static var MAX_RENDERINGGROUPS : Float;
	/**
	 * The min id used for rendering groups (included)
	 */
	static var MIN_RENDERINGGROUPS : Float;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _renderingGroups : Dynamic/*UNKNOW_TYPE*/;
	private var _depthStencilBufferAlreadyCleaned : Dynamic/*UNKNOW_TYPE*/;
	private var _currentIndex : Dynamic/*UNKNOW_TYPE*/;
	private var _currentActiveMeshes : Dynamic/*UNKNOW_TYPE*/;
	private var _currentRenderParticles : Dynamic/*UNKNOW_TYPE*/;
	private var _currentRenderSprites : Dynamic/*UNKNOW_TYPE*/;
	private var _autoClearDepthStencil : Dynamic/*UNKNOW_TYPE*/;
	private var _customOpaqueSortCompareFn : Dynamic/*UNKNOW_TYPE*/;
	private var _customAlphaTestSortCompareFn : Dynamic/*UNKNOW_TYPE*/;
	private var _customTransparentSortCompareFn : Dynamic/*UNKNOW_TYPE*/;
	private var _renderinGroupInfo : Dynamic/*UNKNOW_TYPE*/;
	function new(scene:Scene) : Void;
	private function _renderParticles(index, activeMeshes);
	private function _renderSprites(index);
	private function _clearDepthStencilBuffer();
	private function _renderSpritesAndParticles();
	function render(customRenderFunction: (opaqueSubMeshes:SmartArray<SubMesh>, transparentSubMeshes:SmartArray<SubMesh>, alphaTestSubMeshes:SmartArray<SubMesh>) => void, activeMeshes:Array<AbstractMesh>, renderParticles:Bool, renderSprites:Bool) : Void;
	function reset() : Void;
	function dispatch(subMesh:SubMesh) : Void;
	/**
	 * Overrides the default sort function applied in the renderging group to prepare the meshes.
	 * This allowed control for front to back rendering or reversly depending of the special needs.
	 *
	 * @param renderingGroupId The rendering group id corresponding to its index
	 * @param opaqueSortCompareFn The opaque queue comparison function use to sort.
	 * @param alphaTestSortCompareFn The alpha test queue comparison function use to sort.
	 * @param transparentSortCompareFn The transparent queue comparison function use to sort.
	 */
	function setRenderingOrder(renderingGroupId:Float, ?opaqueSortCompareFn:SubMesh->SubMesh->Float, ?alphaTestSortCompareFn:SubMesh->SubMesh->Float, ?transparentSortCompareFn:SubMesh->SubMesh->Float) : Void;
	/**
	 * Specifies whether or not the stencil and depth buffer are cleared between two rendering groups.
	 *
	 * @param renderingGroupId The rendering group id corresponding to its index
	 * @param autoClearDepthStencil Automatically clears depth and stencil between groups if true.
	 */
	function setRenderingAutoClearDepthStencil(renderingGroupId:Float, autoClearDepthStencil:Bool) : Void;
}