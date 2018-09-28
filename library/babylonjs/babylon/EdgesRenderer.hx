package babylonjs.babylon;

@:native("BABYLON.EdgesRenderer")
extern class EdgesRenderer
{
	var edgesWidthScalerForOrthographic : Float;
	var edgesWidthScalerForPerspective : Float;
	private var _source : Dynamic;
	private var _linesPositions : Dynamic;
	private var _linesNormals : Dynamic;
	private var _linesIndices : Dynamic;
	private var _epsilon : Dynamic;
	private var _indicesCount : Dynamic;
	private var _lineShader : Dynamic;
	private var _ib : Dynamic;
	private var _buffers : Dynamic;
	private var _checkVerticesInsteadOfIndices : Dynamic;

	function new(source:AbstractMesh, ?epsilon:Float, ?checkVerticesInsteadOfIndices:Bool) : Void;
	private function _prepareRessources() : Dynamic;
	function _rebuild() : Void;
	function dispose() : Void;
	private function _processEdgeForAdjacencies(pa:Dynamic, pb:Dynamic, p0:Dynamic, p1:Dynamic, p2:Dynamic) : Dynamic;
	private function _processEdgeForAdjacenciesWithVertices(pa:Dynamic, pb:Dynamic, p0:Dynamic, p1:Dynamic, p2:Dynamic) : Dynamic;
	private function _checkEdge(faceIndex:Dynamic, edge:Dynamic, faceNormals:Dynamic, p0:Dynamic, p1:Dynamic) : Dynamic;
	function _generateEdgesLines() : Void;
	function render() : Void;
}