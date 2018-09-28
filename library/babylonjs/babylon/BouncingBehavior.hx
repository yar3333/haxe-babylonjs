package babylonjs.babylon;

/**
 * Add a bouncing effect to an ArcRotateCamera when reaching a specified minimum and maximum radius
 */
@:native("BABYLON.BouncingBehavior")
extern class BouncingBehavior
	implements Behavior<ArcRotateCamera>
{
	var name(default, null) : String;
	/**
	 * The easing function used by animations
	 */
	static var EasingFunction : BackEase;
	/**
	 * The easing mode used by animations
	 */
	static var EasingMode : Float;
	/**
	 * The duration of the animation, in milliseconds
	 */
	var transitionDuration : Float;
	/**
	 * Length of the distance animated by the transition when lower radius is reached
	 */
	var lowerRadiusTransitionRange : Float;
	/**
	 * Length of the distance animated by the transition when upper radius is reached
	 */
	var upperRadiusTransitionRange : Float;
	private var _autoTransitionRange : Dynamic;
	/**
	 * Gets a value indicating if the lowerRadiusTransitionRange and upperRadiusTransitionRange are defined automatically
	 * Sets a value indicating if the lowerRadiusTransitionRange and upperRadiusTransitionRange are defined automatically
	 * Transition ranges will be set to 5% of the bounding box diagonal in world space
	 */
	var autoTransitionRange : Bool;
	private var _attachedCamera : Dynamic;
	private var _onAfterCheckInputsObserver : Dynamic;
	private var _onMeshTargetChangedObserver : Dynamic;
	private var _radiusIsAnimating : Dynamic;
	private var _radiusBounceTransition : Dynamic;
	private var _animatables : Dynamic;
	private var _cachedWheelPrecision : Dynamic;

	function init() : Void;
	function attach(camera:ArcRotateCamera) : Void;
	function detach() : Void;
	/**
	 * Checks if the camera radius is at the specified limit. Takes into account animation locks.
	 * @return Bool to indicate if at limit.
	 */
	private function _isRadiusAtLimit(radiusLimit:Dynamic) : Dynamic;
	/**
	 * Applies an animation to the radius of the camera, extending by the radiusDelta.
	 */
	private function _applyBoundRadiusAnimation(radiusDelta:Dynamic) : Dynamic;
	/**
	 * Removes all animation locks. Allows new animations to be added to any of the camera properties.
	 */
	function _clearAnimationLocks() : Void;
	/**
	 * Stops and removes all animations that have been applied to the camera
	 */
	function stopAllAnimations() : Void;
}