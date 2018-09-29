package babylonjs;

@:native("BABYLON.EasingFunction")
extern class EasingFunction
	implements IEasingFunction
{
	private static var _EASINGMODE_EASEIN : Dynamic;
	private static var _EASINGMODE_EASEOUT : Dynamic;
	private static var _EASINGMODE_EASEINOUT : Dynamic;
	static var EASINGMODE_EASEIN(default, null) : Float;
	static var EASINGMODE_EASEOUT(default, null) : Float;
	static var EASINGMODE_EASEINOUT(default, null) : Float;
	private var _easingMode : Dynamic;

	function setEasingMode(easingMode:Float) : Void;
	function getEasingMode() : Float;
	function easeInCore(gradient:Float) : Float;
	function ease(gradient:Float) : Float;
}