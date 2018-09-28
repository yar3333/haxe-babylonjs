package babylonjs.babylon;

@:native("BABYLON.TouchCamera")
extern class TouchCamera extends FreeCamera
{
	var touchAngularSensibility : Float;
	var touchMoveSensibility : Float;

	@:overload(function(name:String, position:Vector3, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	override function getClassName() : String;
	override function _setupInputs() : Void;
}