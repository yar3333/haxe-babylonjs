package babylon;

extern class Animatable
{
	var target : Dynamic;
	var fromFrame : Float;
	var toFrame : Float;
	var loopAnimation : Bool;
	var speedRatio : Float;
	var onAnimationEnd : Dynamic;
	private var _localDelayOffset : Dynamic/*UNKNOW_TYPE*/;
	private var _pausedDelay : Dynamic/*UNKNOW_TYPE*/;
	private var _animations : Dynamic/*UNKNOW_TYPE*/;
	private var _paused : Dynamic/*UNKNOW_TYPE*/;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	var animationStarted : Bool;
	function new(scene:Scene, target:Dynamic, ?fromFrame:Float, ?toFrame:Float, ?loopAnimation:Bool, ?speedRatio:Float, ?onAnimationEnd:Dynamic, ?animations:Dynamic) : Void;
	function getAnimations() : Array<Animation>;
	function appendAnimations(target:Dynamic, animations:Array<Animation>) : Void;
	function getAnimationByTargetProperty(property:String) : Animation;
	function reset() : Void;
	function enableBlending(blendingSpeed:Float) : Void;
	function disableBlending() : Void;
	function goToFrame(frame:Float) : Void;
	function pause() : Void;
	function restart() : Void;
	function stop(?animationName:String) : Void;
	function _animate(delay:Float) : Bool;
}