package babylon;

extern class RenderTargetTexture extends Texture
{
	var isCube : Bool;
	static var _REFRESHRATE_RENDER_ONCE : Float;
	static var _REFRESHRATE_RENDER_ONEVERYFRAME : Float;
	static var _REFRESHRATE_RENDER_ONEVERYTWOFRAMES : Float;
	static var REFRESHRATE_RENDER_ONCE : Float;
	static var REFRESHRATE_RENDER_ONEVERYFRAME : Float;
	static var REFRESHRATE_RENDER_ONEVERYTWOFRAMES : Float;
	/**
	* Use this predicate to dynamically define the list of mesh you want to render.
	* If set, the renderList property will be overwritten.
	*/
	renderListPredicate: (AbstractMesh) => boolean;
	/**
	* Use this list to define the list of mesh you want to render.
	*/
	var renderList : Array<AbstractMesh>;
	var renderParticles : Bool;
	var renderSprites : Bool;
	var coordinatesMode : Float;
	var activeCamera : Camera;
	customRenderFunction: (opaqueSubMeshes:SmartArray<SubMesh>, transparentSubMeshes:SmartArray<SubMesh>, alphaTestSubMeshes:SmartArray<SubMesh>, ?beforeTransparents:Void->Void) => void;
	var useCameraPostProcesses : Bool;
	/**
	* An event triggered when the texture is unbind.
	* @type {BABYLON.Observable}
	*/
	var onAfterUnbindObservable : Observable<RenderTargetTexture>;
	private var _onAfterUnbindObserver : Dynamic/*UNKNOW_TYPE*/;
	var onAfterUnbind : Void->Void;
	/**
	* An event triggered before rendering the texture
	* @type {BABYLON.Observable}
	*/
	var onBeforeRenderObservable : Observable<Float>;
	private var _onBeforeRenderObserver : Dynamic/*UNKNOW_TYPE*/;
	var onBeforeRender : Float->Void;
	/**
	* An event triggered after rendering the texture
	* @type {BABYLON.Observable}
	*/
	var onAfterRenderObservable : Observable<Float>;
	private var _onAfterRenderObserver : Dynamic/*UNKNOW_TYPE*/;
	var onAfterRender : Float->Void;
	/**
	* An event triggered after the texture clear
	* @type {BABYLON.Observable}
	*/
	var onClearObservable : Observable<Engine>;
	private var _onClearObserver : Dynamic/*UNKNOW_TYPE*/;
	var onClear : Engine->Void;
	private var _size : Dynamic/*UNKNOW_TYPE*/;
	var _generateMipMaps : Bool;
	private var _renderingManager : Dynamic/*UNKNOW_TYPE*/;
	var _waitingRenderList : Array<String>;
	private var _doNotChangeAspectRatio : Dynamic/*UNKNOW_TYPE*/;
	private var _currentRefreshId : Dynamic/*UNKNOW_TYPE*/;
	private var _refreshRate : Dynamic/*UNKNOW_TYPE*/;
	private var _textureMatrix : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, size:Dynamic, scene:Scene, ?generateMipMaps:Bool, ?doNotChangeAspectRatio:Bool, ?type:Float, ?isCube:Bool, ?samplingMode:Float, ?generateDepthBuffer:Bool, ?generateStencilBuffer:Bool) : Void;
	function resetRefreshCounter() : Void;
	var refreshRate : Float;
	function _shouldRender() : Bool;
	function isReady() : Bool;
	function getRenderSize() : Float;
	var canRescale : Bool;
	function scale(ratio:Float) : Void;
	function getReflectionTextureMatrix() : Matrix;
	function resize(size:Dynamic, ?generateMipMaps:Bool) : Void;
	function render(?useCameraPostProcess:Bool, ?dumpForDebug:Bool) : Void;
	function renderToTarget(faceIndex:Float, currentRenderList:Array<AbstractMesh>, currentRenderListLength:Float, useCameraPostProcess:Bool, dumpForDebug:Bool) : Void;
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
	function clone() : RenderTargetTexture;
	function serialize() : Dynamic;
}