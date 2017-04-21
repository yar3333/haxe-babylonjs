package babylon;

extern class StereoscopicUniversalCamera extends UniversalCamera
{
	function new(name:String, position:Vector3, interaxialDistance:Float, isStereoscopicSideBySide:Bool, scene:Scene) : Void;
	function getTypeName() : String;
}