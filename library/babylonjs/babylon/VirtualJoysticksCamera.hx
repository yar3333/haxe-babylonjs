package babylonjs.babylon;

@:native("BABYLON.VirtualJoysticksCamera")
extern class VirtualJoysticksCamera extends FreeCamera
{
	@:overload(function(name:String, position:Vector3, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	override function getClassName() : String;
}