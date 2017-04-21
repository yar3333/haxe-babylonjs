package babylon;

	extern class Ribbon extends _Primitive
	{
		var pathArray : Array<Array<Vector3>>;
		var closeArray : Bool;
		var closePath : Bool;
		var offset : Float;
		var side : Float;
		function new(id:String, scene:Scene, pathArray:Array<Array<Vector3>>, closeArray:Bool, closePath:Bool, offset:Float, ?canBeRegenerated:Bool, ?mesh:Mesh, ?side:Float) : Void;
		function _regenerateVertexData() : VertexData;
		function copy(id:String) : Geometry;
	}