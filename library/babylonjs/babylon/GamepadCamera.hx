package babylonjs.babylon;

@:native("BABYLON.GamepadCamera")
extern class GamepadCamera extends UniversalCamera
{
	//var gamepadAngularSensibility : Float;
	//var gamepadMoveSensibility : Float;

	@:overload(function(name:String, position:Vector3, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	override function getClassName() : String;
}