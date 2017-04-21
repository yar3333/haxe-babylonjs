package babylon;

	extern class Disc extends _Primitive
	{
		var radius : Float;
		var tessellation : Float;
		var side : Float;
		function new(id:String, scene:Scene, radius:Float, tessellation:Float, ?canBeRegenerated:Bool, ?mesh:Mesh, ?side:Float) : Void;
		function _regenerateVertexData() : VertexData;
		function copy(id:String) : Geometry;
	}