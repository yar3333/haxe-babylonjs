package babylonjs.babylon;

@:native("BABYLON.PickingInfo")
extern class PickingInfo
{
	var hit : Bool;
	var distance : Float;
	var pickedPoint : Null<Vector3>;
	var pickedMesh : Null<AbstractMesh>;
	var bu : Float;
	var bv : Float;
	var faceId : Float;
	var subMeshId : Float;
	var pickedSprite : Null<Sprite>;

	function getNormal(?useWorldCoordinates:Bool, ?useVerticesNormals:Bool) : Null<Vector3>;
	function getTextureCoordinates() : Null<Vector2>;
}