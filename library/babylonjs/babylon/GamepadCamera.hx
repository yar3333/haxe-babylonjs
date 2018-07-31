package babylon;

extern class GamepadCamera extends UniversalCamera
{
	var gamepadAngularSensibility : Float;
	var gamepadMoveSensibility : Float;
	function new(name:String, position:Vector3, scene:Scene) : Void;
	function getTypeName() : String;
}