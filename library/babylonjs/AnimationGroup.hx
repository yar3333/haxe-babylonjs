package babylonjs;

/**
 * Use this class to create coordinated animations on multiple targets
 */
@:native("BABYLON.AnimationGroup")
extern class AnimationGroup
	implements IDisposable
{
	var name : String;
	private var _scene : Dynamic;
	private var _targetedAnimations : Dynamic;
	private var _animatables : Dynamic;
	private var _from : Dynamic;
	private var _to : Dynamic;
	private var _isStarted : Dynamic;
	private var _speedRatio : Dynamic;
	var onAnimationEndObservable : Observable<TargetedAnimation>;
	/**
	 * Gets the first frame
	 */
	var from(default, null) : Float;
	/**
	 * Gets the last frame
	 */
	var to(default, null) : Float;
	/**
	 * Define if the animations are started
	 */
	var isStarted(default, null) : Bool;
	/**
	 * Gets or sets the speed ratio to use for all animations
	 * Gets or sets the speed ratio to use for all animations
	 */
	var speedRatio : Float;
	/**
	 * Gets the targeted animations for this animation group
	 */
	var targetedAnimations(default, null) : Array<TargetedAnimation>;
	/**
	 * returning the list of animatables controlled by this animation group.
	 */
	var animatables(default, null) : Array<Animatable>;

	/**
	 * Use this class to create coordinated animations on multiple targets
	 */
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Add an animation (with its target) in the group
	 * @returns the {BABYLON.TargetedAnimation} object
	 */
	function addTargetedAnimation(animation:Animation, target:Dynamic) : TargetedAnimation;
	/**
	 * This function will normalize every animation in the group to make sure they all go from beginFrame to endFrame
	 * It can add constant keys at begin or end
	 */
	function normalize(?beginFrame:Null<Float>, ?endFrame:Null<Float>) : AnimationGroup;
	/**
	 * Start all animations on given targets
	 * @returns the current animation group
	 */
	function start(?loop:Bool, ?speedRatio:Float, ?from:Float, ?to:Float) : AnimationGroup;
	/**
	 * Pause all animations
	 */
	function pause() : AnimationGroup;
	/**
	 * Play all animations to initial state
	 * This function will start() the animations if they were not started or will restart() them if they were paused
	 */
	function play(?loop:Bool) : AnimationGroup;
	/**
	 * Reset all animations to initial state
	 */
	function reset() : AnimationGroup;
	/**
	 * Restart animations from key 0
	 */
	function restart() : AnimationGroup;
	/**
	 * Stop all animations
	 */
	function stop() : AnimationGroup;
	/**
	 * Set animation weight for all animatables
	 * @return the animationGroup
	 * @see http://doc.babylonjs.com/babylon101/animations#animation-weights
	 */
	function setWeightForAllAnimatables(weight:Float) : AnimationGroup;
	/**
	 * Synchronize and normalize all animatables with a source animatable
	 * @return the animationGroup
	 * @see http://doc.babylonjs.com/babylon101/animations#animation-weights
	 */
	function syncAllAnimationsWith(root:Animatable) : AnimationGroup;
	/**
	 * Goes to a specific frame in this animation group
	 * @return the animationGroup
	 */
	function goToFrame(frame:Float) : AnimationGroup;
	/**
	 * Dispose all associated resources
	 */
	function dispose() : Void;
}