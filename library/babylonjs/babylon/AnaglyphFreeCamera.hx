package babylonjs.babylon;

/**
 * Camera used to simulate anaglyphic rendering (based on FreeCamera)
 */
@:native("BABYLON.AnaglyphFreeCamera")
extern class AnaglyphFreeCamera extends FreeCamera
{
	/**
	 * Camera used to simulate anaglyphic rendering (based on FreeCamera)
	 */
	@:overload(function(name:String, position:Vector3, interaxialDistance:Float, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Gets camera class name
	 * @returns AnaglyphFreeCamera
	 */
	override function getClassName() : String;
}