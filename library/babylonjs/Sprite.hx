package babylonjs;

@:native("BABYLON.Sprite")
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
	private var _animationStarted : Dynamic;
	private var _loopAnimation : Dynamic;
	private var _fromIndex : Dynamic;
	private var _toIndex : Dynamic;
	private var _delay : Dynamic;
	private var _direction : Dynamic;
	private var _manager : Dynamic;
	private var _time : Dynamic;
	private var _onAnimationEnd : Dynamic;
	var size : Float;

	function new(name:String, manager:SpriteManager) : Void;
	function playAnimation(from:Float, to:Float, loop:Bool, delay:Float, onAnimationEnd:Void->Void) : Void;
	function stopAnimation() : Void;
	function _animate(deltaTime:Float) : Void;
	function dispose() : Void;
}