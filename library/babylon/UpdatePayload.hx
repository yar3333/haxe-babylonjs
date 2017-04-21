package babylon;

extern interface UpdatePayload
{
	var updatedMeshes :
	{
		[n: Float]: SerializedMesh;
	};
	var updatedGeometries : Dynamic<SerializedGeometry>;
	var removedMeshes : Array<Float>;
	var removedGeometries : Array<String>;
}