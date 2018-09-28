package babylonjs.babylon;

/**
 * This class can be used to get instrumentation data from a Babylon engine
 */
@:native("BABYLON.EngineInstrumentation")
extern class EngineInstrumentation
	implements IDisposable
{
	var engine : Engine;
	private var _captureGPUFrameTime : Dynamic;
	private var _gpuFrameTimeToken : Dynamic;
	private var _gpuFrameTime : Dynamic;
	private var _captureShaderCompilationTime : Dynamic;
	private var _shaderCompilationTime : Dynamic;
	private var _onBeginFrameObserver : Dynamic;
	private var _onEndFrameObserver : Dynamic;
	private var _onBeforeShaderCompilationObserver : Dynamic;
	private var _onAfterShaderCompilationObserver : Dynamic;
	/**
	 * Gets the perf counter used for GPU frame time
	 */
	var gpuFrameTimeCounter(default, null) : PerfCounter;
	/**
	 * Gets the GPU frame time capture status
	 * Enable or disable the GPU frame time capture
	 */
	var captureGPUFrameTime : Bool;
	/**
	 * Gets the perf counter used for shader compilation time
	 */
	var shaderCompilationTimeCounter(default, null) : PerfCounter;
	/**
	 * Gets the shader compilation time capture status
	 * Enable or disable the shader compilation time capture
	 */
	var captureShaderCompilationTime : Bool;

	/**
	 * This class can be used to get instrumentation data from a Babylon engine
	 */
	function new(engine:Engine) : Void;
	function dispose() : Void;
}