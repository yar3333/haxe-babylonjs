package babylonjs.babylon;

/**
 * Camera used to simulate anaglyphic rendering (based on GamepadCamera)
 */
@:native("BABYLON.AnaglyphGamepadCamera")
extern class AnaglyphGamepadCamera extends GamepadCamera
{
	/**
	 * Camera used to simulate anaglyphic rendering (based on GamepadCamera)
	 */
	@:overload(function(name:String, position:Vector3, interaxialDistance:Float, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Gets camera class name
	 * @returns AnaglyphGamepadCamera
	 */
	override function getClassName() : String;
}