package babylon;

extern class StereoscopicFreeCamera extends FreeCamera
{
	function new(name:String, position:Vector3, interaxialDistance:Float, isStereoscopicSideBySide:Bool, scene:Scene) : Void;
	function getTypeName() : String;
}