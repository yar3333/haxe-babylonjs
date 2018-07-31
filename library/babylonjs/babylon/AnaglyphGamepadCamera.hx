package babylon;

extern class AnaglyphGamepadCamera extends GamepadCamera
{
	function new(name:String, position:Vector3, interaxialDistance:Float, scene:Scene) : Void;
	function getTypeName() : String;
}