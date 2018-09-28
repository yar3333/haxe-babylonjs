package babylonjs.babylon;

@:native("BABYLON.PositionNormalVertex")
extern class PositionNormalVertex
{
	var position : Vector3;
	var normal : Vector3;

	function new(?position:Vector3, ?normal:Vector3) : Void;
	function clone() : PositionNormalVertex;
}