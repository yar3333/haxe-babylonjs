package babylon;

extern class EasingFunction implements IEasingFunction
{
	private static var _EASINGMODE_EASEIN : Dynamic/*UNKNOW_TYPE*/;
	private static var _EASINGMODE_EASEOUT : Dynamic/*UNKNOW_TYPE*/;
	private static var _EASINGMODE_EASEINOUT : Dynamic/*UNKNOW_TYPE*/;
	static var EASINGMODE_EASEIN : Float;
	static var EASINGMODE_EASEOUT : Float;
	static var EASINGMODE_EASEINOUT : Float;
	private var _easingMode : Dynamic/*UNKNOW_TYPE*/;
	function setEasingMode(easingMode:Float) : Void;
	function getEasingMode() : Float;
	function easeInCore(gradient:Float) : Float;
	function ease(gradient:Float) : Float;
}