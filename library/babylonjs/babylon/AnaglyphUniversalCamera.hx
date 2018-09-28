package babylonjs.babylon;

/**
 * Camera used to simulate anaglyphic rendering (based on UniversalCamera)
 */
@:native("BABYLON.AnaglyphUniversalCamera")
extern class AnaglyphUniversalCamera extends UniversalCamera
{
	/**
	 * Camera used to simulate anaglyphic rendering (based on UniversalCamera)
	 */
	@:overload(function(name:String, position:Vector3, interaxialDistance:Float, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Gets camera class name
	 * @returns AnaglyphUniversalCamera
	 */
	override function getClassName() : String;
}