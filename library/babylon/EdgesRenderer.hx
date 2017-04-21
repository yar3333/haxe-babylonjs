package babylon;

extern class EdgesRenderer
{
	var edgesWidthScalerForOrthographic : Float;
	var edgesWidthScalerForPerspective : Float;
	private var _source : Dynamic/*UNKNOW_TYPE*/;
	private var _linesPositions : Dynamic/*UNKNOW_TYPE*/;
	private var _linesNormals : Dynamic/*UNKNOW_TYPE*/;
	private var _linesIndices : Dynamic/*UNKNOW_TYPE*/;
	private var _epsilon : Dynamic/*UNKNOW_TYPE*/;
	private var _indicesCount : Dynamic/*UNKNOW_TYPE*/;
	private var _lineShader : Dynamic/*UNKNOW_TYPE*/;
	private var _ib : Dynamic/*UNKNOW_TYPE*/;
	private var _buffers : Dynamic/*UNKNOW_TYPE*/;
	private var _checkVerticesInsteadOfIndices : Dynamic/*UNKNOW_TYPE*/;
	function new(source:AbstractMesh, ?epsilon:Float, ?checkVerticesInsteadOfIndices:Bool) : Void;
	private function _prepareRessources();
	function dispose() : Void;
	private function _processEdgeForAdjacencies(pa, pb, p0, p1, p2);
	private function _processEdgeForAdjacenciesWithVertices(pa, pb, p0, p1, p2);
	private function _checkEdge(faceIndex, edge, faceNormals, p0, p1);
	function _generateEdgesLines() : Void;
	function render() : Void;
}