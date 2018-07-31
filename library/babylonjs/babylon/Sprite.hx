package babylon;

extern class Sprite
{
	var name : String;
	var position : Vector3;
	var color : Color4;
	var width : Float;
	var height : Float;
	var angle : Float;
	var cellIndex : Float;
	var invertU : Float;
	var invertV : Float;
	var disposeWhenFinishedAnimating : Bool;
	var animations : Array<Animation>;
	var isPickable : Bool;
	var actionManager : ActionManager;
	private var _animationStarted : Dynamic/*UNKNOW_TYPE*/;
	private var _loopAnimation : Dynamic/*UNKNOW_TYPE*/;
	private var _fromIndex : Dynamic/*UNKNOW_TYPE*/;
	private var _toIndex : Dynamic/*UNKNOW_TYPE*/;
	private var _delay : Dynamic/*UNKNOW_TYPE*/;
	private var _direction : Dynamic/*UNKNOW_TYPE*/;
	private var _frameCount : Dynamic/*UNKNOW_TYPE*/;
	private var _manager : Dynamic/*UNKNOW_TYPE*/;
	private var _time : Dynamic/*UNKNOW_TYPE*/;
	private var _onAnimationEnd : Dynamic/*UNKNOW_TYPE*/;
	var size : Float;
	function new(name:String, manager:SpriteManager) : Void;
	function playAnimation(from:Float, to:Float, loop:Bool, delay:Float, onAnimationEnd:Void->Void) : Void;
	function stopAnimation() : Void;
	function _animate(deltaTime:Float) : Void;
	function dispose() : Void;
}