package babylon;

extern class QuadraticErrorSimplification implements ISimplifier
{
	private var _mesh : Dynamic/*UNKNOW_TYPE*/;
	private var triangles : Dynamic/*UNKNOW_TYPE*/;
	private var vertices : Dynamic/*UNKNOW_TYPE*/;
	private var references : Dynamic/*UNKNOW_TYPE*/;
	private var initialized : Dynamic/*UNKNOW_TYPE*/;
	private var _reconstructedMesh : Dynamic/*UNKNOW_TYPE*/;
	var syncIterations : Float;
	var aggressiveness : Float;
	var decimationIterations : Float;
	var boundingBoxEpsilon : Float;
	function new(_mesh:Mesh) : Void;
	function simplify(settings:ISimplificationSettings, successCallback:Mesh->Void) : Void;
	private function isTriangleOnBoundingBox(triangle);
	private function runDecimation(settings, submeshIndex, successCallback);
	private function initWithMesh(submeshIndex, callback, ?optimizeMesh);
	private function init(callback);
	private function reconstructMesh(submeshIndex);
	private function initDecimatedMesh();
	private function isFlipped(vertex1, vertex2, point, deletedArray, borderFactor, delTr);
	private function updateTriangles(origVertex, vertex, deletedArray, deletedTriangles);
	private function identifyBorder();
	private function updateMesh(?identifyBorders);
	private function vertexError(q, point);
	private function calculateError(vertex1, vertex2, ?pointResult, normalResult?, ?uvResult, colorResult?);
}