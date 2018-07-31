package babylon/geometry/primitives;

	extern class Box extends _Primitive
	{
		var size : Float;
		var side : Float;
		function new(id:String, scene:Scene, size:Float, ?canBeRegenerated:Bool, ?mesh:Mesh, ?side:Float) : Void;
		function _regenerateVertexData() : VertexData;
		function copy(id:String) : Geometry;
		function serialize() : Dynamic;
		static function Parse(parsedBox:Dynamic, scene:Scene) : Box;
	}