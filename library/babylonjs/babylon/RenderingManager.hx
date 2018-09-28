package babylonjs.babylon;

@:native("BABYLON.RenderingManager")
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
	/**
	 * Used to globally prevent autoclearing scenes.
	 */
	static var AUTOCLEAR : Bool;
	private var _scene : Dynamic;
	private var _renderingGroups : Dynamic;
	private var _depthStencilBufferAlreadyCleaned : Dynamic;
	private var _autoClearDepthStencil : Dynamic;
	private var _customOpaqueSortCompareFn : Dynamic;
	private var _customAlphaTestSortCompareFn : Dynamic;
	private var _customTransparentSortCompareFn : Dynamic;
	private var _renderinGroupInfo : Dynamic;

	function new(scene:Scene) : Void;
	private function _clearDepthStencilBuffer(?depth:Dynamic, ?stencil:Dynamic) : Dynamic;
	function render(customRenderFunction:Null<SmartArray<SubMesh>->SmartArray<SubMesh>->SmartArray<SubMesh>->SmartArray<SubMesh>->Void>, activeMeshes:Null<Array<AbstractMesh>>, renderParticles:Bool, renderSprites:Bool) : Void;
	function reset() : Void;
	function dispose() : Void;
	/**
	 * Clear the info related to rendering groups preventing retention points during dispose.
	 */
	function freeRenderingGroups() : Void;
	private function _prepareRenderingGroup(renderingGroupId:Dynamic) : Dynamic;
	function dispatchSprites(spriteManager:SpriteManager) : Void;
	function dispatchParticles(particleSystem:IParticleSystem) : Void;
	function dispatch(subMesh:SubMesh, ?mesh:AbstractMesh, ?material:Null<Material>) : Void;
	/**
	 * Overrides the default sort function applied in the renderging group to prepare the meshes.
	 * This allowed control for front to back rendering or reversly depending of the special needs.
	 */
	function setRenderingOrder(renderingGroupId:Float, ?opaqueSortCompareFn:Null<SubMesh->SubMesh->Float>, ?alphaTestSortCompareFn:Null<SubMesh->SubMesh->Float>, ?transparentSortCompareFn:Null<SubMesh->SubMesh->Float>) : Void;
	/**
	 * Specifies whether or not the stencil and depth buffer are cleared between two rendering groups.
	 */
	function setRenderingAutoClearDepthStencil(renderingGroupId:Float, autoClearDepthStencil:Bool, ?depth:Bool, ?stencil:Bool) : Void;
}