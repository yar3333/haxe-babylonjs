package babylonjs;

/**
 * Vive Controller
 */
@:native("BABYLON.ViveController")
extern class ViveController extends WebVRController
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
	 * Fired when the left button on this controller is modified
	 */
	var onLeftButtonStateChangedObservable(default, null) : Observable<ExtendedGamepadButton>;
	/**
	 * Fired when the right button on this controller is modified
	 */
	var onRightButtonStateChangedObservable(default, null) : Observable<ExtendedGamepadButton>;
	/**
	 * Fired when the menu button on this controller is modified
	 */
	var onMenuButtonStateChangedObservable(default, null) : Observable<ExtendedGamepadButton>;

	/**
	 * Vive Controller
	 */
	@:overload(function(vrGamepad:Dynamic): Void{})
	function new(id:String, index:Float, browserGamepad:Dynamic, ?leftStickX:Float, ?leftStickY:Float, ?rightStickX:Float, ?rightStickY:Float) : Void;
	/**
	 * Implements abstract method on WebVRController class, loading controller meshes and calling this.attachToMesh if successful.
	 */
	override function initControllerMesh(scene:Scene, ?meshLoaded:AbstractMesh->Void) : Void;
	/**
	 * Called once for each button that changed state since the last frame
	 * Vive mapping:
	 * 0: touchpad
	 * 1: trigger
	 * 2: left AND right buttons
	 * 3: menu button
	 */
	@:overload(function(buttonIdx:Float, state:ExtendedGamepadButton, changes:GamepadButtonChanges): Void{})
	override function _handleButtonChange(buttonIdx:Float, value:ExtendedGamepadButton, changes:GamepadButtonChanges) : Void;
}