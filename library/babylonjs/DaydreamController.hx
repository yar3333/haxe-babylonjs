package babylonjs;

/**
 * Google Daydream controller
 */
@:native("BABYLON.DaydreamController")
extern class DaydreamController extends WebVRController
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
	 * Gamepad Id prefix used to identify Daydream Controller.
	 */
	static var GAMEPAD_ID_PREFIX(default, null) : String;

	/**
	 * Google Daydream controller
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