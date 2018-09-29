package babylonjs;

@:native("BABYLON.RenderTargetTexture")
extern class RenderTargetTexture extends Texture
{
	//var isCube : Bool;
	static var _REFRESHRATE_RENDER_ONCE : Float;
	static var _REFRESHRATE_RENDER_ONEVERYFRAME : Float;
	static var _REFRESHRATE_RENDER_ONEVERYTWOFRAMES : Float;
	static var REFRESHRATE_RENDER_ONCE(default, null) : Float;
	static var REFRESHRATE_RENDER_ONEVERYFRAME(default, null) : Float;
	static var REFRESHRATE_RENDER_ONEVERYTWOFRAMES(default, null) : Float;
	/**
	 * Use this predicate to dynamically define the list of mesh you want to render.
	 * If set, the renderList property will be overwritten.
	 */
	var renderListPredicate : AbstractMesh->Bool;
	/**
	 * Use this list to define the list of mesh you want to render.
	 */
	var renderList : Null<Array<AbstractMesh>>;
	var renderParticles : Bool;
	var renderSprites : Bool;
	//var coordinatesMode : Float;
	var activeCamera : Null<Camera>;
	var customRenderFunction : SmartArray<SubMesh>->SmartArray<SubMesh>->SmartArray<SubMesh>->SmartArray<SubMesh>->Void->Void->Void;
	var useCameraPostProcesses : Bool;
	var ignoreCameraViewport : Bool;
	private var _postProcessManager : Dynamic;
	private var _postProcesses : Dynamic;
	private var _resizeObserver : Dynamic;
	/**
	 * An event triggered when the texture is unbind.
	 */
	var onBeforeBindObservable : Observable<RenderTargetTexture>;
	/**
	 * An event triggered when the texture is unbind.
	 */
	var onAfterUnbindObservable : Observable<RenderTargetTexture>;
	private var _onAfterUnbindObserver : Dynamic;
	var onAfterUnbind : Void->Void;
	/**
	 * An event triggered before rendering the texture
	 */
	var onBeforeRenderObservable : Observable<Float>;
	private var _onBeforeRenderObserver : Dynamic;
	var onBeforeRender : Float->Void;
	/**
	 * An event triggered after rendering the texture
	 */
	var onAfterRenderObservable : Observable<Float>;
	private var _onAfterRenderObserver : Dynamic;
	var onAfterRender : Float->Void;
	/**
	 * An event triggered after the texture clear
	 */
	var onClearObservable : Observable<Engine>;
	private var _onClearObserver : Dynamic;
	var onClear : Engine->Void;
	var clearColor : Color4;
	private var _size : haxe.extern.EitherType<Float, { var width : Float; var height : Float; }>;
	private var _initialSizeParameter : haxe.extern.EitherType<Float, haxe.extern.EitherType<{ var width : Float; var height : Float; }, { var ratio : Float; }>>;
	private var _sizeRatio : Null<Float>;
	var _generateMipMaps : Bool;
	private var _renderingManager : RenderingManager;
	var _waitingRenderList : Array<String>;
	private var _doNotChangeAspectRatio : Bool;
	private var _currentRefreshId : Float;
	private var _refreshRate : Float;
	private var _textureMatrix : Matrix;
	private var _samples : Float;
	private var _renderTargetOptions : RenderTargetCreationOptions;
	var renderTargetOptions(default, null) : RenderTargetCreationOptions;
	private var _engine : Engine;
	/**
	 * Gets or sets the center of the bounding box associated with the texture (when in cube mode)
	 * It must define where the camera used to render the texture is set
	 */
	var boundingBoxPosition : Vector3;
	private var _boundingBoxSize : Dynamic;
	/**
	 * Gets or sets the size of the bounding box associated with the texture (when in cube mode)
	 * When defined, the cubemap will switch to local mode
	 * @see https://community.arm.com/graphics/b/blog/posts/reflections-based-on-local-cubemaps-in-unity
	 * @example https://www.babylonjs-playground.com/#RNASML
	 */
	var boundingBoxSize : Vector3;
	/**
	 * In case the RTT has been created with a depth texture, get the associated
	 * depth texture.
	 * Otherwise, return null.
	 */
	var depthStencilTexture : Null<InternalTexture>;
	var samples : Float;
	var refreshRate : Float;
	//var canRescale(default, null) : Bool;

	function _onRatioRescale() : Void;
	@:overload(function(name:String, size:haxe.extern.EitherType<Float, haxe.extern.EitherType<{ var width : Float; var height : Float;},{ var ratio : Float;}>>, scene:Null<Scene>,?generateMipMaps:Bool,?doNotChangeAspectRatio:Bool,?type:Float,?isCube:Bool,?samplingMode:Float,?generateDepthBuffer:Bool,?generateStencilBuffer:Bool,?isMulti:Bool): Void{})
	function new(scene:Null<Scene>) : Void;
	/**
	 * Creates a depth stencil texture.
	 * This is only available in WebGL 2 or with the depth texture extension available.
	 */
	function createDepthStencilTexture(?comparisonFunction:Float, ?bilinearFiltering:Bool, ?generateStencil:Bool) : Void;
	private function _processSizeParameter(size:Dynamic) : Dynamic;
	function resetRefreshCounter() : Void;
	function addPostProcess(postProcess:PostProcess) : Void;
	function clearPostProcesses(?dispose:Bool) : Void;
	function removePostProcess(postProcess:PostProcess) : Void;
	function _shouldRender() : Bool;
	function getRenderSize() : Float;
	function getRenderWidth() : Float;
	function getRenderHeight() : Float;
	override function scale(ratio:Float) : Void;
	override function getReflectionTextureMatrix() : Matrix;
	function resize(size:haxe.extern.EitherType<Float, haxe.extern.EitherType<{ var width : Float; var height : Float; }, { var ratio : Float; }>>) : Void;
	function render(?useCameraPostProcess:Bool, ?dumpForDebug:Bool) : Void;
	private function _bestReflectionRenderTargetDimension(renderDimension:Dynamic, scale:Dynamic) : Dynamic;
	function unbindFrameBuffer(engine:Engine, faceIndex:Float) : Void;
	private function renderToTarget(faceIndex:Dynamic, currentRenderList:Dynamic, currentRenderListLength:Dynamic, useCameraPostProcess:Dynamic, dumpForDebug:Dynamic) : Dynamic;
	/**
	 * Overrides the default sort function applied in the renderging group to prepare the meshes.
	 * This allowed control for front to back rendering or reversly depending of the special needs.
	 */
	function setRenderingOrder(renderingGroupId:Float, ?opaqueSortCompareFn:Null<SubMesh->SubMesh->Float>, ?alphaTestSortCompareFn:Null<SubMesh->SubMesh->Float>, ?transparentSortCompareFn:Null<SubMesh->SubMesh->Float>) : Void;
	/**
	 * Specifies whether or not the stencil and depth buffer are cleared between two rendering groups.
	 */
	function setRenderingAutoClearDepthStencil(renderingGroupId:Float, autoClearDepthStencil:Bool) : Void;
	@:overload(function(): RenderTargetTexture{})
	override function clone() : Null<BaseTexture>;
	override function serialize() : Dynamic;
	function disposeFramebufferObjects() : Void;
	override function dispose() : Void;
	override function _rebuild() : Void;
	/**
	 * Clear the info related to rendering groups preventing retention point in material dispose.
	 */
	function freeRenderingGroups() : Void;
}