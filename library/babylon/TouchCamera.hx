package babylon;

extern class TouchCamera extends FreeCamera
{
	var touchAngularSensibility : Float;
	var touchMoveSensibility : Float;
	function new(name:String, position:Vector3, scene:Scene) : Void;
	function getTypeName() : String;
	function _setupInputs() : Void;
}