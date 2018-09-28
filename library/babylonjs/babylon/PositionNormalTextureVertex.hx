package babylonjs.babylon;

@:native("BABYLON.PositionNormalTextureVertex")
extern class PositionNormalTextureVertex
{
	var position : Vector3;
	var normal : Vector3;
	var uv : Vector2;

	function new(?position:Vector3, ?normal:Vector3, ?uv:Vector2) : Void;
	function clone() : PositionNormalTextureVertex;
}