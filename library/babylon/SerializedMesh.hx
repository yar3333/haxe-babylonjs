package babylon;

extern interface SerializedMesh
{
	var id : String;
	var name : String;
	var uniqueId : Float;
	var geometryId : String;
	var sphereCenter : Array<Float>;
	var sphereRadius : Float;
	var boxMinimum : Array<Float>;
	var boxMaximum : Array<Float>;
	var worldMatrixFromCache : Dynamic;
	var subMeshes : Array<SerializedSubMesh>;
	var checkCollisions : Bool;
}