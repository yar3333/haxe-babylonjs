package babylonjs;

extern interface UpdatePayload
{
	var updatedMeshes : Dynamic<SerializedMesh>;
	var updatedGeometries : Dynamic<SerializedGeometry>;
	var removedMeshes : Array<Float>;
	var removedGeometries : Array<String>;
}