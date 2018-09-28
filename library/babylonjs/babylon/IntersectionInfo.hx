package babylonjs.babylon;

@:native("BABYLON.IntersectionInfo")
extern class IntersectionInfo
{
	var bu : Null<Float>;
	var bv : Null<Float>;
	var distance : Float;
	var faceId : Float;
	var subMeshId : Float;

	function new(bu:Null<Float>, bv:Null<Float>, distance:Float) : Void;
}