package babylonjs;

/**
 * This class can be used to get instrumentation data from a Babylon engine
 */
@:native("BABYLON.SceneInstrumentation")
extern class SceneInstrumentation
	implements IDisposable
{
	var scene : Scene;
	private var _captureActiveMeshesEvaluationTime : Dynamic;
	private var _activeMeshesEvaluationTime : Dynamic;
	private var _captureRenderTargetsRenderTime : Dynamic;
	private var _renderTargetsRenderTime : Dynamic;
	private var _captureFrameTime : Dynamic;
	private var _frameTime : Dynamic;
	private var _captureRenderTime : Dynamic;
	private var _renderTime : Dynamic;
	private var _captureInterFrameTime : Dynamic;
	private var _interFrameTime : Dynamic;
	private var _captureParticlesRenderTime : Dynamic;
	private var _particlesRenderTime : Dynamic;
	private var _captureSpritesRenderTime : Dynamic;
	private var _spritesRenderTime : Dynamic;
	private var _capturePhysicsTime : Dynamic;
	private var _physicsTime : Dynamic;
	private var _captureAnimationsTime : Dynamic;
	private var _animationsTime : Dynamic;
	private var _onBeforeActiveMeshesEvaluationObserver : Dynamic;
	private var _onAfterActiveMeshesEvaluationObserver : Dynamic;
	private var _onBeforeRenderTargetsRenderObserver : Dynamic;
	private var _onAfterRenderTargetsRenderObserver : Dynamic;
	private var _onAfterRenderObserver : Dynamic;
	private var _onBeforeDrawPhaseObserver : Dynamic;
	private var _onAfterDrawPhaseObserver : Dynamic;
	private var _onBeforeAnimationsObserver : Dynamic;
	private var _onBeforeParticlesRenderingObserver : Dynamic;
	private var _onAfterParticlesRenderingObserver : Dynamic;
	private var _onBeforeSpritesRenderingObserver : Dynamic;
	private var _onAfterSpritesRenderingObserver : Dynamic;
	private var _onBeforePhysicsObserver : Dynamic;
	private var _onAfterPhysicsObserver : Dynamic;
	private var _onAfterAnimationsObserver : Dynamic;
	/**
	 * Gets the perf counter used for active meshes evaluation time
	 */
	var activeMeshesEvaluationTimeCounter(default, null) : PerfCounter;
	/**
	 * Gets the active meshes evaluation time capture status
	 * Enable or disable the active meshes evaluation time capture
	 */
	var captureActiveMeshesEvaluationTime : Bool;
	/**
	 * Gets the perf counter used for render targets render time
	 */
	var renderTargetsRenderTimeCounter(default, null) : PerfCounter;
	/**
	 * Gets the render targets render time capture status
	 * Enable or disable the render targets render time capture
	 */
	var captureRenderTargetsRenderTime : Bool;
	/**
	 * Gets the perf counter used for particles render time
	 */
	var particlesRenderTimeCounter(default, null) : PerfCounter;
	/**
	 * Gets the particles render time capture status
	 * Enable or disable the particles render time capture
	 */
	var captureParticlesRenderTime : Bool;
	/**
	 * Gets the perf counter used for sprites render time
	 */
	var spritesRenderTimeCounter(default, null) : PerfCounter;
	/**
	 * Gets the sprites render time capture status
	 * Enable or disable the sprites render time capture
	 */
	var captureSpritesRenderTime : Bool;
	/**
	 * Gets the perf counter used for physics time
	 */
	var physicsTimeCounter(default, null) : PerfCounter;
	/**
	 * Gets the physics time capture status
	 * Enable or disable the physics time capture
	 */
	var capturePhysicsTime : Bool;
	/**
	 * Gets the perf counter used for animations time
	 */
	var animationsTimeCounter(default, null) : PerfCounter;
	/**
	 * Gets the animations time capture status
	 * Enable or disable the animations time capture
	 */
	var captureAnimationsTime : Bool;
	/**
	 * Gets the perf counter used for frame time capture
	 */
	var frameTimeCounter(default, null) : PerfCounter;
	/**
	 * Gets the frame time capture status
	 * Enable or disable the frame time capture
	 */
	var captureFrameTime : Bool;
	/**
	 * Gets the perf counter used for inter-frames time capture
	 */
	var interFrameTimeCounter(default, null) : PerfCounter;
	/**
	 * Gets the inter-frames time capture status
	 * Enable or disable the inter-frames time capture
	 */
	var captureInterFrameTime : Bool;
	/**
	 * Gets the perf counter used for render time capture
	 */
	var renderTimeCounter(default, null) : PerfCounter;
	/**
	 * Gets the render time capture status
	 * Enable or disable the render time capture
	 */
	var captureRenderTime : Bool;
	/**
	 * Gets the perf counter used for draw calls
	 */
	var drawCallsCounter(default, null) : PerfCounter;
	/**
	 * Gets the perf counter used for texture collisions
	 */
	var textureCollisionsCounter(default, null) : PerfCounter;

	/**
	 * This class can be used to get instrumentation data from a Babylon engine
	 */
	function new(scene:Scene) : Void;
	function dispose() : Void;
}