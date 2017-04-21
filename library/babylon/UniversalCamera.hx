package babylon;

extern class UniversalCamera extends TouchCamera
{
	var gamepadAngularSensibility : Float;
	var gamepadMoveSensibility : Float;
	function new(name:String, position:Vector3, scene:Scene) : Void;
	function getTypeName() : String;
}