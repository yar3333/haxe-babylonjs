package babylonjs.babylon;

@:native("BABYLON.Reference")
extern class Reference
{
	var vertexId : Float;
	var triangleId : Float;

	function new(vertexId:Float, triangleId:Float) : Void;
}