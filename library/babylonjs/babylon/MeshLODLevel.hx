package babylonjs.babylon;

@:native("BABYLON.MeshLODLevel")
extern class MeshLODLevel
{
	var distance : Float;
	var mesh : Mesh;

	function new(distance:Float, mesh:Mesh) : Void;
}