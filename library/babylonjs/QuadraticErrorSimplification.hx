package babylonjs;

/**
 * An implementation of the Quadratic Error simplification algorithm.
 * Original paper : http://www1.cs.columbia.edu/~cs4162/html05s/garland97.pdf
 * Ported mostly from QSlim and http://voxels.blogspot.de/2014/05/quadric-mesh-simplification-with-source.html to babylon JS
 * @author RaananW
 */
@:native("BABYLON.QuadraticErrorSimplification")
extern class QuadraticErrorSimplification
	implements ISimplifier
{
	private var _mesh : Dynamic;
	private var triangles : Dynamic;
	private var vertices : Dynamic;
	private var references : Dynamic;
	private var _reconstructedMesh : Dynamic;
	var syncIterations : Float;
	var aggressiveness : Float;
	var decimationIterations : Float;
	var boundingBoxEpsilon : Float;

	/**
	 * An implementation of the Quadratic Error simplification algorithm.
	 * Original paper : http://www1.cs.columbia.edu/~cs4162/html05s/garland97.pdf
	 * Ported mostly from QSlim and http://voxels.blogspot.de/2014/05/quadric-mesh-simplification-with-source.html to babylon JS
	 * @author RaananW
	 */
	function new(_mesh:Mesh) : Void;
	@:overload(function(settings:ISimplificationSettings, successCallback:Mesh->Void): Void{})
	function simplify(settings:ISimplificationSettings, successCallback:Mesh->Void, ?errorCallback:Void->Void) : Void;
	private function runDecimation(settings:Dynamic, submeshIndex:Dynamic, successCallback:Dynamic) : Dynamic;
	private function initWithMesh(submeshIndex:Dynamic, callback:Dynamic, ?optimizeMesh:Dynamic) : Dynamic;
	private function init(callback:Dynamic) : Dynamic;
	private function reconstructMesh(submeshIndex:Dynamic) : Dynamic;
	private function initDecimatedMesh() : Dynamic;
	private function isFlipped(vertex1:Dynamic, vertex2:Dynamic, point:Dynamic, deletedArray:Dynamic, borderFactor:Dynamic, delTr:Dynamic) : Dynamic;
	private function updateTriangles(origVertex:Dynamic, vertex:Dynamic, deletedArray:Dynamic, deletedTriangles:Dynamic) : Dynamic;
	private function identifyBorder() : Dynamic;
	private function updateMesh(?identifyBorders:Dynamic) : Dynamic;
	private function vertexError(q:Dynamic, point:Dynamic) : Dynamic;
	private function calculateError(vertex1:Dynamic, vertex2:Dynamic, ?pointResult:Dynamic, ?normalResult:Dynamic, ?uvResult:Dynamic, ?colorResult:Dynamic) : Dynamic;
}