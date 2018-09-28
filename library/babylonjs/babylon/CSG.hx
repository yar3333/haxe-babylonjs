package babylonjs.babylon;

@:native("BABYLON.CSG")
extern class CSG
{
	private var polygons : Dynamic;
	var matrix : Matrix;
	var position : Vector3;
	var rotation : Vector3;
	var rotationQuaternion : Null<Quaternion>;
	var scaling : Vector3;

	static function FromMesh(mesh:Mesh) : CSG;
	private static function FromPolygons(polygons:Dynamic) : Dynamic;
	function clone() : CSG;
	function union(csg:CSG) : CSG;
	function unionInPlace(csg:CSG) : Void;
	function subtract(csg:CSG) : CSG;
	function subtractInPlace(csg:CSG) : Void;
	function intersect(csg:CSG) : CSG;
	function intersectInPlace(csg:CSG) : Void;
	function inverse() : CSG;
	function inverseInPlace() : Void;
	function copyTransformAttributes(csg:CSG) : CSG;
	function buildMeshGeometry(name:String, scene:Scene, keepSubMeshes:Bool) : Mesh;
	function toMesh(name:String, material:Null<Material>, scene:Scene, keepSubMeshes:Bool) : Mesh;
}