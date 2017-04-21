package babylon;

extern class PolygonMeshBuilder
{
	private var _points : Dynamic/*UNKNOW_TYPE*/;
	private var _outlinepoints : Dynamic/*UNKNOW_TYPE*/;
	private var _holes : Dynamic/*UNKNOW_TYPE*/;
	private var _name : Dynamic/*UNKNOW_TYPE*/;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _epoints : Dynamic/*UNKNOW_TYPE*/;
	private var _eholes : Dynamic/*UNKNOW_TYPE*/;
	private function _addToepoint(points);
	function new(name:String, contours:Path2, scene:Scene) : Void;
	function new(name:String, contours:Array<Vector2>, scene:Scene) : Void;
	function addHole(hole:Array<Vector2>) : PolygonMeshBuilder;
	function build(?updatable:Bool, ?depth:Float) : Mesh;
	private function addSide(positions, normals, uvs, indices, bounds, points, depth, flip);
}