package babylonjs;

@:native("BABYLON.FollowCamera")
extern class FollowCamera extends TargetCamera
{
	var radius : Float;
	var rotationOffset : Float;
	var heightOffset : Float;
	var cameraAcceleration : Float;
	var maxCameraSpeed : Float;
	//var lockedTarget : Null<AbstractMesh>;

	@:overload(function(name:String, position:Vector3, scene:Scene,?lockedTarget:Null<AbstractMesh>): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	private function getRadians(degrees:Dynamic) : Dynamic;
	private function follow(cameraTarget:Dynamic) : Dynamic;
	override function _checkInputs() : Void;
	override function getClassName() : String;
}