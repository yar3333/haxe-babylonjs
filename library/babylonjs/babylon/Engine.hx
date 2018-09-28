package babylonjs.babylon;

/**
 * The engine class is responsible for interfacing with all lower-level APIs such as WebGL and Audio
 */
@:native("BABYLON.Engine")
extern class Engine
{
	/**
	 * Use this array to turn off some WebGL2 features on known buggy browsers version 
	 */
	static var ExceptionList : Array<haxe.extern.EitherType<{ var key : String; var capture : String; var captureConstraint : Float; var targets : Array<String>; }, { var key : String; var capture : {}; var captureConstraint : {}; var targets : Array<String>; }>>;
	/**
	 * Gets the list of created engines 
	 */
	static var Instances : Array<Engine>;
	/**
	 * Gets the latest created engine
	 */
	static var LastCreatedEngine(default, null) : Null<Engine>;
	/**
	 * Gets the latest created scene
	 */
	static var LastCreatedScene(default, null) : Null<Scene>;
	private static var _ALPHA_DISABLE : Dynamic;
	private static var _ALPHA_ADD : Dynamic;
	private static var _ALPHA_COMBINE : Dynamic;
	private static var _ALPHA_SUBTRACT : Dynamic;
	private static var _ALPHA_MULTIPLY : Dynamic;
	private static var _ALPHA_MAXIMIZED : Dynamic;
	private static var _ALPHA_ONEONE : Dynamic;
	private static var _ALPHA_PREMULTIPLIED : Dynamic;
	private static var _ALPHA_PREMULTIPLIED_PORTERDUFF : Dynamic;
	private static var _ALPHA_INTERPOLATE : Dynamic;
	private static var _ALPHA_SCREENMODE : Dynamic;
	private static var _DELAYLOADSTATE_NONE : Dynamic;
	private static var _DELAYLOADSTATE_LOADED : Dynamic;
	private static var _DELAYLOADSTATE_LOADING : Dynamic;
	private static var _DELAYLOADSTATE_NOTLOADED : Dynamic;
	private static var _TEXTUREFORMAT_ALPHA : Dynamic;
	private static var _TEXTUREFORMAT_LUMINANCE : Dynamic;
	private static var _TEXTUREFORMAT_LUMINANCE_ALPHA : Dynamic;
	private static var _TEXTUREFORMAT_RGB : Dynamic;
	private static var _TEXTUREFORMAT_RGBA : Dynamic;
	private static var _TEXTUREFORMAT_R32F : Dynamic;
	private static var _TEXTUREFORMAT_RG32F : Dynamic;
	private static var _TEXTUREFORMAT_RGB32F : Dynamic;
	private static var _TEXTUREFORMAT_RGBA32F : Dynamic;
	private static var _TEXTURETYPE_UNSIGNED_INT : Dynamic;
	private static var _TEXTURETYPE_FLOAT : Dynamic;
	private static var _TEXTURETYPE_HALF_FLOAT : Dynamic;
	private static var _NEVER : Dynamic;
	private static var _ALWAYS : Dynamic;
	private static var _LESS : Dynamic;
	private static var _EQUAL : Dynamic;
	private static var _LEQUAL : Dynamic;
	private static var _GREATER : Dynamic;
	private static var _GEQUAL : Dynamic;
	private static var _NOTEQUAL : Dynamic;
	/**
	 * Passed to depthFunction or stencilFunction to specify depth or stencil tests will never pass. i.e. Nothing will be drawn 
	 */
	static var NEVER(default, null) : Float;
	/**
	 * Passed to depthFunction or stencilFunction to specify depth or stencil tests will always pass. i.e. Pixels will be drawn in the order they are drawn 
	 */
	static var ALWAYS(default, null) : Float;
	/**
	 * Passed to depthFunction or stencilFunction to specify depth or stencil tests will pass if the new depth value is less than the stored value 
	 */
	static var LESS(default, null) : Float;
	/**
	 * Passed to depthFunction or stencilFunction to specify depth or stencil tests will pass if the new depth value is equals to the stored value 
	 */
	static var EQUAL(default, null) : Float;
	/**
	 * Passed to depthFunction or stencilFunction to specify depth or stencil tests will pass if the new depth value is less than or equal to the stored value 
	 */
	static var LEQUAL(default, null) : Float;
	/**
	 * Passed to depthFunction or stencilFunction to specify depth or stencil tests will pass if the new depth value is greater than the stored value 
	 */
	static var GREATER(default, null) : Float;
	/**
	 * Passed to depthFunction or stencilFunction to specify depth or stencil tests will pass if the new depth value is greater than or equal to the stored value 
	 */
	static var GEQUAL(default, null) : Float;
	/**
	 * Passed to depthFunction or stencilFunction to specify depth or stencil tests will pass if the new depth value is not equal to the stored value 
	 */
	static var NOTEQUAL(default, null) : Float;
	private static var _KEEP : Dynamic;
	private static var _REPLACE : Dynamic;
	private static var _INCR : Dynamic;
	private static var _DECR : Dynamic;
	private static var _INVERT : Dynamic;
	private static var _INCR_WRAP : Dynamic;
	private static var _DECR_WRAP : Dynamic;
	/**
	 * Passed to stencilOperation to specify that stencil value must be kept 
	 */
	static var KEEP(default, null) : Float;
	/**
	 * Passed to stencilOperation to specify that stencil value must be replaced 
	 */
	static var REPLACE(default, null) : Float;
	/**
	 * Passed to stencilOperation to specify that stencil value must be incremented 
	 */
	static var INCR(default, null) : Float;
	/**
	 * Passed to stencilOperation to specify that stencil value must be decremented 
	 */
	static var DECR(default, null) : Float;
	/**
	 * Passed to stencilOperation to specify that stencil value must be inverted 
	 */
	static var INVERT(default, null) : Float;
	/**
	 * Passed to stencilOperation to specify that stencil value must be incremented with wrapping 
	 */
	static var INCR_WRAP(default, null) : Float;
	/**
	 * Passed to stencilOperation to specify that stencil value must be decremented with wrapping 
	 */
	static var DECR_WRAP(default, null) : Float;
	/**
	 * Defines that alpha blending is disabled 
	 */
	static var ALPHA_DISABLE(default, null) : Float;
	/**
	 * Defines that alpha blending to SRC + DEST 
	 */
	static var ALPHA_ONEONE(default, null) : Float;
	/**
	 * Defines that alpha blending to SRC ALPHA * SRC + DEST 
	 */
	static var ALPHA_ADD(default, null) : Float;
	/**
	 * Defines that alpha blending to SRC ALPHA * SRC + (1 - SRC ALPHA) * DEST 
	 */
	static var ALPHA_COMBINE(default, null) : Float;
	/**
	 * Defines that alpha blending to DEST - SRC * DEST 
	 */
	static var ALPHA_SUBTRACT(default, null) : Float;
	/**
	 * Defines that alpha blending to SRC * DEST 
	 */
	static var ALPHA_MULTIPLY(default, null) : Float;
	/**
	 * Defines that alpha blending to SRC ALPHA * SRC + (1 - SRC) * DEST 
	 */
	static var ALPHA_MAXIMIZED(default, null) : Float;
	/**
	 * Defines that alpha blending to SRC + (1 - SRC ALPHA) * DEST 
	 */
	static var ALPHA_PREMULTIPLIED(default, null) : Float;
	/**
	 * Defines that alpha blending to SRC + (1 - SRC ALPHA) * DEST
	 * Alpha will be set to (1 - SRC ALPHA) * DEST ALPHA
	 */
	static var ALPHA_PREMULTIPLIED_PORTERDUFF(default, null) : Float;
	/**
	 * Defines that alpha blending to CST * SRC + (1 - CST) * DEST 
	 */
	static var ALPHA_INTERPOLATE(default, null) : Float;
	/**
	 * Defines that alpha blending to SRC + (1 - SRC) * DEST
	 * Alpha will be set to SRC ALPHA + (1 - SRC ALPHA) * DEST ALPHA
	 */
	static var ALPHA_SCREENMODE(default, null) : Float;
	/**
	 * Defines that the ressource is not delayed
	 */
	static var DELAYLOADSTATE_NONE(default, null) : Float;
	/**
	 * Defines that the ressource was successfully delay loaded 
	 */
	static var DELAYLOADSTATE_LOADED(default, null) : Float;
	/**
	 * Defines that the ressource is currently delay loading 
	 */
	static var DELAYLOADSTATE_LOADING(default, null) : Float;
	/**
	 * Defines that the ressource is delayed and has not started loading 
	 */
	static var DELAYLOADSTATE_NOTLOADED(default, null) : Float;
	/**
	 * ALPHA 
	 */
	static var TEXTUREFORMAT_ALPHA(default, null) : Float;
	/**
	 * LUMINANCE 
	 */
	static var TEXTUREFORMAT_LUMINANCE(default, null) : Float;
	/**
	 * R32F
	 */
	static var TEXTUREFORMAT_R32F(default, null) : Float;
	/**
	 * RG32F
	 */
	static var TEXTUREFORMAT_RG32F(default, null) : Float;
	/**
	 * RGB32F
	 */
	static var TEXTUREFORMAT_RGB32F(default, null) : Float;
	/**
	 * RGBA32F
	 */
	static var TEXTUREFORMAT_RGBA32F(default, null) : Float;
	/**
	 * LUMINANCE_ALPHA 
	 */
	static var TEXTUREFORMAT_LUMINANCE_ALPHA(default, null) : Float;
	/**
	 * RGB 
	 */
	static var TEXTUREFORMAT_RGB(default, null) : Float;
	/**
	 * RGBA 
	 */
	static var TEXTUREFORMAT_RGBA(default, null) : Float;
	/**
	 * UNSIGNED_INT 
	 */
	static var TEXTURETYPE_UNSIGNED_INT(default, null) : Float;
	/**
	 * FLOAT 
	 */
	static var TEXTURETYPE_FLOAT(default, null) : Float;
	/**
	 * HALF_FLOAT 
	 */
	static var TEXTURETYPE_HALF_FLOAT(default, null) : Float;
	private static var _SCALEMODE_FLOOR : Dynamic;
	private static var _SCALEMODE_NEAREST : Dynamic;
	private static var _SCALEMODE_CEILING : Dynamic;
	/**
	 * Defines that texture rescaling will use a floor to find the closer power of 2 size 
	 */
	static var SCALEMODE_FLOOR(default, null) : Float;
	/**
	 * Defines that texture rescaling will look for the nearest power of 2 size 
	 */
	static var SCALEMODE_NEAREST(default, null) : Float;
	/**
	 * Defines that texture rescaling will use a ceil to find the closer power of 2 size 
	 */
	static var SCALEMODE_CEILING(default, null) : Float;
	/**
	 * Returns the current version of the framework
	 */
	static var Version(default, null) : String;
	/**
	 * Gets or sets the epsilon value used by collision engine
	 */
	static var CollisionsEpsilon : Float;
	/**
	 * Gets or sets the relative url used to load code if using the engine in non-minified mode
	 */
	static var CodeRepository : String;
	/**
	 * Gets or sets the relative url used to load shaders if using the engine in non-minified mode
	 */
	static var ShadersRepository : String;
	/**
	 * Gets or sets a boolean that indicates if textures must be forced to power of 2 size even if not required
	 */
	var forcePOTTextures : Bool;
	/**
	 * Gets a boolean indicating if the engine is currently rendering in fullscreen mode
	 */
	var isFullscreen : Bool;
	/**
	 * Gets a boolean indicating if the pointer is currently locked
	 */
	var isPointerLock : Bool;
	/**
	 * Gets or sets a boolean indicating if back faces must be culled (true by default)
	 */
	var cullBackFaces : Bool;
	/**
	 * Gets or sets a boolean indicating if the engine must keep rendering even if the window is not in foregroun
	 */
	var renderEvenInBackground : Bool;
	/**
	 * Gets or sets a boolean indicating that cache can be kept between frames
	 */
	var preventCacheWipeBetweenFrames : Bool;
	/**
	 * Gets or sets a boolean to enable/disable IndexedDB support and avoid XHR on .manifest
	 */
	var enableOfflineSupport : Bool;
	/**
	 * Gets or sets a boolean to enable/disable checking manifest if IndexedDB support is enabled (Babylon.js will always consider the database is up to date)
	 */
	var disableManifestCheck : Bool;
	/**
	 * Gets the list of created scenes
	 */
	var scenes : Array<Scene>;
	/**
	 * Gets the list of created postprocesses
	 */
	var postProcesses : Array<PostProcess>;
	/**
	 * Observable event triggered each time the rendering canvas is resized
	 */
	var onResizeObservable : Observable<Engine>;
	/**
	 * Observable event triggered each time the canvas loses focus
	 */
	var onCanvasBlurObservable : Observable<Engine>;
	/**
	 * Observable event triggered each time the canvas gains focus
	 */
	var onCanvasFocusObservable : Observable<Engine>;
	/**
	 * Observable event triggered each time the canvas receives pointerout event
	 */
	var onCanvasPointerOutObservable : Observable<js.html.PointerEvent>;
	/**
	 * Observable event triggered before each texture is initialized
	 */
	var onBeforeTextureInitObservable : Observable<Texture>;
	private var _vrDisplay : Dynamic;
	private var _vrSupported : Dynamic;
	private var _oldSize : Dynamic;
	private var _oldHardwareScaleFactor : Dynamic;
	private var _vrExclusivePointerMode : Dynamic;
	private var _webVRInitPromise : Dynamic;
	/**
	 * Gets a boolean indicating that the engine is currently in VR exclusive mode for the pointers
	 * @see https://docs.microsoft.com/en-us/microsoft-edge/webvr/essentials#mouse-input
	 */
	var isInVRExclusivePointerMode(default, null) : Bool;
	/**
	 * Gets or sets a boolean indicating that uniform buffers must be disabled even if they are supported
	 */
	var disableUniformBuffers : Bool;
	/**
	 * @hidden 
	 */
	var _uniformBuffers : Array<UniformBuffer>;
	/**
	 * Gets a boolean indicating that the engine supports uniform buffers
	 * @see http://doc.babylonjs.com/features/webgl2#uniform-buffer-objets
	 */
	var supportsUniformBuffers(default, null) : Bool;
	/**
	 * Observable raised when the engine begins a new frame
	 */
	var onBeginFrameObservable : Observable<Engine>;
	/**
	 * Observable raised when the engine ends the current frame
	 */
	var onEndFrameObservable : Observable<Engine>;
	/**
	 * Observable raised when the engine is about to compile a shader
	 */
	var onBeforeShaderCompilationObservable : Observable<Engine>;
	/**
	 * Observable raised when the engine has jsut compiled a shader
	 */
	var onAfterShaderCompilationObservable : Observable<Engine>;
	private var _gl : Dynamic;
	private var _renderingCanvas : Dynamic;
	private var _windowIsBackground : Dynamic;
	private var _webGLVersion : Dynamic;
	/**
	 * Gets a boolean indicating that only power of 2 textures are supported
	 * Please note that you can still use non power of 2 textures but in this case the engine will forcefully convert them
	 */
	var needPOTTextures(default, null) : Bool;
	/**
	 * @hidden 
	 */
	var _badOS : Bool;
	/**
	 * @hidden 
	 */
	var _badDesktopOS : Bool;
	/**
	 * Gets or sets a value indicating if we want to disable texture binding optmization.
	 * This could be required on some buggy drivers which wants to have textures bound in a progressive order.
	 * By default Babylon.js will try to let textures bound where they are and only update the samplers to point where the texture is
	 */
	var disableTextureBindingOptimization : Bool;
	/**
	 * Gets the audio engine
	 * @see http://doc.babylonjs.com/how_to/playing_sounds_and_music
	 * @ignorenaming
	 */
	static var audioEngine : AudioEngine;
	private var _onFocus : Dynamic;
	private var _onBlur : Dynamic;
	private var _onCanvasPointerOut : Dynamic;
	private var _onCanvasBlur : Dynamic;
	private var _onCanvasFocus : Dynamic;
	private var _onFullscreenChange : Dynamic;
	private var _onPointerLockChange : Dynamic;
	private var _onVRDisplayPointerRestricted : Dynamic;
	private var _onVRDisplayPointerUnrestricted : Dynamic;
	private var _onVrDisplayConnect : Dynamic;
	private var _onVrDisplayDisconnect : Dynamic;
	private var _onVrDisplayPresentChange : Dynamic;
	/**
	 * Observable signaled when VR display mode changes
	 */
	var onVRDisplayChangedObservable : Observable<IDisplayChangedEventArgs>;
	/**
	 * Observable signaled when VR request present is complete
	 */
	var onVRRequestPresentComplete : Observable<Bool>;
	/**
	 * Observable signaled when VR request present starts
	 */
	var onVRRequestPresentStart : Observable<Engine>;
	private var _hardwareScalingLevel : Dynamic;
	/**
	 * @hidden 
	 */
	private var _caps : EngineCapabilities;
	private var _pointerLockRequested : Dynamic;
	private var _isStencilEnable : Dynamic;
	private var _colorWrite : Dynamic;
	private var _loadingScreen : Dynamic;
	/**
	 * @hidden 
	 */
	var _drawCalls : PerfCounter;
	/**
	 * @hidden 
	 */
	var _textureCollisions : PerfCounter;
	private var _glVersion : Dynamic;
	private var _glRenderer : Dynamic;
	private var _glVendor : Dynamic;
	private var _videoTextureSupported : Dynamic;
	private var _renderingQueueLaunched : Dynamic;
	private var _activeRenderLoops : Dynamic;
	private var _deterministicLockstep : Dynamic;
	private var _lockstepMaxSteps : Dynamic;
	/**
	 * Observable signaled when a context lost event is raised
	 */
	var onContextLostObservable : Observable<Engine>;
	/**
	 * Observable signaled when a context restored event is raised
	 */
	var onContextRestoredObservable : Observable<Engine>;
	private var _onContextLost : Dynamic;
	private var _onContextRestored : Dynamic;
	private var _contextWasLost : Dynamic;
	private var _doNotHandleContextLost : Dynamic;
	private var _performanceMonitor : Dynamic;
	private var _fps : Dynamic;
	private var _deltaTime : Dynamic;
	/**
	 * Turn this value on if you want to pause FPS computation when in background
	 */
	var disablePerformanceMonitorInBackground : Bool;
	/**
	 * Gets the performance monitor attached to this engine
	 * @see http://doc.babylonjs.com/how_to/optimizing_your_scene#engineinstrumentation
	 */
	var performanceMonitor(default, null) : PerformanceMonitor;
	/**
	 * @hidden 
	 */
	private var _depthCullingState : _DepthCullingState;
	/**
	 * @hidden 
	 */
	private var _stencilState : _StencilState;
	/**
	 * @hidden 
	 */
	private var _alphaState : _AlphaState;
	/**
	 * @hidden 
	 */
	private var _alphaMode : Float;
	private var _internalTexturesCache : Dynamic;
	/**
	 * @hidden 
	 */
	private var _activeChannel : Float;
	private var _currentTextureChannel : Dynamic;
	/**
	 * @hidden 
	 */
	private var _boundTexturesCache : Dynamic<Null<InternalTexture>>;
	/**
	 * @hidden 
	 */
	private var _currentEffect : Null<Effect>;
	/**
	 * @hidden 
	 */
	private var _currentProgram : Null<WebGLProgram>;
	private var _compiledEffects : Dynamic;
	private var _vertexAttribArraysEnabled : Dynamic;
	/**
	 * @hidden 
	 */
	private var _cachedViewport : Null<Viewport>;
	private var _cachedVertexArrayObject : Dynamic;
	/**
	 * @hidden 
	 */
	private var _cachedVertexBuffers : Dynamic;
	/**
	 * @hidden 
	 */
	private var _cachedIndexBuffer : Null<WebGLBuffer>;
	/**
	 * @hidden 
	 */
	private var _cachedEffectForVertexBuffers : Null<Effect>;
	/**
	 * @hidden 
	 */
	private var _currentRenderTarget : Null<InternalTexture>;
	private var _uintIndicesCurrentlySet : Dynamic;
	private var _currentBoundBuffer : Dynamic;
	/**
	 * @hidden 
	 */
	private var _currentFramebuffer : Null<js.html.webgl.Framebuffer>;
	private var _currentBufferPointers : Dynamic;
	private var _currentInstanceLocations : Dynamic;
	private var _currentInstanceBuffers : Dynamic;
	private var _textureUnits : Dynamic;
	private var _firstBoundInternalTextureTracker : Dynamic;
	private var _lastBoundInternalTextureTracker : Dynamic;
	private var _workingCanvas : Dynamic;
	private var _workingContext : Dynamic;
	private var _rescalePostProcess : Dynamic;
	private var _dummyFramebuffer : Dynamic;
	private var _externalData : Dynamic;
	private var _bindedRenderFunction : Dynamic;
	private var _vaoRecordInProgress : Dynamic;
	private var _mustWipeVertexAttributes : Dynamic;
	private var _emptyTexture : Dynamic;
	private var _emptyCubeTexture : Dynamic;
	private var _emptyTexture3D : Dynamic;
	private var _frameHandler : Dynamic;
	private var _nextFreeTextureSlots : Dynamic;
	private var _maxSimultaneousTextures : Dynamic;
	private var _activeRequests : Dynamic;
	private var _texturesSupported : Dynamic;
	private var _textureFormatInUse : Dynamic;
	/**
	 * Gets the list of texture formats supported
	 */
	var texturesSupported(default, null) : Array<String>;
	/**
	 * Gets the list of texture formats in use
	 */
	var textureFormatInUse(default, null) : Null<String>;
	/**
	 * Gets the current viewport
	 */
	var currentViewport(default, null) : Null<Viewport>;
	/**
	 * Gets the default empty texture
	 */
	var emptyTexture(default, null) : InternalTexture;
	/**
	 * Gets the default empty 3D texture
	 */
	var emptyTexture3D(default, null) : InternalTexture;
	/**
	 * Gets the default empty cube texture
	 */
	var emptyCubeTexture(default, null) : InternalTexture;
	/**
	 * Gets version of the current webGL context
	 */
	var webGLVersion(default, null) : Float;
	/**
	 * Returns true if the stencil buffer has been enabled through the creation option of the context.
	 */
	var isStencilEnable(default, null) : Bool;
	/**
	 * @hidden 
	 */
	var drawCalls(default, null) : Float;
	/**
	 * @hidden 
	 */
	var drawCallsPerfCounter(default, null) : Null<PerfCounter>;
	private var _onVRFullScreenTriggered : Dynamic;
	private var _boundUniforms : Dynamic;
	/**
	 * Gets the current loading screen object
	 * @see http://doc.babylonjs.com/how_to/creating_a_custom_loading_screen
	 * Sets the current loading screen object
	 * @see http://doc.babylonjs.com/how_to/creating_a_custom_loading_screen
	 */
	var loadingScreen : ILoadingScreen;
	/**
	 * Sets the current loading screen text
	 * @see http://doc.babylonjs.com/how_to/creating_a_custom_loading_screen
	 */
	var loadingUIText : String;
	/**
	 * Sets the current loading screen background color
	 * @see http://doc.babylonjs.com/how_to/creating_a_custom_loading_screen
	 */
	var loadingUIBackgroundColor : String;
	private var _currentNonTimestampToken : Dynamic;

	/**
	 * Will flag all materials in all scenes in all engines as dirty to trigger new shader compilation
	 */
	static function MarkAllMaterialsAsDirty(flag:Float, ?predicate:Material->Bool) : Void;
	/**
	 * The engine class is responsible for interfacing with all lower-level APIs such as WebGL and Audio
	 */
	function new(canvasOrContext:Null<haxe.extern.EitherType<js.html.CanvasElement, js.html.webgl.RenderingContext>>, ?antialias:Bool, ?options:EngineOptions, ?adaptToDeviceRatio:Bool) : Void;
	private function _rebuildInternalTextures() : Dynamic;
	private function _rebuildEffects() : Dynamic;
	private function _rebuildBuffers() : Dynamic;
	private function _initGLContext() : Dynamic;
	private function _prepareWorkingCanvas() : Dynamic;
	/**
	 * Reset the texture cache to empty state
	 */
	function resetTextureCache() : Void;
	/**
	 * Gets a boolean indicating that the engine is running in deterministic lock step mode
	 * @see http://doc.babylonjs.com/babylon101/animations#deterministic-lockstep
	 * @returns true if engine is in deterministic lock step mode
	 */
	function isDeterministicLockStep() : Bool;
	/**
	 * Gets the max steps when engine is running in deterministic lock step
	 * @see http://doc.babylonjs.com/babylon101/animations#deterministic-lockstep
	 * @returns the max steps
	 */
	function getLockstepMaxSteps() : Float;
	/**
	 * Gets an object containing information about the current webGL context
	 * @returns an object containing the vender, the renderer and the version of the current webGL context
	 */
	function getGlInfo() : { var vendor : String; var renderer : String; var version : String; };
	/**
	 * Gets current aspect ratio
	 * @returns a number defining the aspect ratio
	 */
	function getAspectRatio(camera:Camera, ?useScreen:Bool) : Float;
	/**
	 * Gets the current render width
	 * @returns a number defining the current render width
	 */
	function getRenderWidth(?useScreen:Bool) : Float;
	/**
	 * Gets the current render height
	 * @returns a number defining the current render height
	 */
	function getRenderHeight(?useScreen:Bool) : Float;
	/**
	 * Gets the HTML canvas attached with the current webGL context
	 * @returns a HTML canvas
	 */
	function getRenderingCanvas() : Null<js.html.CanvasElement>;
	/**
	 * Gets the client rect of the HTML canvas attached with the current webGL context
	 * @returns a client rectanglee
	 */
	function getRenderingCanvasClientRect() : Null<ClientRect>;
	/**
	 * Defines the hardware scaling level.
	 * By default the hardware scaling level is computed from the window device ratio.
	 * if level = 1 then the engine will render at the exact resolution of the canvas. If level = 0.5 then the engine will render at twice the size of the canvas.
	 */
	function setHardwareScalingLevel(level:Float) : Void;
	/**
	 * Gets the current hardware scaling level.
	 * By default the hardware scaling level is computed from the window device ratio.
	 * if level = 1 then the engine will render at the exact resolution of the canvas. If level = 0.5 then the engine will render at twice the size of the canvas.
	 * @returns a number indicating the current hardware scaling level
	 */
	function getHardwareScalingLevel() : Float;
	/**
	 * Gets the list of loaded textures
	 * @returns an array containing all loaded textures
	 */
	function getLoadedTexturesCache() : Array<InternalTexture>;
	/**
	 * Gets the object containing all engine capabilities
	 * @returns the EngineCapabilities object
	 */
	function getCaps() : EngineCapabilities;
	/**
	 * Gets the current depth function
	 * @returns a number defining the depth function
	 */
	function getDepthFunction() : Null<Float>;
	/**
	 * Sets the current depth function
	 */
	function setDepthFunction(depthFunc:Float) : Void;
	/**
	 * Sets the current depth function to GREATER
	 */
	function setDepthFunctionToGreater() : Void;
	/**
	 * Sets the current depth function to GEQUAL
	 */
	function setDepthFunctionToGreaterOrEqual() : Void;
	/**
	 * Sets the current depth function to LESS
	 */
	function setDepthFunctionToLess() : Void;
	/**
	 * Sets the current depth function to LEQUAL
	 */
	function setDepthFunctionToLessOrEqual() : Void;
	/**
	 * Gets a boolean indicating if stencil buffer is enabled
	 * @returns the current stencil buffer state
	 */
	function getStencilBuffer() : Bool;
	/**
	 * Enable or disable the stencil buffer
	 */
	function setStencilBuffer(enable:Bool) : Void;
	/**
	 * Gets the current stencil mask
	 * @returns a number defining the new stencil mask to use
	 */
	function getStencilMask() : Float;
	/**
	 * Sets the current stencil mask
	 */
	function setStencilMask(mask:Float) : Void;
	/**
	 * Gets the current stencil function
	 * @returns a number defining the stencil function to use
	 */
	function getStencilFunction() : Float;
	/**
	 * Gets the current stencil reference value
	 * @returns a number defining the stencil reference value to use
	 */
	function getStencilFunctionReference() : Float;
	/**
	 * Gets the current stencil mask
	 * @returns a number defining the stencil mask to use
	 */
	function getStencilFunctionMask() : Float;
	/**
	 * Sets the current stencil function
	 */
	function setStencilFunction(stencilFunc:Float) : Void;
	/**
	 * Sets the current stencil reference
	 */
	function setStencilFunctionReference(reference:Float) : Void;
	/**
	 * Sets the current stencil mask
	 */
	function setStencilFunctionMask(mask:Float) : Void;
	/**
	 * Gets the current stencil operation when stencil fails
	 * @returns a number defining stencil operation to use when stencil fails
	 */
	function getStencilOperationFail() : Float;
	/**
	 * Gets the current stencil operation when depth fails
	 * @returns a number defining stencil operation to use when depth fails
	 */
	function getStencilOperationDepthFail() : Float;
	/**
	 * Gets the current stencil operation when stencil passes
	 * @returns a number defining stencil operation to use when stencil passes
	 */
	function getStencilOperationPass() : Float;
	/**
	 * Sets the stencil operation to use when stencil fails
	 */
	function setStencilOperationFail(operation:Float) : Void;
	/**
	 * Sets the stencil operation to use when depth fails
	 */
	function setStencilOperationDepthFail(operation:Float) : Void;
	/**
	 * Sets the stencil operation to use when stencil passes
	 */
	function setStencilOperationPass(operation:Float) : Void;
	/**
	 * Sets a boolean indicating if the dithering state is enabled or disabled
	 */
	function setDitheringState(value:Bool) : Void;
	/**
	 * Sets a boolean indicating if the rasterizer state is enabled or disabled
	 */
	function setRasterizerState(value:Bool) : Void;
	/**
	 * stop executing a render loop function and remove it from the execution array
	 */
	function stopRenderLoop(?renderFunction:Void->Void) : Void;
	/**
	 * @hidden 
	 */
	function _renderLoop() : Void;
	/**
	 * Register and execute a render loop. The engine can have more than one render function
	 */
	function runRenderLoop(renderFunction:Void->Void) : Void;
	/**
	 * Toggle full screen mode
	 */
	function switchFullscreen(requestPointerLock:Bool) : Void;
	/**
	 * Clear the current render buffer or the current render target (if any is set up)
	 */
	function clear(color:Null<Color4>, backBuffer:Bool, depth:Bool, ?stencil:Bool) : Void;
	/**
	 * Executes a scissor clear (ie. a clear on a specific portion of the screen)
	 */
	function scissorClear(x:Float, y:Float, width:Float, height:Float, clearColor:Color4) : Void;
	/**
	 * Set the WebGL's viewport
	 */
	function setViewport(viewport:Viewport, ?requiredWidth:Float, ?requiredHeight:Float) : Void;
	/**
	 * Directly set the WebGL Viewport
	 * @return the current viewport Object (if any) that is being replaced by this call. You can restore this viewport later on to go back to the original state
	 */
	function setDirectViewport(x:Float, y:Float, width:Float, height:Float) : Null<Viewport>;
	/**
	 * Begin a new frame
	 */
	function beginFrame() : Void;
	/**
	 * Enf the current frame
	 */
	function endFrame() : Void;
	/**
	 * Resize the view according to the canvas' size
	 */
	function resize() : Void;
	/**
	 * Force a specific size of the canvas
	 */
	function setSize(width:Float, height:Float) : Void;
	/**
	 * Gets a boolean indicating if a webVR device was detected
	 * @returns true if a webVR device was detected
	 */
	function isVRDevicePresent() : Bool;
	/**
	 * Gets the current webVR device
	 * @returns the current webVR device (or null)
	 */
	function getVRDevice() : Dynamic;
	/**
	 * Initializes a webVR display and starts listening to display change events
	 * The onVRDisplayChangedObservable will be notified upon these changes
	 * @returns The onVRDisplayChangedObservable
	 */
	function initWebVR() : Observable<IDisplayChangedEventArgs>;
	/**
	 * Initializes a webVR display and starts listening to display change events
	 * The onVRDisplayChangedObservable will be notified upon these changes
	 * @returns A promise containing a VRDisplay and if vr is supported
	 */
	function initWebVRAsync() : js.Promise<IDisplayChangedEventArgs>;
	/**
	 * Call this function to switch to webVR mode
	 * Will do nothing if webVR is not supported or if there is no webVR device
	 * @see http://doc.babylonjs.com/how_to/webvr_camera
	 */
	function enableVR() : Void;
	/**
	 * Call this function to leave webVR mode
	 * Will do nothing if webVR is not supported or if there is no webVR device
	 * @see http://doc.babylonjs.com/how_to/webvr_camera
	 */
	function disableVR() : Void;
	private function _getVRDisplaysAsync() : Dynamic;
	/**
	 * Binds the frame buffer to the specified texture.
	 */
	function bindFramebuffer(texture:InternalTexture, ?faceIndex:Float, ?requiredWidth:Float, ?requiredHeight:Float, ?forceFullscreenViewport:Bool, ?depthStencilTexture:InternalTexture) : Void;
	private function bindUnboundFramebuffer(framebuffer:Dynamic) : Dynamic;
	/**
	 * Unbind the current render target texture from the webGL context
	 */
	function unBindFramebuffer(texture:InternalTexture, ?disableGenerateMipMaps:Bool, ?onBeforeUnbind:Void->Void) : Void;
	/**
	 * Unbind a list of render target textures from the webGL context
	 * This is used only when drawBuffer extension or webGL2 are active
	 */
	function unBindMultiColorAttachmentFramebuffer(textures:Array<InternalTexture>, ?disableGenerateMipMaps:Bool, ?onBeforeUnbind:Void->Void) : Void;
	/**
	 * Force the mipmap generation for the given render target texture
	 */
	function generateMipMapsForCubemap(texture:InternalTexture) : Void;
	/**
	 * Force a webGL flush (ie. a flush of all waiting webGL commands)
	 */
	function flushFramebuffer() : Void;
	/**
	 * Unbind the current render target and bind the default framebuffer
	 */
	function restoreDefaultFramebuffer() : Void;
	/**
	 * Create an uniform buffer
	 * @see http://doc.babylonjs.com/features/webgl2#uniform-buffer-objets
	 * @returns the webGL uniform buffer
	 */
	function createUniformBuffer(elements:FloatArray) : WebGLBuffer;
	/**
	 * Create a dynamic uniform buffer
	 * @see http://doc.babylonjs.com/features/webgl2#uniform-buffer-objets
	 * @returns the webGL uniform buffer
	 */
	function createDynamicUniformBuffer(elements:FloatArray) : WebGLBuffer;
	/**
	 * Update an existing uniform buffer
	 * @see http://doc.babylonjs.com/features/webgl2#uniform-buffer-objets
	 */
	function updateUniformBuffer(uniformBuffer:WebGLBuffer, elements:FloatArray, ?offset:Float, ?count:Float) : Void;
	private function _resetVertexBufferBinding() : Dynamic;
	/**
	 * Creates a vertex buffer
	 * @returns the new WebGL static buffer
	 */
	function createVertexBuffer(data:DataArray) : WebGLBuffer;
	/**
	 * Creates a dynamic vertex buffer
	 * @returns the new WebGL dynamic buffer
	 */
	function createDynamicVertexBuffer(data:DataArray) : WebGLBuffer;
	/**
	 * Update a dynamic index buffer
	 */
	function updateDynamicIndexBuffer(indexBuffer:WebGLBuffer, indices:IndicesArray, ?offset:Float) : Void;
	/**
	 * Updates a dynamic vertex buffer.
	 */
	function updateDynamicVertexBuffer(vertexBuffer:WebGLBuffer, data:DataArray, ?byteOffset:Float, ?byteLength:Float) : Void;
	private function _resetIndexBufferBinding() : Dynamic;
	/**
	 * Creates a new index buffer
	 * @returns a new webGL buffer
	 */
	function createIndexBuffer(indices:IndicesArray, ?updatable:Bool) : WebGLBuffer;
	/**
	 * Bind a webGL buffer to the webGL context
	 */
	function bindArrayBuffer(buffer:Null<WebGLBuffer>) : Void;
	/**
	 * Bind an uniform buffer to the current webGL context
	 */
	function bindUniformBuffer(buffer:Null<WebGLBuffer>) : Void;
	/**
	 * Bind a buffer to the current webGL context at a given location
	 */
	function bindUniformBufferBase(buffer:WebGLBuffer, location:Float) : Void;
	/**
	 * Bind a specific block at a given index in a specific shader program
	 */
	function bindUniformBlock(shaderProgram:WebGLProgram, blockName:String, index:Float) : Void;
	private function bindIndexBuffer(buffer:Dynamic) : Dynamic;
	private function bindBuffer(buffer:Dynamic, target:Dynamic) : Dynamic;
	/**
	 * update the bound buffer with the given data
	 */
	function updateArrayBuffer(data:js.html.Float32Array) : Void;
	private function _vertexAttribPointer(buffer:Dynamic, indx:Dynamic, size:Dynamic, type:Dynamic, normalized:Dynamic, stride:Dynamic, offset:Dynamic) : Dynamic;
	private function _bindIndexBufferWithCache(indexBuffer:Dynamic) : Dynamic;
	private function _bindVertexBuffersAttributes(vertexBuffers:Dynamic, effect:Dynamic) : Dynamic;
	/**
	 * Records a vertex array object
	 * @see http://doc.babylonjs.com/features/webgl2#vertex-array-objects
	 * @returns the new vertex array object
	 */
	function recordVertexArrayObject(vertexBuffers:Dynamic<VertexBuffer>, indexBuffer:Null<WebGLBuffer>, effect:Effect) : WebGLVertexArrayObject;
	/**
	 * Bind a specific vertex array object
	 * @see http://doc.babylonjs.com/features/webgl2#vertex-array-objects
	 */
	function bindVertexArrayObject(vertexArrayObject:WebGLVertexArrayObject, indexBuffer:Null<WebGLBuffer>) : Void;
	/**
	 * Bind webGl buffers directly to the webGL context
	 */
	function bindBuffersDirectly(vertexBuffer:WebGLBuffer, indexBuffer:WebGLBuffer, vertexDeclaration:Array<Float>, vertexStrideSize:Float, effect:Effect) : Void;
	private function _unbindVertexArrayObject() : Dynamic;
	/**
	 * Bind a list of vertex buffers to the webGL context
	 */
	function bindBuffers(vertexBuffers:Dynamic<Null<VertexBuffer>>, indexBuffer:Null<WebGLBuffer>, effect:Effect) : Void;
	/**
	 * Unbind all instance attributes
	 */
	function unbindInstanceAttributes() : Void;
	/**
	 * Release and free the memory of a vertex array object
	 */
	function releaseVertexArrayObject(vao:WebGLVertexArrayObject) : Void;
	/**
	 * @hidden 
	 */
	function _releaseBuffer(buffer:WebGLBuffer) : Bool;
	/**
	 * Creates a webGL buffer to use with instanciation
	 * @returns the webGL buffer
	 */
	function createInstancesBuffer(capacity:Float) : WebGLBuffer;
	/**
	 * Delete a webGL buffer used with instanciation
	 */
	function deleteInstancesBuffer(buffer:WebGLBuffer) : Void;
	/**
	 * Update the content of a webGL buffer used with instanciation and bind it to the webGL context
	 */
	function updateAndBindInstancesBuffer(instancesBuffer:WebGLBuffer, data:js.html.Float32Array, offsetLocations:haxe.extern.EitherType<Array<Float>, Array<InstancingAttributeInfo>>) : Void;
	/**
	 * Apply all cached states (depth, culling, stencil and alpha)
	 */
	function applyStates() : Void;
	/**
	 * Send a draw order
	 */
	function draw(useTriangles:Bool, indexStart:Float, indexCount:Float, ?instancesCount:Float) : Void;
	/**
	 * Draw a list of points
	 */
	function drawPointClouds(verticesStart:Float, verticesCount:Float, ?instancesCount:Float) : Void;
	/**
	 * Draw a list of unindexed primitives
	 */
	function drawUnIndexed(useTriangles:Bool, verticesStart:Float, verticesCount:Float, ?instancesCount:Float) : Void;
	/**
	 * Draw a list of indexed primitives
	 */
	function drawElementsType(fillMode:Float, indexStart:Float, indexCount:Float, ?instancesCount:Float) : Void;
	/**
	 * Draw a list of unindexed primitives
	 */
	function drawArraysType(fillMode:Float, verticesStart:Float, verticesCount:Float, ?instancesCount:Float) : Void;
	private function _drawMode(fillMode:Dynamic) : Dynamic;
	/**
	 * @hidden 
	 */
	function _releaseEffect(effect:Effect) : Void;
	/**
	 * @hidden 
	 */
	function _deleteProgram(program:WebGLProgram) : Void;
	/**
	 * Create a new effect (used to store vertex/fragment shaders)
	 * @returns the new Effect
	 */
	function createEffect(baseName:Dynamic, attributesNamesOrOptions:haxe.extern.EitherType<Array<String>, EffectCreationOptions>, uniformsNamesOrEngine:haxe.extern.EitherType<Array<String>, Engine>, ?samplers:Array<String>, ?defines:String, ?fallbacks:EffectFallbacks, ?onCompiled:Effect->Void, ?onError:Effect->String->Void, ?indexParameters:Dynamic) : Effect;
	/**
	 * Create an effect to use with particle systems
	 * @returns the new Effect
	 */
	function createEffectForParticles(fragmentName:String, ?uniformsNames:Array<String>, ?samplers:Array<String>, ?defines:String, ?fallbacks:EffectFallbacks, ?onCompiled:Effect->Void, ?onError:Effect->String->Void) : Effect;
	/**
	 * Directly creates a webGL program
	 * @returns the new webGL program
	 */
	function createRawShaderProgram(vertexCode:String, fragmentCode:String, ?context:js.html.webgl.RenderingContext, ?transformFeedbackVaryings:Null<Array<String>>) : WebGLProgram;
	/**
	 * Creates a webGL program
	 * @returns the new webGL program
	 */
	function createShaderProgram(vertexCode:String, fragmentCode:String, defines:Null<String>, ?context:js.html.webgl.RenderingContext, ?transformFeedbackVaryings:Null<Array<String>>) : WebGLProgram;
	private function _createShaderProgram(vertexShader:Dynamic, fragmentShader:Dynamic, context:Dynamic, ?transformFeedbackVaryings:Dynamic) : Dynamic;
	/**
	 * Gets the list of webGL uniform locations associated with a specific program based on a list of uniform names
	 * @returns an array of webGL uniform locations
	 */
	function getUniforms(shaderProgram:WebGLProgram, uniformsNames:Array<String>) : Array<Null<WebGLUniformLocation>>;
	/**
	 * Gets the lsit of active attributes for a given webGL program
	 * @returns an array of indices indicating the offset of each attribute
	 */
	function getAttributes(shaderProgram:WebGLProgram, attributesNames:Array<String>) : Array<Float>;
	/**
	 * Activates an effect, mkaing it the current one (ie. the one used for rendering)
	 */
	function enableEffect(effect:Null<Effect>) : Void;
	/**
	 * Set the value of an uniform to an array of int32
	 */
	function setIntArray(uniform:Null<WebGLUniformLocation>, array:js.html.Int32Array) : Void;
	/**
	 * Set the value of an uniform to an array of int32 (stored as vec2)
	 */
	function setIntArray2(uniform:Null<WebGLUniformLocation>, array:js.html.Int32Array) : Void;
	/**
	 * Set the value of an uniform to an array of int32 (stored as vec3)
	 */
	function setIntArray3(uniform:Null<WebGLUniformLocation>, array:js.html.Int32Array) : Void;
	/**
	 * Set the value of an uniform to an array of int32 (stored as vec4)
	 */
	function setIntArray4(uniform:Null<WebGLUniformLocation>, array:js.html.Int32Array) : Void;
	/**
	 * Set the value of an uniform to an array of float32
	 */
	function setFloatArray(uniform:Null<WebGLUniformLocation>, array:js.html.Float32Array) : Void;
	/**
	 * Set the value of an uniform to an array of float32 (stored as vec2)
	 */
	function setFloatArray2(uniform:Null<WebGLUniformLocation>, array:js.html.Float32Array) : Void;
	/**
	 * Set the value of an uniform to an array of float32 (stored as vec3)
	 */
	function setFloatArray3(uniform:Null<WebGLUniformLocation>, array:js.html.Float32Array) : Void;
	/**
	 * Set the value of an uniform to an array of float32 (stored as vec4)
	 */
	function setFloatArray4(uniform:Null<WebGLUniformLocation>, array:js.html.Float32Array) : Void;
	/**
	 * Set the value of an uniform to an array of number
	 */
	function setArray(uniform:Null<WebGLUniformLocation>, array:Array<Float>) : Void;
	/**
	 * Set the value of an uniform to an array of number (stored as vec2)
	 */
	function setArray2(uniform:Null<WebGLUniformLocation>, array:Array<Float>) : Void;
	/**
	 * Set the value of an uniform to an array of number (stored as vec3)
	 */
	function setArray3(uniform:Null<WebGLUniformLocation>, array:Array<Float>) : Void;
	/**
	 * Set the value of an uniform to an array of number (stored as vec4)
	 */
	function setArray4(uniform:Null<WebGLUniformLocation>, array:Array<Float>) : Void;
	/**
	 * Set the value of an uniform to an array of float32 (stored as matrices)
	 */
	function setMatrices(uniform:Null<WebGLUniformLocation>, matrices:js.html.Float32Array) : Void;
	/**
	 * Set the value of an uniform to a matrix
	 */
	function setMatrix(uniform:Null<WebGLUniformLocation>, matrix:Matrix) : Void;
	/**
	 * Set the value of an uniform to a matrix (3x3)
	 */
	function setMatrix3x3(uniform:Null<WebGLUniformLocation>, matrix:js.html.Float32Array) : Void;
	/**
	 * Set the value of an uniform to a matrix (2x2)
	 */
	function setMatrix2x2(uniform:Null<WebGLUniformLocation>, matrix:js.html.Float32Array) : Void;
	/**
	 * Set the value of an uniform to a number (int)
	 */
	function setInt(uniform:Null<WebGLUniformLocation>, value:Float) : Void;
	/**
	 * Set the value of an uniform to a number (float)
	 */
	function setFloat(uniform:Null<WebGLUniformLocation>, value:Float) : Void;
	/**
	 * Set the value of an uniform to a vec2
	 */
	function setFloat2(uniform:Null<WebGLUniformLocation>, x:Float, y:Float) : Void;
	/**
	 * Set the value of an uniform to a vec3
	 */
	function setFloat3(uniform:Null<WebGLUniformLocation>, x:Float, y:Float, z:Float) : Void;
	/**
	 * Set the value of an uniform to a boolean
	 */
	function setBool(uniform:Null<WebGLUniformLocation>, bool:Float) : Void;
	/**
	 * Set the value of an uniform to a vec4
	 */
	function setFloat4(uniform:Null<WebGLUniformLocation>, x:Float, y:Float, z:Float, w:Float) : Void;
	/**
	 * Set the value of an uniform to a Color3
	 */
	function setColor3(uniform:Null<WebGLUniformLocation>, color3:Color3) : Void;
	/**
	 * Set the value of an uniform to a Color3 and an alpha value
	 */
	function setColor4(uniform:Null<WebGLUniformLocation>, color3:Color3, alpha:Float) : Void;
	/**
	 * Sets a Color4 on a uniform variable
	 */
	function setDirectColor4(uniform:Null<WebGLUniformLocation>, color4:Color4) : Void;
	/**
	 * Set various states to the webGL context
	 */
	function setState(culling:Bool, ?zOffset:Float, ?force:Bool, ?reverseSide:Bool) : Void;
	/**
	 * Set the z offset to apply to current rendering
	 */
	function setZOffset(value:Float) : Void;
	/**
	 * Gets the current value of the zOffset
	 * @returns the current zOffset state
	 */
	function getZOffset() : Float;
	/**
	 * Enable or disable depth buffering
	 */
	function setDepthBuffer(enable:Bool) : Void;
	/**
	 * Gets a boolean indicating if depth writing is enabled
	 * @returns the current depth writing state
	 */
	function getDepthWrite() : Bool;
	/**
	 * Enable or disable depth writing
	 */
	function setDepthWrite(enable:Bool) : Void;
	/**
	 * Enable or disable color writing
	 */
	function setColorWrite(enable:Bool) : Void;
	/**
	 * Gets a boolean indicating if color writing is enabled
	 * @returns the current color writing state
	 */
	function getColorWrite() : Bool;
	/**
	 * Sets alpha constants used by some alpha blending modes
	 */
	function setAlphaConstants(r:Float, g:Float, b:Float, a:Float) : Void;
	/**
	 * Sets the current alpha mode
	 * @see http://doc.babylonjs.com/resources/transparency_and_how_meshes_are_rendered
	 */
	function setAlphaMode(mode:Float, ?noDepthWriteChange:Bool) : Void;
	/**
	 * Gets the current alpha mode
	 * @see http://doc.babylonjs.com/resources/transparency_and_how_meshes_are_rendered
	 * @returns the current alpha mode
	 */
	function getAlphaMode() : Float;
	/**
	 * Force the entire cache to be cleared
	 * You should not have to use this function unless your engine needs to share the webGL context with another engine
	 */
	function wipeCaches(?bruteForce:Bool) : Void;
	/**
	 * Set the compressed texture format to use, based on the formats you have, and the formats
	 * supported by the hardware / browser.
	 * 
	 * Khronos Texture Container (.ktx) files are used to support this.  This format has the
	 * advantage of being specifically designed for OpenGL.  Header elements directly correspond
	 * to API arguments needed to compressed textures.  This puts the burden on the container
	 * generator to house the arcane code for determining these for current & future formats.
	 * 
	 * for description see https://www.khronos.org/opengles/sdk/tools/KTX/
	 * for file layout see https://www.khronos.org/opengles/sdk/tools/KTX/file_format_spec/
	 * 
	 * Note: The result of this call is not taken into account when a texture is base64.
	 * 
	 * @returns The extension selected.
	 */
	function setTextureFormatToUse(formatsAvailable:Array<String>) : Null<String>;
	/**
	 * @hidden 
	 */
	function _createTexture() : js.html.webgl.Texture;
	/**
	 * Usually called from BABYLON.Texture.ts.
	 * Passed information to create a WebGLTexture
	 * @returns a InternalTexture for assignment back into BABYLON.Texture
	 */
	function createTexture(urlArg:Null<String>, noMipmap:Bool, invertY:Bool, scene:Null<Scene>, ?samplingMode:Float, ?onLoad:Null<Void->Void>, ?onError:Null<String->Dynamic->Void>, ?buffer:Null<haxe.extern.EitherType<js.html.ArrayBuffer, js.html.ImageElement>>, ?fallback:Null<InternalTexture>, ?format:Null<Float>) : InternalTexture;
	private function _rescaleTexture(source:Dynamic, destination:Dynamic, scene:Dynamic, internalFormat:Dynamic, onComplete:Dynamic) : Dynamic;
	/**
	 * Update a raw texture
	 */
	function updateRawTexture(texture:Null<InternalTexture>, data:Null<js.html.ArrayBufferView>, format:Float, invertY:Bool, ?compression:Null<String>, ?type:Float) : Void;
	/**
	 * Creates a raw texture
	 * @returns the raw texture inside an InternalTexture
	 */
	function createRawTexture(data:Null<js.html.ArrayBufferView>, width:Float, height:Float, format:Float, generateMipMaps:Bool, invertY:Bool, samplingMode:Float, ?compression:Null<String>, ?type:Float) : InternalTexture;
	/**
	 * Creates a dynamic texture
	 * @returns the dynamic texture inside an InternalTexture
	 */
	function createDynamicTexture(width:Float, height:Float, generateMipMaps:Bool, samplingMode:Float) : InternalTexture;
	/**
	 * Update the sampling mode of a given texture
	 */
	function updateTextureSamplingMode(samplingMode:Float, texture:InternalTexture) : Void;
	/**
	 * Update the content of a dynamic texture
	 */
	function updateDynamicTexture(texture:Null<InternalTexture>, canvas:js.html.CanvasElement, invertY:Bool, ?premulAlpha:Bool, ?format:Float) : Void;
	/**
	 * Update a video texture
	 */
	function updateVideoTexture(texture:Null<InternalTexture>, video:js.html.VideoElement, invertY:Bool) : Void;
	/**
	 * Updates a depth texture Comparison Mode and Function.
	 * If the comparison Function is equal to 0, the mode will be set to none.
	 * Otherwise, this only works in webgl 2 and requires a shadow sampler in the shader.
	 */
	function updateTextureComparisonFunction(texture:InternalTexture, comparisonFunction:Float) : Void;
	private function _setupDepthStencilTexture(internalTexture:Dynamic, size:Dynamic, generateStencil:Dynamic, bilinearFiltering:Dynamic, comparisonFunction:Dynamic) : Dynamic;
	/**
	 * Creates a depth stencil texture.
	 * This is only available in WebGL 2 or with the depth texture extension available.
	 * @returns The texture
	 */
	function createDepthStencilTexture(size:haxe.extern.EitherType<Float, { var width : Float; var height : Float; }>, options:DepthTextureCreationOptions) : InternalTexture;
	/**
	 * Creates a depth stencil texture.
	 * This is only available in WebGL 2 or with the depth texture extension available.
	 * @returns The texture
	 */
	private function _createDepthStencilTexture(size:Dynamic, options:Dynamic) : Dynamic;
	/**
	 * Creates a depth stencil cube texture.
	 * This is only available in WebGL 2.
	 * @returns The cube texture
	 */
	private function _createDepthStencilCubeTexture(size:Dynamic, options:Dynamic) : Dynamic;
	/**
	 * Sets the frame buffer Depth / Stencil attachement of the render target to the defined depth stencil texture.
	 */
	function setFrameBufferDepthStencilTexture(renderTarget:RenderTargetTexture) : Void;
	/**
	 * Creates a new render target texture
	 * @returns a new render target texture stored in an InternalTexture
	 */
	function createRenderTargetTexture(size:haxe.extern.EitherType<Float, { var width : Float; var height : Float; }>, options:haxe.extern.EitherType<Bool, RenderTargetCreationOptions>) : InternalTexture;
	/**
	 * Create a multi render target texture
	 * @see http://doc.babylonjs.com/features/webgl2#multiple-render-target
	 * @returns the cube texture as an InternalTexture
	 */
	function createMultipleRenderTarget(size:Dynamic, options:IMultiRenderTargetOptions) : Array<InternalTexture>;
	private function _setupFramebufferDepthAttachments(generateStencilBuffer:Dynamic, generateDepthBuffer:Dynamic, width:Dynamic, height:Dynamic, ?samples:Dynamic) : Dynamic;
	/**
	 * Updates the sample count of a render target texture
	 * @see http://doc.babylonjs.com/features/webgl2#multisample-render-targets
	 * @returns the effective sample count (could be 0 if multisample render targets are not supported)
	 */
	function updateRenderTargetTextureSampleCount(texture:Null<InternalTexture>, samples:Float) : Float;
	/**
	 * Update the sample count for a given multiple render target texture
	 * @see http://doc.babylonjs.com/features/webgl2#multisample-render-targets
	 * @returns the effective sample count (could be 0 if multisample render targets are not supported)
	 */
	function updateMultipleRenderTargetTextureSampleCount(textures:Null<Array<InternalTexture>>, samples:Float) : Float;
	/**
	 * @hidden 
	 */
	function _uploadDataToTexture(target:Float, lod:Float, internalFormat:Float, width:Float, height:Float, format:Float, type:Float, data:js.html.ArrayBufferView) : Void;
	/**
	 * @hidden 
	 */
	function _uploadCompressedDataToTexture(target:Float, lod:Float, internalFormat:Float, width:Float, height:Float, data:js.html.ArrayBufferView) : Void;
	/**
	 * Creates a new render target cube texture
	 * @returns a new render target cube texture stored in an InternalTexture
	 */
	function createRenderTargetCubeTexture(size:Float, ?options:Partial<RenderTargetCreationOptions>) : InternalTexture;
	/**
	 * Create a cube texture from prefiltered data (ie. the mipmaps contain ready to use data for PBR reflection)
	 * @returns the cube texture as an InternalTexture
	 */
	function createPrefilteredCubeTexture(rootUrl:String, scene:Null<Scene>, scale:Float, offset:Float, ?onLoad:Null<Null<InternalTexture>->Void>, ?onError:Null<String->Dynamic->Void>, ?format:Float, ?forcedExtension:Dynamic) : InternalTexture;
	/**
	 * Creates a cube texture
	 * @returns the cube texture as an InternalTexture
	 */
	function createCubeTexture(rootUrl:String, scene:Null<Scene>, files:Null<Array<String>>, ?noMipmap:Bool, ?onLoad:Null<Dynamic->Void>, ?onError:Null<String->Dynamic->Void>, ?format:Float, ?forcedExtension:Dynamic, ?createPolynomials:Bool) : InternalTexture;
	private function setCubeMapTextureParams(gl:Dynamic, loadMipmap:Dynamic) : Dynamic;
	/**
	 * Update a raw cube texture
	 */
	function updateRawCubeTexture(texture:InternalTexture, data:Array<js.html.ArrayBufferView>, format:Float, type:Float, invertY:Bool, ?compression:Null<String>, ?level:Float) : Void;
	/**
	 * Creates a new raw cube texture
	 * @returns the cube texture as an InternalTexture
	 */
	function createRawCubeTexture(data:Null<Array<js.html.ArrayBufferView>>, size:Float, format:Float, type:Float, generateMipMaps:Bool, invertY:Bool, samplingMode:Float, ?compression:Null<String>) : InternalTexture;
	/**
	 * Creates a new raw cube texture from a specified url
	 * @returns the cube texture as an InternalTexture
	 */
	function createRawCubeTextureFromUrl(url:String, scene:Scene, size:Float, format:Float, type:Float, noMipmap:Bool, callback:js.html.ArrayBuffer->Null<Array<js.html.ArrayBufferView>>, mipmapGenerator:Null<(Array<js.html.ArrayBufferView>->Array<Array<js.html.ArrayBufferView>>)>, ?onLoad:Null<Void->Void>, ?onError:Null<String->Dynamic->Void>, ?samplingMode:Float, ?invertY:Bool) : InternalTexture;
	/**
	 * Update a raw 3D texture
	 */
	function updateRawTexture3D(texture:InternalTexture, data:Null<js.html.ArrayBufferView>, format:Float, invertY:Bool, ?compression:Null<String>) : Void;
	/**
	 * Creates a new raw 3D texture
	 * @returns a new raw 3D texture (stored in an InternalTexture)
	 */
	function createRawTexture3D(data:Null<js.html.ArrayBufferView>, width:Float, height:Float, depth:Float, format:Float, generateMipMaps:Bool, invertY:Bool, samplingMode:Float, ?compression:Null<String>) : InternalTexture;
	private function _prepareWebGLTextureContinuation(texture:Dynamic, scene:Dynamic, noMipmap:Dynamic, isCompressed:Dynamic, samplingMode:Dynamic) : Dynamic;
	private function _prepareWebGLTexture(texture:Dynamic, scene:Dynamic, width:Dynamic, height:Dynamic, invertY:Dynamic, noMipmap:Dynamic, isCompressed:Dynamic, processFunction:Dynamic, ?samplingMode:Dynamic) : Dynamic;
	private function _convertRGBtoRGBATextureData(rgbData:Dynamic, width:Dynamic, height:Dynamic, textureType:Dynamic) : Dynamic;
	/**
	 * @hidden 
	 */
	function _releaseFramebufferObjects(texture:InternalTexture) : Void;
	/**
	 * @hidden 
	 */
	function _releaseTexture(texture:InternalTexture) : Void;
	private function setProgram(program:Dynamic) : Dynamic;
	/**
	 * Binds an effect to the webGL context
	 */
	function bindSamplers(effect:Effect) : Void;
	private function _moveBoundTextureOnTop(internalTexture:Dynamic) : Dynamic;
	private function _getCorrectTextureChannel(channel:Dynamic, internalTexture:Dynamic) : Dynamic;
	private function _linkTrackers(previous:Dynamic, next:Dynamic) : Dynamic;
	private function _removeDesignatedSlot(internalTexture:Dynamic) : Dynamic;
	private function _activateCurrentTexture() : Dynamic;
	/**
	 * @hidden 
	 */
	function _bindTextureDirectly(target:Float, texture:Null<InternalTexture>, ?forTextureDataUpdate:Bool, ?force:Bool) : Void;
	/**
	 * @hidden 
	 */
	function _bindTexture(channel:Float, texture:Null<InternalTexture>) : Void;
	/**
	 * Sets a texture to the webGL context from a postprocess
	 */
	function setTextureFromPostProcess(channel:Float, postProcess:Null<PostProcess>) : Void;
	/**
	 * Binds the output of the passed in post process to the texture channel specified
	 */
	function setTextureFromPostProcessOutput(channel:Float, postProcess:Null<PostProcess>) : Void;
	/**
	 * Unbind all textures from the webGL context
	 */
	function unbindAllTextures() : Void;
	/**
	 * Sets a texture to the according uniform.
	 */
	function setTexture(channel:Float, uniform:Null<WebGLUniformLocation>, texture:Null<BaseTexture>) : Void;
	/**
	 * Sets a depth stencil texture from a render target to the according uniform.
	 */
	function setDepthStencilTexture(channel:Float, uniform:Null<WebGLUniformLocation>, texture:Null<RenderTargetTexture>) : Void;
	private function _bindSamplerUniformToChannel(sourceSlot:Dynamic, destination:Dynamic) : Dynamic;
	private function _getTextureWrapMode(mode:Dynamic) : Dynamic;
	private function _setTexture(channel:Dynamic, texture:Dynamic, ?isPartOfTextureArray:Dynamic, ?depthStencilTexture:Dynamic) : Dynamic;
	/**
	 * Sets an array of texture to the webGL context
	 */
	function setTextureArray(channel:Float, uniform:Null<WebGLUniformLocation>, textures:Array<BaseTexture>) : Void;
	/**
	 * @hidden 
	 */
	function _setAnisotropicLevel(target:Float, texture:BaseTexture) : Void;
	private function _setTextureParameterFloat(target:Dynamic, parameter:Dynamic, value:Dynamic, texture:Dynamic) : Dynamic;
	private function _setTextureParameterInteger(target:Dynamic, parameter:Dynamic, value:Dynamic, ?texture:Dynamic) : Dynamic;
	/**
	 * Reads pixels from the current frame buffer. Please note that this function can be slow
	 * @returns a Uint8Array containing RGBA colors
	 */
	function readPixels(x:Float, y:Float, width:Float, height:Float) : js.html.Uint8Array;
	/**
	 * Add an externaly attached data from its key.
	 * This method call will fail and return false, if such key already exists.
	 * If you don't care and just want to get the data no matter what, use the more convenient getOrAddExternalDataWithFactory() method.
	 * @return true if no such key were already present and the data was added successfully, false otherwise
	 */
	function addExternalData<T:Dynamic>(key:String, data:T) : Bool;
	/**
	 * Get an externaly attached data from its key
	 * @return the associated data, if present (can be null), or undefined if not present
	 */
	function getExternalData<T:Dynamic>(key:String) : T;
	/**
	 * Get an externaly attached data from its key, create it using a factory if it's not already present
	 * @return the associated data, can be null if the factory returned null.
	 */
	function getOrAddExternalDataWithFactory<T:Dynamic>(key:String, factory:String->T) : T;
	/**
	 * Remove an externaly attached data from the Engine instance
	 * @return true if the data was successfully removed, false if it doesn't exist
	 */
	function removeExternalData(key:String) : Bool;
	/**
	 * Unbind all vertex attributes from the webGL context
	 */
	function unbindAllAttributes() : Void;
	/**
	 * Force the engine to release all cached effects. This means that next effect compilation will have to be done completely even if a similar effect was already compiled
	 */
	function releaseEffects() : Void;
	/**
	 * Dispose and release all associated resources
	 */
	function dispose() : Void;
	/**
	 * Display the loading screen
	 * @see http://doc.babylonjs.com/how_to/creating_a_custom_loading_screen
	 */
	function displayLoadingUI() : Void;
	/**
	 * Hide the loading screen
	 * @see http://doc.babylonjs.com/how_to/creating_a_custom_loading_screen
	 */
	function hideLoadingUI() : Void;
	/**
	 * Attach a new callback raised when context lost event is fired
	 */
	function attachContextLostEvent(callback:(js.html.webgl.ContextEvent->Void)) : Void;
	/**
	 * Attach a new callback raised when context restored event is fired
	 */
	function attachContextRestoredEvent(callback:(js.html.webgl.ContextEvent->Void)) : Void;
	/**
	 * Gets the source code of the vertex shader associated with a specific webGL program
	 * @returns a string containing the source code of the vertex shader associated with the program
	 */
	function getVertexShaderSource(program:WebGLProgram) : Null<String>;
	/**
	 * Gets the source code of the fragment shader associated with a specific webGL program
	 * @returns a string containing the source code of the fragment shader associated with the program
	 */
	function getFragmentShaderSource(program:WebGLProgram) : Null<String>;
	/**
	 * Get the current error code of the webGL context
	 * @returns the error code
	 * @see https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/getError
	 */
	function getError() : Float;
	/**
	 * Gets the current framerate
	 * @returns a number representing the framerate
	 */
	function getFps() : Float;
	/**
	 * Gets the time spent between current and previous frame
	 * @returns a number representing the delta time in ms
	 */
	function getDeltaTime() : Float;
	private function _measureFps() : Dynamic;
	/**
	 * @hidden 
	 */
	function _readTexturePixels(texture:InternalTexture, width:Float, height:Float, ?faceIndex:Float) : js.html.ArrayBufferView;
	private function _canRenderToFloatFramebuffer() : Dynamic;
	private function _canRenderToHalfFloatFramebuffer() : Dynamic;
	private function _canRenderToFramebuffer(type:Dynamic) : Dynamic;
	/**
	 * @hidden 
	 */
	function _getWebGLTextureType(type:Float) : Float;
	private function _getInternalFormat(format:Dynamic) : Dynamic;
	/**
	 * @hidden 
	 */
	function _getRGBABufferInternalSizedFormat(type:Float, ?format:Float) : Float;
	/**
	 * @hidden 
	 */
	function _getRGBAMultiSampleBufferFormat(type:Float) : Float;
	/**
	 * Create a new webGL query (you must be sure that queries are supported by checking getCaps() function)
	 * @return the new query
	 */
	function createQuery() : WebGLQuery;
	/**
	 * Delete and release a webGL query
	 * @return the current engine
	 */
	function deleteQuery(query:WebGLQuery) : Engine;
	/**
	 * Check if a given query has resolved and got its value
	 * @returns true if the query got its value
	 */
	function isQueryResultAvailable(query:WebGLQuery) : Bool;
	/**
	 * Gets the value of a given query
	 * @returns the value of the query
	 */
	function getQueryResult(query:WebGLQuery) : Float;
	/**
	 * Initiates an occlusion query
	 * @returns the current engine
	 * @see http://doc.babylonjs.com/features/occlusionquery
	 */
	function beginOcclusionQuery(algorithmType:Float, query:WebGLQuery) : Engine;
	/**
	 * Ends an occlusion query
	 * @see http://doc.babylonjs.com/features/occlusionquery
	 * @returns the current engine
	 */
	function endOcclusionQuery(algorithmType:Float) : Engine;
	private function _createTimeQuery() : Dynamic;
	private function _deleteTimeQuery(query:Dynamic) : Dynamic;
	private function _getTimeQueryResult(query:Dynamic) : Dynamic;
	private function _getTimeQueryAvailability(query:Dynamic) : Dynamic;
	/**
	 * Starts a time query (used to measure time spent by the GPU on a specific frame)
	 * Please note that only one query can be issued at a time
	 * @returns a time token used to track the time span
	 */
	function startTimeQuery() : Null<_TimeToken>;
	/**
	 * Ends a time query
	 * @returns the time spent (in ns)
	 */
	function endTimeQuery(token:_TimeToken) : Int;
	private function getGlAlgorithmType(algorithmType:Dynamic) : Dynamic;
	/**
	 * Creates a webGL transform feedback object
	 * Please makes sure to check webGLVersion property to check if you are running webGL 2+
	 * @returns the webGL transform feedback object
	 */
	function createTransformFeedback() : WebGLTransformFeedback;
	/**
	 * Delete a webGL transform feedback object
	 */
	function deleteTransformFeedback(value:WebGLTransformFeedback) : Void;
	/**
	 * Bind a webGL transform feedback object to the webgl context
	 */
	function bindTransformFeedback(value:Null<WebGLTransformFeedback>) : Void;
	/**
	 * Begins a transform feedback operation
	 */
	function beginTransformFeedback(?usePoints:Bool) : Void;
	/**
	 * Ends a transform feedback operation
	 */
	function endTransformFeedback() : Void;
	/**
	 * Specify the varyings to use with transform feedback
	 */
	function setTranformFeedbackVaryings(program:WebGLProgram, value:Array<String>) : Void;
	/**
	 * Bind a webGL buffer for a transform feedback operation
	 */
	function bindTransformFeedbackBuffer(value:Null<WebGLBuffer>) : Void;
	/**
	 * @hidden 
	 */
	function _loadFile(url:String, onSuccess:haxe.extern.EitherType<String, js.html.ArrayBuffer>->String->Void, ?onProgress:Dynamic->Void, ?database:Database, ?useArrayBuffer:Bool, ?onError:js.html.XMLHttpRequest->Dynamic->Void) : IFileRequest;
	/**
	 * @hidden 
	 */
	function _loadFileAsync(url:String, ?database:Database, ?useArrayBuffer:Bool) : js.Promise<haxe.extern.EitherType<String, js.html.ArrayBuffer>>;
	private function _partialLoadFile(url:Dynamic, index:Dynamic, loadedFiles:Dynamic, scene:Dynamic, onfinish:Dynamic, ?onErrorCallBack:Dynamic) : Dynamic;
	private function _cascadeLoadFiles(scene:Dynamic, onfinish:Dynamic, files:Dynamic, ?onError:Dynamic) : Dynamic;
	/**
	 * Gets a boolean indicating if the engine can be instanciated (ie. if a webGL context can be found)
	 * @returns true if the engine can be created
	 * @ignorenaming
	 */
	static function isSupported() : Bool;
}