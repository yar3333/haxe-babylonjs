package babylonjs;

@:native("BABYLON.AutoRotationBehavior")
extern class AutoRotationBehavior
	implements Behavior<ArcRotateCamera>
{
	var name(default, null) : String;
	private var _zoomStopsAnimation : Dynamic;
	private var _idleRotationSpeed : Dynamic;
	private var _idleRotationWaitTime : Dynamic;
	private var _idleRotationSpinupTime : Dynamic;
	/**
	 * Gets the flag that indicates if user zooming should stop animation.
	 * Sets the flag that indicates if user zooming should stop animation.
	 */
	var zoomStopsAnimation : Bool;
	/**
	 * Gets the default speed at which the camera rotates around the model.
	 * Sets the default speed at which the camera rotates around the model.
	 */
	var idleRotationSpeed : Float;
	/**
	 * Gets the time (milliseconds) to wait after user interaction before the camera starts rotating.
	 * Sets the time (in milliseconds) to wait after user interaction before the camera starts rotating.
	 */
	var idleRotationWaitTime : Float;
	/**
	 * Gets the time (milliseconds) to take to spin up to the full idle rotation speed.
	 * Sets the time (milliseconds) to take to spin up to the full idle rotation speed.
	 */
	var idleRotationSpinupTime : Float;
	/**
	 * Gets a value indicating if the camera is currently rotating because of this behavior
	 */
	var rotationInProgress(default, null) : Bool;
	private var _onPrePointerObservableObserver : Dynamic;
	private var _onAfterCheckInputsObserver : Dynamic;
	private var _attachedCamera : Dynamic;
	private var _isPointerDown : Dynamic;
	private var _lastFrameTime : Dynamic;
	private var _lastInteractionTime : Dynamic;
	private var _cameraRotationSpeed : Dynamic;
	private var _lastFrameRadius : Dynamic;

	function init() : Void;
	function attach(camera:ArcRotateCamera) : Void;
	function detach() : Void;
	/**
	 * Returns true if user is scrolling.
	 * @return true if user is scrolling.
	 */
	private function _userIsZooming() : Dynamic;
	private function _shouldAnimationStopForInteraction() : Dynamic;
	/**
	 * Applies any current user interaction to the camera. Takes into account maximum alpha rotation.
	 */
	private function _applyUserInteraction() : Dynamic;
	private function _userIsMoving() : Dynamic;
}