package babylonjs.babylon;

/**
 * Oculus Touch Controller
 */
@:native("BABYLON.OculusTouchController")
extern class OculusTouchController extends WebVRController
{
	/**
	 * Base Url for the controller model.
	 */
	static var MODEL_BASE_URL : String;
	/**
	 * File name for the left controller model.
	 */
	static var MODEL_LEFT_FILENAME : String;
	/**
	 * File name for the right controller model.
	 */
	static var MODEL_RIGHT_FILENAME : String;
	/**
	 * Fired when the secondary trigger on this controller is modified
	 */
	var onSecondaryTriggerStateChangedObservable : Observable<ExtendedGamepadButton>;
	/**
	 * Fired when the thumb rest on this controller is modified
	 */
	var onThumbRestChangedObservable : Observable<ExtendedGamepadButton>;
	/**
	 * Fired when the A button on this controller is modified
	 */
	var onAButtonStateChangedObservable(default, null) : Observable<ExtendedGamepadButton>;
	/**
	 * Fired when the B button on this controller is modified
	 */
	var onBButtonStateChangedObservable(default, null) : Observable<ExtendedGamepadButton>;
	/**
	 * Fired when the X button on this controller is modified
	 */
	var onXButtonStateChangedObservable(default, null) : Observable<ExtendedGamepadButton>;
	/**
	 * Fired when the Y button on this controller is modified
	 */
	var onYButtonStateChangedObservable(default, null) : Observable<ExtendedGamepadButton>;

	/**
	 * Oculus Touch Controller
	 */
	@:overload(function(vrGamepad:Dynamic): Void{})
	function new(id:String, index:Float, browserGamepad:Dynamic, ?leftStickX:Float, ?leftStickY:Float, ?rightStickX:Float, ?rightStickY:Float) : Void;
	/**
	 * Implements abstract method on WebVRController class, loading controller meshes and calling this.attachToMesh if successful.
	 */
	override function initControllerMesh(scene:Scene, ?meshLoaded:AbstractMesh->Void) : Void;
	/**
	 * Called once for each button that changed state since the last frame
	 * 0) thumb stick (touch, press, value = pressed (0,1)). value is in this.leftStick
	 * 1) index trigger (touch (?), press (only when value > 0.1), value 0 to 1)
	 * 2) secondary trigger (same)
	 * 3) A (right) X (left), touch, pressed = value
	 * 4) B / Y
	 * 5) thumb rest
	 */
	@:overload(function(buttonIdx:Float, state:ExtendedGamepadButton, changes:GamepadButtonChanges): Void{})
	override function _handleButtonChange(buttonIdx:Float, value:ExtendedGamepadButton, changes:GamepadButtonChanges) : Void;
}