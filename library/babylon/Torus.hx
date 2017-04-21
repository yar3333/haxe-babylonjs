package babylon;

	extern class Torus extends _Primitive
	{
		var diameter : Float;
		var thickness : Float;
		var tessellation : Float;
		var side : Float;
		function new(id:String, scene:Scene, diameter:Float, thickness:Float, tessellation:Float, ?canBeRegenerated:Bool, ?mesh:Mesh, ?side:Float) : Void;
		function _regenerateVertexData() : VertexData;
		function copy(id:String) : Geometry;
		function serialize() : Dynamic;
		static function Parse(parsedTorus:Dynamic, scene:Scene) : Geometry.Primitives.Torus;
	}