package babylon/geometry/primitives;

	extern class Ground extends _Primitive
	{
		var width : Float;
		var height : Float;
		var subdivisions : Float;
		function new(id:String, scene:Scene, width:Float, height:Float, subdivisions:Float, ?canBeRegenerated:Bool, ?mesh:Mesh) : Void;
		function _regenerateVertexData() : VertexData;
		function copy(id:String) : Geometry;
		function serialize() : Dynamic;
		static function Parse(parsedGround:Dynamic, scene:Scene) : Geometry.Primitives.Ground;
	}