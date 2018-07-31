package babylon;

extern class FollowCamera extends TargetCamera
{
	var radius : Float;
	var rotationOffset : Float;
	var heightOffset : Float;
	var cameraAcceleration : Float;
	var maxCameraSpeed : Float;
	var lockedTarget : AbstractMesh;
	function new(name:String, position:Vector3, scene:Scene, ?lockedTarget:AbstractMesh) : Void;
	private function getRadians(degrees);
	private function follow(cameraTarget);
	function _checkInputs() : Void;
	function getTypeName() : String;
}