package babylonjs;

@:native("BABYLON.UniversalCamera")
extern class UniversalCamera extends TouchCamera
{
	var gamepadAngularSensibility : Float;
	var gamepadMoveSensibility : Float;

	@:overload(function(name:String, position:Vector3, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	override function getClassName() : String;
}