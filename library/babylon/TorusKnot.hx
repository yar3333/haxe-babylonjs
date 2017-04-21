package babylon;

	extern class TorusKnot extends _Primitive
	{
		var radius : Float;
		var tube : Float;
		var radialSegments : Float;
		var tubularSegments : Float;
		var p : Float;
		var q : Float;
		var side : Float;
		function new(id:String, scene:Scene, radius:Float, tube:Float, radialSegments:Float, tubularSegments:Float, p:Float, q:Float, ?canBeRegenerated:Bool, ?mesh:Mesh, ?side:Float) : Void;
		function _regenerateVertexData() : VertexData;
		function copy(id:String) : Geometry;
		function serialize() : Dynamic;
		static function Parse(parsedTorusKnot:Dynamic, scene:Scene) : Geometry.Primitives.TorusKnot;
	}