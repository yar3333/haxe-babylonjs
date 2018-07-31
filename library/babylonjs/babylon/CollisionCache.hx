package babylon;

extern class CollisionCache
{
	private var _meshes : Dynamic/*UNKNOW_TYPE*/;
	private var _geometries : Dynamic/*UNKNOW_TYPE*/;
	function getMeshes() :
	{
		[n: Float]: SerializedMesh;
	};
	function getGeometries() :
	{
		[s: Float]: SerializedGeometry;
	};
	function getMesh(id:Dynamic) : SerializedMesh;
	function addMesh(mesh:SerializedMesh) : Void;
	function removeMesh(uniqueId:Float) : Void;
	function getGeometry(id:String) : SerializedGeometry;
	function addGeometry(geometry:SerializedGeometry) : Void;
	function removeGeometry(id:String) : Void;
}