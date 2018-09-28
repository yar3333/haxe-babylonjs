package babylonjs.babylon;

/**
 * Defines the PoseEnabledControllerHelper object that is used initialize a gamepad as the controller type it is specified as (eg. windows mixed reality controller)
 */
@:native("BABYLON.PoseEnabledControllerHelper")
extern class PoseEnabledControllerHelper
{
	/**
	 * Initializes a gamepad as the controller type it is specified as (eg. windows mixed reality controller)
	 * @returns a vr controller of the type the gamepad identified as
	 */
	static function InitiateController(vrGamepad:Dynamic) : haxe.extern.EitherType<OculusTouchController, haxe.extern.EitherType<WindowsMotionController, haxe.extern.EitherType<ViveController, haxe.extern.EitherType<GearVRController, haxe.extern.EitherType<DaydreamController, GenericController>>>>>;
}