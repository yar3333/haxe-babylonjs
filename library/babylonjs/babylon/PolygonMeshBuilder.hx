package babylonjs.babylon;

@:native("BABYLON.PolygonMeshBuilder")
extern class PolygonMeshBuilder
{
	private var _points : Dynamic;
	private var _outlinepoints : Dynamic;
	private var _holes : Dynamic;
	private var _name : Dynamic;
	private var _scene : Dynamic;
	private var _epoints : Dynamic;
	private var _eholes : Dynamic;

	private function _addToepoint(points:Dynamic) : Dynamic;
	@:overload(function(name:String, contours:Array<Vector2>, scene:Scene):Void{})
	function new(name:String, contours:Path2, scene:Scene) : Void;
	function addHole(hole:Array<Vector2>) : PolygonMeshBuilder;
	function build(?updatable:Bool, ?depth:Float) : Mesh;
	private function addSide(positions:Dynamic, normals:Dynamic, uvs:Dynamic, indices:Dynamic, bounds:Dynamic, points:Dynamic, depth:Dynamic, flip:Dynamic) : Dynamic;
}