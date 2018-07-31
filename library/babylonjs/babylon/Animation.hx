package babylon;

extern class Animation
{
	var name : String;
	var targetProperty : String;
	var framePerSecond : Float;
	var dataType : Float;
	var loopMode : Float;
	var enableBlending : Bool;
	private var _keys : Dynamic/*UNKNOW_TYPE*/;
	private var _offsetsCache : Dynamic/*UNKNOW_TYPE*/;
	private var _highLimitsCache : Dynamic/*UNKNOW_TYPE*/;
	private var _stopped : Dynamic/*UNKNOW_TYPE*/;
	var _target : Dynamic;
	private var _blendingFactor : Dynamic/*UNKNOW_TYPE*/;
	private var _easingFunction : Dynamic/*UNKNOW_TYPE*/;
	private var _events : Dynamic/*UNKNOW_TYPE*/;
	var targetPropertyPath : Array<String>;
	var currentFrame : Float;
	var allowMatricesInterpolation : Bool;
	var blendingSpeed : Float;
	private var _originalBlendValue : Dynamic/*UNKNOW_TYPE*/;
	private var _ranges : Dynamic/*UNKNOW_TYPE*/;
	static function _PrepareAnimation(name:String, targetProperty:String, framePerSecond:Float, totalFrame:Float, from:Dynamic, to:Dynamic, ?loopMode:Float, ?easingFunction:EasingFunction) : Animation;
	static function CreateAndStartAnimation(name:String, node:Node, targetProperty:String, framePerSecond:Float, totalFrame:Float, from:Dynamic, to:Dynamic, ?loopMode:Float, ?easingFunction:EasingFunction, ?onAnimationEnd:Void->Void) : Animatable;
	static function CreateMergeAndStartAnimation(name:String, node:Node, targetProperty:String, framePerSecond:Float, totalFrame:Float, from:Dynamic, to:Dynamic, ?loopMode:Float, ?easingFunction:EasingFunction, ?onAnimationEnd:Void->Void) : Animatable;
	function new(name:String, targetProperty:String, framePerSecond:Float, dataType:Float, ?loopMode:Float, ?enableBlending:Bool) : Void;
	/**
	 * @param {boolean} fullDetails - support for multiple levels of logging within scene loading
	 */
	function toString(?fullDetails:Bool) : String;
	/**
	 * Add an event to this animation.
	 */
	function addEvent(event:AnimationEvent) : Void;
	/**
	 * Remove all events found at the given frame
	 * @param frame
	 */
	function removeEvents(frame:Float) : Void;
	function createRange(name:String, from:Float, to:Float) : Void;
	function deleteRange(name:String, ?deleteFrames:Bool) : Void;
	function getRange(name:String) : AnimationRange;
	function reset() : Void;
	function isStopped() : Bool;
	function getKeys() : Array<
	{
		var frame : Float;
		var value : Dynamic;
	}>;
	function getHighestFrame() : Float;
	function getEasingFunction() : IEasingFunction;
	function setEasingFunction(easingFunction:EasingFunction) : Void;
	function floatInterpolateFunction(startValue:Float, endValue:Float, gradient:Float) : Float;
	function quaternionInterpolateFunction(startValue:Quaternion, endValue:Quaternion, gradient:Float) : Quaternion;
	function vector3InterpolateFunction(startValue:Vector3, endValue:Vector3, gradient:Float) : Vector3;
	function vector2InterpolateFunction(startValue:Vector2, endValue:Vector2, gradient:Float) : Vector2;
	function sizeInterpolateFunction(startValue:Size, endValue:Size, gradient:Float) : Size;
	function color3InterpolateFunction(startValue:Color3, endValue:Color3, gradient:Float) : Color3;
	function matrixInterpolateFunction(startValue:Matrix, endValue:Matrix, gradient:Float) : Matrix;
	function clone() : Animation;
	function setKeys(values:Array<
	{
		var frame : Float;
		var value : Dynamic;
	}>) : Void;
	private function _getKeyValue(value);
	private function _interpolate(currentFrame, repeatCount, loopMode, ?offsetValue, ?highLimitValue);
	function setValue(currentValue:Dynamic, ?blend:Bool) : Void;
	function goToFrame(frame:Float) : Void;
	function animate(delay:Float, from:Float, to:Float, loop:Bool, speedRatio:Float, ?blend:Bool) : Bool;
	function serialize() : Dynamic;
	private static var _ANIMATIONTYPE_FLOAT : Dynamic/*UNKNOW_TYPE*/;
	private static var _ANIMATIONTYPE_VECTOR3 : Dynamic/*UNKNOW_TYPE*/;
	private static var _ANIMATIONTYPE_QUATERNION : Dynamic/*UNKNOW_TYPE*/;
	private static var _ANIMATIONTYPE_MATRIX : Dynamic/*UNKNOW_TYPE*/;
	private static var _ANIMATIONTYPE_COLOR3 : Dynamic/*UNKNOW_TYPE*/;
	private static var _ANIMATIONTYPE_VECTOR2 : Dynamic/*UNKNOW_TYPE*/;
	private static var _ANIMATIONTYPE_SIZE : Dynamic/*UNKNOW_TYPE*/;
	private static var _ANIMATIONLOOPMODE_RELATIVE : Dynamic/*UNKNOW_TYPE*/;
	private static var _ANIMATIONLOOPMODE_CYCLE : Dynamic/*UNKNOW_TYPE*/;
	private static var _ANIMATIONLOOPMODE_CONSTANT : Dynamic/*UNKNOW_TYPE*/;
	static var ANIMATIONTYPE_FLOAT : Float;
	static var ANIMATIONTYPE_VECTOR3 : Float;
	static var ANIMATIONTYPE_VECTOR2 : Float;
	static var ANIMATIONTYPE_SIZE : Float;
	static var ANIMATIONTYPE_QUATERNION : Float;
	static var ANIMATIONTYPE_MATRIX : Float;
	static var ANIMATIONTYPE_COLOR3 : Float;
	static var ANIMATIONLOOPMODE_RELATIVE : Float;
	static var ANIMATIONLOOPMODE_CYCLE : Float;
	static var ANIMATIONLOOPMODE_CONSTANT : Float;
	static function Parse(parsedAnimation:Dynamic) : Animation;
	static function AppendSerializedAnimations(source:IAnimatable, destination:Dynamic) : Dynamic;
}