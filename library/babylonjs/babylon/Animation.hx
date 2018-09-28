package babylonjs.babylon;

/**
 * Class used to store any kind of animation
 */
@:native("BABYLON.Animation")
extern class Animation
{
	/**
	 * Name of the animation 
	 */
	var name : String;
	/**
	 * Property to animate 
	 */
	var targetProperty : String;
	/**
	 * The frames per second of the animation 
	 */
	var framePerSecond : Float;
	/**
	 * The data type of the animation 
	 */
	var dataType : Float;
	/**
	 * The loop mode of the animation 
	 */
	var loopMode : haxe.extern.EitherType<Float, {}>;
	/**
	 * Specifies if blending should be enabled 
	 */
	var enableBlending : haxe.extern.EitherType<Bool, {}>;
	/**
	 * Use matrix interpolation instead of using direct key value when animating matrices
	 */
	static var AllowMatricesInterpolation : Bool;
	/**
	 * When matrix interpolation is enabled, this boolean forces the system to use Matrix.DecomposeLerp instead of Matrix.Lerp. Interpolation is more precise but slower
	 */
	static var AllowMatrixDecomposeForInterpolation : Bool;
	/**
	 * Stores the key frames of the animation
	 */
	private var _keys : Dynamic;
	/**
	 * Stores the easing function of the animation
	 */
	private var _easingFunction : Dynamic;
	/**
	 * @hidden Internal use only
	 */
	var _runtimeAnimations : Array<RuntimeAnimation>;
	/**
	 * The set of event that will be linked to this animation
	 */
	private var _events : Dynamic;
	/**
	 * Stores an array of target property paths
	 */
	var targetPropertyPath : Array<String>;
	/**
	 * Stores the blending speed of the animation
	 */
	var blendingSpeed : Float;
	/**
	 * Stores the animation ranges for the animation
	 */
	private var _ranges : Dynamic;
	/**
	 * Return the array of runtime animations currently using this animation
	 */
	var runtimeAnimations(default, null) : Array<RuntimeAnimation>;
	/**
	 * Specifies if any of the runtime animations are currently running
	 */
	var hasRunningRuntimeAnimations(default, null) : Bool;
	/**
	 * Float animation type
	 */
	private static var _ANIMATIONTYPE_FLOAT : Dynamic;
	/**
	 * Vector3 animation type
	 */
	private static var _ANIMATIONTYPE_VECTOR3 : Dynamic;
	/**
	 * Quaternion animation type
	 */
	private static var _ANIMATIONTYPE_QUATERNION : Dynamic;
	/**
	 * Matrix animation type
	 */
	private static var _ANIMATIONTYPE_MATRIX : Dynamic;
	/**
	 * Color3 animation type
	 */
	private static var _ANIMATIONTYPE_COLOR3 : Dynamic;
	/**
	 * Vector2 animation type
	 */
	private static var _ANIMATIONTYPE_VECTOR2 : Dynamic;
	/**
	 * Size animation type
	 */
	private static var _ANIMATIONTYPE_SIZE : Dynamic;
	/**
	 * Relative Loop Mode
	 */
	private static var _ANIMATIONLOOPMODE_RELATIVE : Dynamic;
	/**
	 * Cycle Loop Mode
	 */
	private static var _ANIMATIONLOOPMODE_CYCLE : Dynamic;
	/**
	 * Constant Loop Mode
	 */
	private static var _ANIMATIONLOOPMODE_CONSTANT : Dynamic;
	/**
	 * Get the float animation type
	 */
	static var ANIMATIONTYPE_FLOAT(default, null) : Float;
	/**
	 * Get the Vector3 animation type
	 */
	static var ANIMATIONTYPE_VECTOR3(default, null) : Float;
	/**
	 * Get the Vectpr2 animation type
	 */
	static var ANIMATIONTYPE_VECTOR2(default, null) : Float;
	/**
	 * Get the Size animation type
	 */
	static var ANIMATIONTYPE_SIZE(default, null) : Float;
	/**
	 * Get the Quaternion animation type
	 */
	static var ANIMATIONTYPE_QUATERNION(default, null) : Float;
	/**
	 * Get the Matrix animation type
	 */
	static var ANIMATIONTYPE_MATRIX(default, null) : Float;
	/**
	 * Get the Color3 animation type
	 */
	static var ANIMATIONTYPE_COLOR3(default, null) : Float;
	/**
	 * Get the Relative Loop Mode
	 */
	static var ANIMATIONLOOPMODE_RELATIVE(default, null) : Float;
	/**
	 * Get the Cycle Loop Mode
	 */
	static var ANIMATIONLOOPMODE_CYCLE(default, null) : Float;
	/**
	 * Get the Constant Loop Mode
	 */
	static var ANIMATIONLOOPMODE_CONSTANT(default, null) : Float;

	/**
	 * @hidden Internal use
	 */
	static function _PrepareAnimation(name:String, targetProperty:String, framePerSecond:Float, totalFrame:Float, from:Dynamic, to:Dynamic, ?loopMode:Float, ?easingFunction:EasingFunction) : Null<Animation>;
	/**
	 * Sets up an animation
	 * @returns The created animation
	 */
	static function CreateAnimation(property:String, animationType:Float, framePerSecond:Float, easingFunction:EasingFunction) : Animation;
	/**
	 * Create and start an animation on a node
	 * @returns the animatable created for this animation
	 */
	static function CreateAndStartAnimation(name:String, node:Node, targetProperty:String, framePerSecond:Float, totalFrame:Float, from:Dynamic, to:Dynamic, ?loopMode:Float, ?easingFunction:EasingFunction, ?onAnimationEnd:Void->Void) : Null<Animatable>;
	/**
	 * Create and start an animation on a node and its descendants
	 * @returns the list of animatables created for all nodes
	 * @example https://www.babylonjs-playground.com/#MH0VLI
	 */
	static function CreateAndStartHierarchyAnimation(name:String, node:Node, directDescendantsOnly:Bool, targetProperty:String, framePerSecond:Float, totalFrame:Float, from:Dynamic, to:Dynamic, ?loopMode:Float, ?easingFunction:EasingFunction, ?onAnimationEnd:Void->Void) : Null<Array<Animatable>>;
	/**
	 * Creates a new animation, merges it with the existing animations and starts it
	 * @returns Nullable animation
	 */
	static function CreateMergeAndStartAnimation(name:String, node:Node, targetProperty:String, framePerSecond:Float, totalFrame:Float, from:Dynamic, to:Dynamic, ?loopMode:Float, ?easingFunction:EasingFunction, ?onAnimationEnd:Void->Void) : Null<Animatable>;
	/**
	 * Transition property of the Camera to the target Value
	 * @returns Nullable animation
	 */
	static function TransitionTo(property:String, targetValue:Dynamic, host:Dynamic, scene:Scene, frameRate:Float, transition:Animation, duration:Float, ?onAnimationEnd:Null<Void->Void>) : Null<Animatable>;
	/**
	 * Class used to store any kind of animation
	 */
	function new(name:String, targetProperty:String, framePerSecond:Float, dataType:Float, ?loopMode:haxe.extern.EitherType<Float, {}>, ?enableBlending:haxe.extern.EitherType<Bool, {}>) : Void;
	/**
	 * Converts the animation to a string
	 * @returns String form of the animation
	 */
	function toString(?fullDetails:Bool) : String;
	/**
	 * Add an event to this animation
	 */
	function addEvent(event:AnimationEvent) : Void;
	/**
	 * Remove all events found at the given frame
	 */
	function removeEvents(frame:Float) : Void;
	/**
	 * Retrieves all the events from the animation
	 * @returns Events from the animation
	 */
	function getEvents() : Array<AnimationEvent>;
	/**
	 * Creates an animation range
	 */
	function createRange(name:String, from:Float, to:Float) : Void;
	/**
	 * Deletes an animation range by name
	 */
	function deleteRange(name:String, ?deleteFrames:Bool) : Void;
	/**
	 * Gets the animation range by name, or null if not defined
	 * @returns Nullable animation range
	 */
	function getRange(name:String) : Null<AnimationRange>;
	/**
	 * Gets the key frames from the animation
	 * @returns The key frames of the animation
	 */
	function getKeys() : Array<IAnimationKey>;
	/**
	 * Gets the highest frame rate of the animation
	 * @returns Highest frame rate of the animation
	 */
	function getHighestFrame() : Float;
	/**
	 * Gets the easing function of the animation
	 * @returns Easing function of the animation
	 */
	function getEasingFunction() : IEasingFunction;
	/**
	 * Sets the easing function of the animation
	 */
	function setEasingFunction(easingFunction:EasingFunction) : Void;
	/**
	 * Interpolates a scalar linearly
	 * @returns Interpolated scalar value
	 */
	function floatInterpolateFunction(startValue:Float, endValue:Float, gradient:Float) : Float;
	/**
	 * Interpolates a scalar cubically
	 * @returns Interpolated scalar value
	 */
	function floatInterpolateFunctionWithTangents(startValue:Float, outTangent:Float, endValue:Float, inTangent:Float, gradient:Float) : Float;
	/**
	 * Interpolates a quaternion using a spherical linear interpolation
	 * @returns Interpolated quaternion value
	 */
	function quaternionInterpolateFunction(startValue:Quaternion, endValue:Quaternion, gradient:Float) : Quaternion;
	/**
	 * Interpolates a quaternion cubically
	 * @returns Interpolated quaternion value
	 */
	function quaternionInterpolateFunctionWithTangents(startValue:Quaternion, outTangent:Quaternion, endValue:Quaternion, inTangent:Quaternion, gradient:Float) : Quaternion;
	/**
	 * Interpolates a Vector3 linearl
	 * @returns Interpolated scalar value
	 */
	function vector3InterpolateFunction(startValue:Vector3, endValue:Vector3, gradient:Float) : Vector3;
	/**
	 * Interpolates a Vector3 cubically
	 * @returns InterpolatedVector3 value
	 */
	function vector3InterpolateFunctionWithTangents(startValue:Vector3, outTangent:Vector3, endValue:Vector3, inTangent:Vector3, gradient:Float) : Vector3;
	/**
	 * Interpolates a Vector2 linearly
	 * @returns Interpolated Vector2 value
	 */
	function vector2InterpolateFunction(startValue:Vector2, endValue:Vector2, gradient:Float) : Vector2;
	/**
	 * Interpolates a Vector2 cubically
	 * @returns Interpolated Vector2 value
	 */
	function vector2InterpolateFunctionWithTangents(startValue:Vector2, outTangent:Vector2, endValue:Vector2, inTangent:Vector2, gradient:Float) : Vector2;
	/**
	 * Interpolates a size linearly
	 * @returns Interpolated Size value
	 */
	function sizeInterpolateFunction(startValue:Size, endValue:Size, gradient:Float) : Size;
	/**
	 * Interpolates a Color3 linearly
	 * @returns Interpolated Color3 value
	 */
	function color3InterpolateFunction(startValue:Color3, endValue:Color3, gradient:Float) : Color3;
	/**
	 * @hidden Internal use only
	 */
	function _getKeyValue(value:Dynamic) : Dynamic;
	/**
	 * @hidden Internal use only
	 */
	function _interpolate(currentFrame:Float, repeatCount:Float, ?workValue:Dynamic, ?loopMode:Float, ?offsetValue:Dynamic, ?highLimitValue:Dynamic) : Dynamic;
	/**
	 * Defines the function to use to interpolate matrices
	 * @returns the interpolated matrix
	 */
	function matrixInterpolateFunction(startValue:Matrix, endValue:Matrix, gradient:Float, ?result:Matrix) : Matrix;
	/**
	 * Makes a copy of the animation
	 * @returns Cloned animation
	 */
	function clone() : Animation;
	/**
	 * Sets the key frames of the animation
	 */
	function setKeys(values:Array<IAnimationKey>) : Void;
	/**
	 * Serializes the animation to an object
	 * @returns Serialized object
	 */
	function serialize() : Dynamic;
	/**
	 * @hidden 
	 */
	static function _UniversalLerp(left:Dynamic, right:Dynamic, amount:Float) : Dynamic;
	/**
	 * Parses an animation object and creates an animation
	 * @returns Animation object
	 */
	static function Parse(parsedAnimation:Dynamic) : Animation;
	/**
	 * Appends the serialized animations from the source animations
	 */
	static function AppendSerializedAnimations(source:IAnimatable, destination:Dynamic) : Void;
}