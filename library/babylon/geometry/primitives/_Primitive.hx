package babylon/geometry/primitives;

	extern class _Primitive extends Geometry
	{
		private var _canBeRegenerated : Dynamic/*UNKNOW_TYPE*/;
		private var _beingRegenerated : Dynamic/*UNKNOW_TYPE*/;
		function new(id:String, scene:Scene, ?_canBeRegenerated:Bool, ?mesh:Mesh) : Void;
		function canBeRegenerated() : Bool;
		function regenerate() : Void;
		function asNewGeometry(id:String) : Geometry;
		function setAllVerticesData(vertexData:VertexData, ?updatable:Bool) : Void;
		function setVerticesData(kind:String, data:haxe.extern.EitherType<haxe.extern.EitherType<Array<Float>, Int32Array >, Float32Array>, ?updatable:Bool) : Void;
		function _regenerateVertexData() : VertexData;
		function copy(id:String) : Geometry;
		function serialize() : Dynamic;
	}