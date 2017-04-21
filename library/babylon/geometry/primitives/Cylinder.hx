package babylon/geometry/primitives;

	extern class Cylinder extends _Primitive
	{
		var height : Float;
		var diameterTop : Float;
		var diameterBottom : Float;
		var tessellation : Float;
		var subdivisions : Float;
		var side : Float;
		function new(id:String, scene:Scene, height:Float, diameterTop:Float, diameterBottom:Float, tessellation:Float, ?subdivisions:Float, ?canBeRegenerated:Bool, ?mesh:Mesh, ?side:Float) : Void;
		function _regenerateVertexData() : VertexData;
		function copy(id:String) : Geometry;
		function serialize() : Dynamic;
		static function Parse(parsedCylinder:Dynamic, scene:Scene) : Geometry.Primitives.Cylinder;
	}