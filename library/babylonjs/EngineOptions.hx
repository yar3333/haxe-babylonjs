package babylonjs;

typedef EngineOptions =
{>js.html.webgl.ContextAttributes,
	/**
	 * Defines if the engine should no exceed a specified device ratio
	 * @see https://developer.mozilla.org/en-US/docs/Web/API/Window/devicePixelRatio
	 */
	@:optional var limitDeviceRatio : Float;
	/**
	 * Defines if webvr should be enabled automatically
	 * @see http://doc.babylonjs.com/how_to/webvr_camera
	 */
	@:optional var autoEnableWebVR : Bool;
	/**
	 * Defines if webgl2 should be turned off even if supported
	 * @see http://doc.babylonjs.com/features/webgl2
	 */
	@:optional var disableWebGL2Support : Bool;
	/**
	 * Defines if webaudio should be initialized as well
	 * @see http://doc.babylonjs.com/how_to/playing_sounds_and_music
	 */
	@:optional var audioEngine : Bool;
	/**
	 * Defines if animations should run using a deterministic lock step
	 * @see http://doc.babylonjs.com/babylon101/animations#deterministic-lockstep
	 */
	@:optional var deterministicLockstep : Bool;
	/**
	 * Defines the maximum steps to use with deterministic lock step mode 
	 */
	@:optional var lockstepMaxSteps : Float;
	/**
	 * Defines that engine should ignore context lost events
	 * If this event happens when this parameter is true, you will have to reload the page to restore rendering
	 */
	@:optional var doNotHandleContextLost : Bool;
}