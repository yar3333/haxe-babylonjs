package babylonjs.babylon;

@:native("BABYLON.Animatable")
extern class Animatable
{
	var target : Dynamic;
	var fromFrame : Float;
	var toFrame : Float;
	var loopAnimation : Bool;
	var onAnimationEnd : haxe.extern.EitherType<(Void->Void), {}>;
	private var _localDelayOffset : Dynamic;
	private var _pausedDelay : Dynamic;
	private var _runtimeAnimations : Dynamic;
	private var _paused : Dynamic;
	private var _scene : Dynamic;
	private var _speedRatio : Dynamic;
	private var _weight : Dynamic;
	private var _syncRoot : Dynamic;
	var animationStarted : Bool;
	/**
	 * Gets the root Animatable used to synchronize and normalize animations
	 */
	var syncRoot(default, null) : Animatable;
	/**
	 * Gets the current frame of the first RuntimeAnimation
	 * Used to synchronize Animatables
	 */
	var masterFrame(default, null) : Float;
	/**
	 * Gets or sets the animatable weight (-1.0 by default meaning not weighted)
	 */
	var weight : Float;
	/**
	 * Gets or sets the speed ratio to apply to the animatable (1.0 by default)
	 */
	var speedRatio : Float;

	function new(scene:Scene, target:Dynamic, ?fromFrame:Float, ?toFrame:Float, ?loopAnimation:Bool, ?speedRatio:Float, ?onAnimationEnd:haxe.extern.EitherType<(Void->Void), {}>, ?animations:Dynamic) : Void;
	/**
	 * Synchronize and normalize current Animatable with a source Animatable
	 * This is useful when using animation weights and when animations are not of the same length
	 * @returns the current Animatable
	 */
	function syncWith(root:Animatable) : Animatable;
	function getAnimations() : Array<RuntimeAnimation>;
	function appendAnimations(target:Dynamic, animations:Array<Animation>) : Void;
	function getAnimationByTargetProperty(property:String) : Null<Animation>;
	function getRuntimeAnimationByTargetProperty(property:String) : Null<RuntimeAnimation>;
	function reset() : Void;
	function enableBlending(blendingSpeed:Float) : Void;
	function disableBlending() : Void;
	function goToFrame(frame:Float) : Void;
	function pause() : Void;
	function restart() : Void;
	function stop(?animationName:String) : Void;
	function _animate(delay:Float) : Bool;
}