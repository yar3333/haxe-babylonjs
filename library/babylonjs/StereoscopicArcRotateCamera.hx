package babylonjs;

/**
 * Camera used to simulate stereoscopic rendering (based on ArcRotateCamera)
 */
@:native("BABYLON.StereoscopicArcRotateCamera")
extern class StereoscopicArcRotateCamera extends ArcRotateCamera
{
	/**
	 * Camera used to simulate stereoscopic rendering (based on ArcRotateCamera)
	 */
	@:overload(function(name:String, alpha:Float, beta:Float, radius:Float, target:Vector3, interaxialDistance:Float, isStereoscopicSideBySide:Bool, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Gets camera class name
	 * @returns StereoscopicArcRotateCamera
	 */
	override function getClassName() : String;
}