package babylon;

	extern class Sphere extends _Primitive
	{
		var segments : Float;
		var diameter : Float;
		var side : Float;
		function new(id:String, scene:Scene, segments:Float, diameter:Float, ?canBeRegenerated:Bool, ?mesh:Mesh, ?side:Float) : Void;
		function _regenerateVertexData() : VertexData;
		function copy(id:String) : Geometry;
		function serialize() : Dynamic;
		static function Parse(parsedSphere:Dynamic, scene:Scene) : Geometry.Primitives.Sphere;
	}