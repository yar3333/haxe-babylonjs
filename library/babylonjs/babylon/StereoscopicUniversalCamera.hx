package babylonjs.babylon;

/**
 * Camera used to simulate stereoscopic rendering (based on UniversalCamera)
 */
@:native("BABYLON.StereoscopicUniversalCamera")
extern class StereoscopicUniversalCamera extends UniversalCamera
{
	/**
	 * Camera used to simulate stereoscopic rendering (based on UniversalCamera)
	 */
	@:overload(function(name:String, position:Vector3, interaxialDistance:Float, isStereoscopicSideBySide:Bool, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Gets camera class name
	 * @returns StereoscopicUniversalCamera
	 */
	override function getClassName() : String;
}