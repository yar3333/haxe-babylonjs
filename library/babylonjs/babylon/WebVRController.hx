package babylonjs.babylon;

/**
 * Defines the WebVRController object that represents controllers tracked in 3D space
 */
@:native("BABYLON.WebVRController")
extern class WebVRController extends PoseEnabledController
{
	/**
	 * Internal, the default controller model for the controller
	 */
	private var _defaultModel : AbstractMesh;
	/**
	 * Fired when the trigger state has changed
	 */
	var onTriggerStateChangedObservable : Observable<ExtendedGamepadButton>;
	/**
	 * Fired when the main button state has changed
	 */
	var onMainButtonStateChangedObservable : Observable<ExtendedGamepadButton>;
	/**
	 * Fired when the secondary button state has changed
	 */
	var onSecondaryButtonStateChangedObservable : Observable<ExtendedGamepadButton>;
	/**
	 * Fired when the pad state has changed
	 */
	var onPadStateChangedObservable : Observable<ExtendedGamepadButton>;
	/**
	 * Fired when controllers stick values have changed
	 */
	var onPadValuesChangedObservable : Observable<StickValues>;
	/**
	 * Array of button availible on the controller
	 */
	private var _buttons : Array<MutableGamepadButton>;
	private var _onButtonStateChange : Dynamic;
	/**
	 * X and Y axis corrisponding to the controllers joystick
	 */
	var pad : StickValues;
	/**
	 * 'left' or 'right', see https://w3c.github.io/gamepad/extensions.html#gamepadhand-enum
	 */
	var hand : String;
	/**
	 * The default controller model for the controller
	 */
	var defaultModel(default, null) : AbstractMesh;
	private var _changes : Dynamic;

	/**
	 * Fired when a controller button's state has changed
	 */
	function onButtonStateChange(callback:Float->Float->ExtendedGamepadButton->Void) : Void;
	/**
	 * Defines the WebVRController object that represents controllers tracked in 3D space
	 */
	@:overload(function(vrGamepad:Dynamic): Void{})
	function new(id:String, index:Float, browserGamepad:Dynamic, ?leftStickX:Float, ?leftStickY:Float, ?rightStickX:Float, ?rightStickY:Float) : Void;
	/**
	 * Updates the state of the controller and mesh based on the current position and rotation of the controller
	 */
	override function update() : Void;
	/**
	 * Function to be called when a button is modified
	 */
	function _handleButtonChange(buttonIdx:Float, value:ExtendedGamepadButton, changes:GamepadButtonChanges) : Void;
	/**
	 * Loads a mesh and attaches it to the controller
	 */
	function initControllerMesh(scene:Scene, ?meshLoaded:AbstractMesh->Void) : Void;
	private function _setButtonValue(newState:Dynamic, currentState:Dynamic, buttonIndex:Dynamic) : Dynamic;
	private function _checkChanges(newState:Dynamic, currentState:Dynamic) : Dynamic;
	/**
	 * Disposes of th webVRCOntroller
	 */
	override function dispose() : Void;
}