package babylonjs;

@:native("BABYLON.FramingBehavior")
extern class FramingBehavior
	implements Behavior<ArcRotateCamera>
{
	var name(default, null) : String;
	private var _mode : Dynamic;
	private var _radiusScale : Dynamic;
	private var _positionScale : Dynamic;
	private var _defaultElevation : Dynamic;
	private var _elevationReturnTime : Dynamic;
	private var _elevationReturnWaitTime : Dynamic;
	private var _zoomStopsAnimation : Dynamic;
	private var _framingTime : Dynamic;
	/**
	 * The easing function used by animations
	 */
	static var EasingFunction : ExponentialEase;
	/**
	 * The easing mode used by animations
	 */
	static var EasingMode : Float;
	/**
	 * Gets current mode used by the behavior.
	 * Sets the current mode used by the behavior
	 */
	var mode : Float;
	/**
	 * Gets the scale applied to the radius
	 * Sets the scale applied to the radius (1 by default)
	 */
	var radiusScale : Float;
	/**
	 * Gets the scale to apply on Y axis to position camera focus. 0.5 by default which means the center of the bounding box.
	 * Sets the scale to apply on Y axis to position camera focus. 0.5 by default which means the center of the bounding box.
	 */
	var positionScale : Float;
	/**
	 * Gets the angle above/below the horizontal plane to return to when the return to default elevation idle
	 * behaviour is triggered, in radians.
	 * Sets the angle above/below the horizontal plane to return to when the return to default elevation idle
	 * behaviour is triggered, in radians.
	 */
	var defaultElevation : Float;
	/**
	 * Gets the time (in milliseconds) taken to return to the default beta position.
	 * Negative value indicates camera should not return to default.
	 * Sets the time (in milliseconds) taken to return to the default beta position.
	 * Negative value indicates camera should not return to default.
	 */
	var elevationReturnTime : Float;
	/**
	 * Gets the delay (in milliseconds) taken before the camera returns to the default beta position.
	 * Sets the delay (in milliseconds) taken before the camera returns to the default beta position.
	 */
	var elevationReturnWaitTime : Float;
	/**
	 * Gets the flag that indicates if user zooming should stop animation.
	 * Sets the flag that indicates if user zooming should stop animation.
	 */
	var zoomStopsAnimation : Bool;
	/**
	 * Gets the transition time when framing the mesh, in milliseconds
	 * Sets the transition time when framing the mesh, in milliseconds
	 */
	var framingTime : Float;
	private var _onPrePointerObservableObserver : Dynamic;
	private var _onAfterCheckInputsObserver : Dynamic;
	private var _onMeshTargetChangedObserver : Dynamic;
	private var _attachedCamera : Dynamic;
	private var _isPointerDown : Dynamic;
	private var _lastInteractionTime : Dynamic;
	private var _animatables : Dynamic;
	private var _betaIsAnimating : Dynamic;
	private var _betaTransition : Dynamic;
	private var _radiusTransition : Dynamic;
	private var _vectorTransition : Dynamic;
	/**
	 * Gets a value indicating if the user is moving the camera
	 */
	var isUserIsMoving(default, null) : Bool;
	/**
	 * The camera can move all the way towards the mesh.
	 */
	static var IgnoreBoundsSizeMode : Float;
	/**
	 * The camera is not allowed to zoom closer to the mesh than the point at which the adjusted bounding sphere touches the frustum sides
	 */
	static var FitFrustumSidesMode : Float;

	function init() : Void;
	function attach(camera:ArcRotateCamera) : Void;
	function detach() : Void;
	/**
	 * Targets the given mesh and updates zoom level accordingly.
	 */
	function zoomOnMesh(mesh:AbstractMesh, ?focusOnOriginXZ:Bool, ?onAnimationEnd:Null<Void->Void>) : Void;
	/**
	 * Targets the given mesh with its children and updates zoom level accordingly.
	 */
	function zoomOnMeshHierarchy(mesh:AbstractMesh, ?focusOnOriginXZ:Bool, ?onAnimationEnd:Null<Void->Void>) : Void;
	/**
	 * Targets the given meshes with their children and updates zoom level accordingly.
	 */
	function zoomOnMeshesHierarchy(meshes:Array<AbstractMesh>, ?focusOnOriginXZ:Bool, ?onAnimationEnd:Null<Void->Void>) : Void;
	/**
	 * Targets the given mesh and updates zoom level accordingly.
	 */
	function zoomOnBoundingInfo(minimumWorld:Vector3, maximumWorld:Vector3, ?focusOnOriginXZ:Bool, ?onAnimationEnd:Null<Void->Void>) : Void;
	/**
	 * Calculates the lowest radius for the camera based on the bounding box of the mesh.
	 * @return The minimum distance from the primary mesh's center point at which the camera must be kept in order
	 * 	 to fully enclose the mesh in the viewing frustum.
	 */
	function _calculateLowerRadiusFromModelBoundingSphere(minimumWorld:Vector3, maximumWorld:Vector3) : Float;
	/**
	 * Keeps the camera above the ground plane. If the user pulls the camera below the ground plane, the camera
	 * is automatically returned to its default position (expected to be above ground plane).
	 */
	private function _maintainCameraAboveGround() : Dynamic;
	/**
	 * Returns the frustum slope based on the canvas ratio and camera FOV
	 * @returns The frustum slope represented as a Vector2 with X and Y slopes
	 */
	private function _getFrustumSlope() : Dynamic;
	/**
	 * Removes all animation locks. Allows new animations to be added to any of the arcCamera properties.
	 */
	private function _clearAnimationLocks() : Dynamic;
	/**
	 * Applies any current user interaction to the camera. Takes into account maximum alpha rotation.
	 */
	private function _applyUserInteraction() : Dynamic;
	/**
	 * Stops and removes all animations that have been applied to the camera
	 */
	function stopAllAnimations() : Void;
}