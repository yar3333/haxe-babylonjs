package babylonjs.babylon;

/**
 * Gear VR Controller
 */
@:native("BABYLON.GearVRController")
extern class GearVRController extends WebVRController
{
	/**
	 * Base Url for the controller model.
	 */
	static var MODEL_BASE_URL : String;
	/**
	 * File name for the controller model.
	 */
	static var MODEL_FILENAME : String;
	/**
	 * Gamepad Id prefix used to identify this controller.
	 */
	static var GAMEPAD_ID_PREFIX(default, null) : String;
	private var _buttonIndexToObservableNameMap(default, null) : Dynamic;

	/**
	 * Gear VR Controller
	 */
	@:overload(function(vrGamepad:Dynamic): Void{})
	function new(id:String, index:Float, browserGamepad:Dynamic, ?leftStickX:Float, ?leftStickY:Float, ?rightStickX:Float, ?rightStickY:Float) : Void;
	/**
	 * Implements abstract method on WebVRController class, loading controller meshes and calling this.attachToMesh if successful.
	 */
	override function initControllerMesh(scene:Scene, ?meshLoaded:AbstractMesh->Void) : Void;
	/**
	 * Called once for each button that changed state since the last frame
	 */
	@:overload(function(buttonIdx:Float, state:ExtendedGamepadButton, changes:GamepadButtonChanges): Void{})
	override function _handleButtonChange(buttonIdx:Float, value:ExtendedGamepadButton, changes:GamepadButtonChanges) : Void;
}