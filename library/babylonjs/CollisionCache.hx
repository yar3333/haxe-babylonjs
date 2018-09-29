package babylonjs;

@:native("BABYLON.CollisionCache")
extern class CollisionCache
{
	private var _meshes : Dynamic;
	private var _geometries : Dynamic;

	function getMeshes() : Dynamic<SerializedMesh>;
	function getGeometries() : Dynamic<SerializedGeometry>;
	function getMesh(id:Dynamic) : SerializedMesh;
	function addMesh(mesh:SerializedMesh) : Void;
	function removeMesh(uniqueId:Float) : Void;
	function getGeometry(id:String) : SerializedGeometry;
	function addGeometry(geometry:SerializedGeometry) : Void;
	function removeGeometry(id:String) : Void;
}