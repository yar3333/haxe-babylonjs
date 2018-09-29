package babylonjs;

/**
 * Camera used to simulate stereoscopic rendering (based on GamepadCamera)
 */
@:native("BABYLON.StereoscopicGamepadCamera")
extern class StereoscopicGamepadCamera extends GamepadCamera
{
	/**
	 * Camera used to simulate stereoscopic rendering (based on GamepadCamera)
	 */
	@:overload(function(name:String, position:Vector3, interaxialDistance:Float, isStereoscopicSideBySide:Bool, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Gets camera class name
	 * @returns StereoscopicGamepadCamera
	 */
	override function getClassName() : String;
}