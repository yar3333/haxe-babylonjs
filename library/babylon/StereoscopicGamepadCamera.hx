package babylon;

extern class StereoscopicGamepadCamera extends GamepadCamera
{
	function new(name:String, position:Vector3, interaxialDistance:Float, isStereoscopicSideBySide:Bool, scene:Scene) : Void;
	function getTypeName() : String;
}