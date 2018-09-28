package babylonjs.babylon;

/**
 * Defines the WindowsMotionController object that the state of the windows motion controller
 */
@:native("BABYLON.WindowsMotionController")
extern class WindowsMotionController extends WebVRController
{
	/**
	 * The base url used to load the left and right controller models
	 */
	static var MODEL_BASE_URL : String;
	/**
	 * The name of the left controller model file
	 */
	static var MODEL_LEFT_FILENAME : String;
	/**
	 * The name of the right controller model file
	 */
	static var MODEL_RIGHT_FILENAME : String;
	/**
	 * The controller name prefix for this controller type
	 */
	static var GAMEPAD_ID_PREFIX(default, null) : String;
	/**
	 * The controller id pattern for this controller type
	 */
	private static var GAMEPAD_ID_PATTERN(default, null) : Dynamic;
	private var _loadedMeshInfo : Dynamic;
	private var _mapping(default, null) : Dynamic;
	/**
	 * Fired when the trackpad on this controller is clicked
	 */
	var onTrackpadChangedObservable : Observable<ExtendedGamepadButton>;
	/**
	 * Fired when the trackpad on this controller is modified
	 */
	var onTrackpadValuesChangedObservable : Observable<StickValues>;
	/**
	 * The current x and y values of this controller's trackpad
	 */
	var trackpad : StickValues;
	/**
	 * Fired when the trigger on this controller is modified
	 */
	var onTriggerButtonStateChangedObservable(default, null) : Observable<ExtendedGamepadButton>;
	/**
	 * Fired when the menu button on this controller is modified
	 */
	var onMenuButtonStateChangedObservable(default, null) : Observable<ExtendedGamepadButton>;
	/**
	 * Fired when the grip button on this controller is modified
	 */
	var onGripButtonStateChangedObservable(default, null) : Observable<ExtendedGamepadButton>;
	/**
	 * Fired when the thumbstick button on this controller is modified
	 */
	var onThumbstickButtonStateChangedObservable(default, null) : Observable<ExtendedGamepadButton>;
	/**
	 * Fired when the touchpad button on this controller is modified
	 */
	var onTouchpadButtonStateChangedObservable(default, null) : Observable<ExtendedGamepadButton>;
	/**
	 * Fired when the touchpad values on this controller are modified
	 */
	var onTouchpadValuesChangedObservable(default, null) : Observable<StickValues>;

	/**
	 * Defines the WindowsMotionController object that the state of the windows motion controller
	 */
	@:overload(function(vrGamepad:Dynamic): Void{})
	function new(id:String, index:Float, browserGamepad:Dynamic, ?leftStickX:Float, ?leftStickY:Float, ?rightStickX:Float, ?rightStickY:Float) : Void;
	/**
	 * Called once per frame by the engine.
	 */
	override function update() : Void;
	/**
	 * Called once for each button that changed state since the last frame
	 */
	@:overload(function(buttonIdx:Float, state:ExtendedGamepadButton, changes:GamepadButtonChanges): Void{})
	override function _handleButtonChange(buttonIdx:Float, value:ExtendedGamepadButton, changes:GamepadButtonChanges) : Void;
	/**
	 * Moves the buttons on the controller mesh based on their current state
	 */
	function _lerpButtonTransform(buttonName:String, buttonValue:Float) : Void;
	/**
	 * Moves the axis on the controller mesh based on its current state
	 * @hidden
	 */
	function _lerpAxisTransform(axis:Float, axisValue:Float) : Void;
	/**
	 * Implements abstract method on WebVRController class, loading controller meshes and calling this.attachToMesh if successful.
	 */
	@:overload(function(scene:Scene,?meshLoaded:AbstractMesh->Void,?forceDefault:Bool): Void{})
	override function initControllerMesh(scene:Scene, ?meshLoaded:AbstractMesh->Void) : Void;
	/**
	 * Takes a list of meshes (as loaded from the glTF file) and finds the root node, as well as nodes that
	 * can be transformed by button presses and axes values, based on this._mapping.
	 * 
	 * @return structured view of the given meshes, with mapping of buttons and axes to meshes that can be transformed.
	 */
	private function processModel(scene:Dynamic, meshes:Dynamic) : Dynamic;
	private function createMeshInfo(rootNode:Dynamic) : Dynamic;
	/**
	 * Gets the ray of the controller in the direction the controller is pointing
	 * @returns a ray in the direction the controller is pointing
	 */
	override function getForwardRay(?length:Float) : Ray;
	/**
	 * Disposes of the controller
	 */
	override function dispose() : Void;
}