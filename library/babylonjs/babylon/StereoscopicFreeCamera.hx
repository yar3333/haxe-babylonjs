package babylonjs.babylon;

/**
 * Camera used to simulate stereoscopic rendering (based on FreeCamera)
 */
@:native("BABYLON.StereoscopicFreeCamera")
extern class StereoscopicFreeCamera extends FreeCamera
{
	/**
	 * Camera used to simulate stereoscopic rendering (based on FreeCamera)
	 */
	@:overload(function(name:String, position:Vector3, interaxialDistance:Float, isStereoscopicSideBySide:Bool, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Gets camera class name
	 * @returns StereoscopicFreeCamera
	 */
	override function getClassName() : String;
}