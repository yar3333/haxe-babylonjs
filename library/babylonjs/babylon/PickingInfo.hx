package babylon;

extern class PickingInfo
{
	var hit : Bool;
	var distance : Float;
	var pickedPoint : Vector3;
	var pickedMesh : AbstractMesh;
	var bu : Float;
	var bv : Float;
	var faceId : Float;
	var subMeshId : Float;
	var pickedSprite : Sprite;
	function getNormal(?useWorldCoordinates:Bool, ?useVerticesNormals:Bool) : Vector3;
	function getTextureCoordinates() : Vector2;
}