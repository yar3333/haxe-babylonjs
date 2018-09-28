package babylonjs.babylon;

/**
 * Defines a runtime animation
 */
@:native("BABYLON.RuntimeAnimation")
extern class RuntimeAnimation
{
	/**
	 * The current frame of the runtime animation
	 */
	private var _currentFrame : Dynamic;
	/**
	 * The animation used by the runtime animation
	 */
	private var _animation : Dynamic;
	/**
	 * The target of the runtime animation
	 */
	private var _target : Dynamic;
	/**
	 * The initiating animatable
	 */
	private var _host : Dynamic;
	/**
	 * The original value of the runtime animation
	 */
	private var _originalValue : Dynamic;
	/**
	 * The original blend value of the runtime animation
	 */
	private var _originalBlendValue : Dynamic;
	/**
	 * The offsets cache of the runtime animation
	 */
	private var _offsetsCache : Dynamic;
	/**
	 * The high limits cache of the runtime animation
	 */
	private var _highLimitsCache : Dynamic;
	/**
	 * Specifies if the runtime animation has been stopped
	 */
	private var _stopped : Dynamic;
	/**
	 * The blending factor of the runtime animation
	 */
	private var _blendingFactor : Dynamic;
	/**
	 * The BabylonJS scene
	 */
	private var _scene : Dynamic;
	/**
	 * The current value of the runtime animation
	 */
	private var _currentValue : Dynamic;
	/**
	 * @hidden 
	 */
	var _workValue : Dynamic;
	/**
	 * The active target of the runtime animation
	 */
	private var _activeTarget : Dynamic;
	/**
	 * The target path of the runtime animation
	 */
	private var _targetPath : Dynamic;
	/**
	 * The weight of the runtime animation
	 */
	private var _weight : Dynamic;
	/**
	 * The ratio offset of the runtime animation
	 */
	private var _ratioOffset : Dynamic;
	/**
	 * The previous delay of the runtime animation
	 */
	private var _previousDelay : Dynamic;
	/**
	 * The previous ratio of the runtime animation
	 */
	private var _previousRatio : Dynamic;
	/**
	 * Gets the current frame of the runtime animation
	 */
	var currentFrame(default, null) : Float;
	/**
	 * Gets the weight of the runtime animation
	 */
	var weight(default, null) : Float;
	/**
	 * Gets the current value of the runtime animation
	 */
	var currentValue(default, null) : Dynamic;
	/**
	 * Gets the target path of the runtime animation
	 */
	var targetPath(default, null) : String;
	/**
	 * Gets the actual target of the runtime animation
	 */
	var target(default, null) : Dynamic;
	/**
	 * Gets the animation from the runtime animation
	 */
	var animation(default, null) : Animation;

	/**
	 * Defines a runtime animation
	 */
	function new(target:Dynamic, animation:Animation, scene:Scene, host:Animatable) : Void;
	/**
	 * Resets the runtime animation to the beginning
	 */
	function reset(?restoreOriginal:Bool) : Void;
	/**
	 * Specifies if the runtime animation is stopped
	 * @returns Boolean specifying if the runtime animation is stopped
	 */
	function isStopped() : Bool;
	/**
	 * Disposes of the runtime animation
	 */
	function dispose() : Void;
	/**
	 * Interpolates the animation from the current frame
	 * @returns The interpolated value
	 */
	private function _interpolate(currentFrame:Dynamic, repeatCount:Dynamic, ?loopMode:Dynamic, ?offsetValue:Dynamic, ?highLimitValue:Dynamic) : Dynamic;
	/**
	 * Apply the interpolated value to the target
	 */
	function setValue(currentValue:Dynamic, ?weight:Float) : Void;
	private function _setValue(target:Dynamic, currentValue:Dynamic, weight:Dynamic, ?targetIndex:Dynamic) : Dynamic;
	/**
	 * Gets the loop pmode of the runtime animation
	 * @returns Loop Mode
	 */
	private function _getCorrectLoopMode() : Dynamic;
	/**
	 * Move the current animation to a given frame
	 */
	function goToFrame(frame:Float) : Void;
	/**
	 * @hidden Internal use only
	 */
	function _prepareForSpeedRatioChange(newSpeedRatio:Float) : Void;
	/**
	 * Execute the current animation
	 * @returns a boolean indicating if the animation has ended
	 */
	function animate(delay:Float, from:Float, to:Float, loop:Bool, speedRatio:Float, ?weight:Float) : Bool;
}