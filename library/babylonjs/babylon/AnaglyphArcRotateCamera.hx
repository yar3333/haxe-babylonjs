package babylonjs.babylon;

/**
 * Camera used to simulate anaglyphic rendering (based on ArcRotateCamera)
 */
@:native("BABYLON.AnaglyphArcRotateCamera")
extern class AnaglyphArcRotateCamera extends ArcRotateCamera
{
	/**
	 * Camera used to simulate anaglyphic rendering (based on ArcRotateCamera)
	 */
	@:overload(function(name:String, alpha:Float, beta:Float, radius:Float, target:Vector3, interaxialDistance:Float, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Gets camera class name
	 * @returns AnaglyphArcRotateCamera
	 */
	override function getClassName() : String;
}