package babylon/geometry/primitives;

	extern class Plane extends _Primitive
	{
		var size : Float;
		var side : Float;
		function new(id:String, scene:Scene, size:Float, ?canBeRegenerated:Bool, ?mesh:Mesh, ?side:Float) : Void;
		function _regenerateVertexData() : VertexData;
		function copy(id:String) : Geometry;
		function serialize() : Dynamic;
		static function Parse(parsedPlane:Dynamic, scene:Scene) : Geometry.Primitives.Plane;
	}