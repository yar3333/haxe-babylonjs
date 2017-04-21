package babylon;

	extern class TiledGround extends _Primitive
	{
		var xmin : Float;
		var zmin : Float;
		var xmax : Float;
		var zmax : Float;
		var subdivisions :
		{
			w: Float,
			h: Float
		};
		var precision :
		{
			w: Float,
			h: Float
		};
		function new(id:String, scene:Scene, xmin:Float, zmin:Float, xmax:Float, zmax:Float, subdivisions:
		{
			w : Float,
			h : Float
		}, precision:
		{
			w : Float,
			h : Float
		}, ?canBeRegenerated:Bool, ?mesh:Mesh) : Void;
		function _regenerateVertexData() : VertexData;
		function copy(id:String) : Geometry;
	}