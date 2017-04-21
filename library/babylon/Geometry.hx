package babylon;

extern class Geometry implements IGetSetVerticesData
{
	var id : String;
	var delayLoadState : Float;
	var delayLoadingFile : String;
	onGeometryUpdated: (geometry:Geometry, ?kind:String) => void;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _engine : Dynamic/*UNKNOW_TYPE*/;
	private var _meshes : Dynamic/*UNKNOW_TYPE*/;
	private var _totalVertices : Dynamic/*UNKNOW_TYPE*/;
	private var _indices : Dynamic/*UNKNOW_TYPE*/;
	private var _vertexBuffers : Dynamic/*UNKNOW_TYPE*/;
	private var _isDisposed : Dynamic/*UNKNOW_TYPE*/;
	private var _extend : Dynamic/*UNKNOW_TYPE*/;
	private var _boundingBias : Dynamic/*UNKNOW_TYPE*/;
	var _delayInfo : Dynamic;
	private var _indexBuffer : Dynamic/*UNKNOW_TYPE*/;
	var _boundingInfo : BoundingInfo;
	var _delayLoadingFunction : Dynamic->Geometry->Void;
	var _softwareSkinningRenderId : Float;
	/**
	 *  The Bias Vector to apply on the bounding elements (box/sphere), the max extend is computed as v += v * bias.x + bias.y, the min is computed as v -= v * bias.x + bias.y
	 * @returns The Bias Vector
	 */
	var boundingBias : Vector2;
	function new(id:String, scene:Scene, ?vertexData:VertexData, ?updatable:Bool, ?mesh:Mesh) : Void;
	var extend :
	{
		minimum: Vector3,
		maximum: Vector3
	};
	function getScene() : Scene;
	function getEngine() : Engine;
	function isReady() : Bool;
	var doNotSerialize : Bool;
	function setAllVerticesData(vertexData:VertexData, ?updatable:Bool) : Void;
	function setVerticesData(kind:String, data:haxe.extern.EitherType<Array<Float>, Float32Array>, ?updatable:Bool, ?stride:Float) : Void;
	function setVerticesBuffer(buffer:VertexBuffer) : Void;
	function updateVerticesDataDirectly(kind:String, data:Float32Array, offset:Float) : Void;
	function updateVerticesData(kind:String, data:haxe.extern.EitherType<Array<Float>, Float32Array>, ?updateExtends:Bool) : Void;
	private function updateBoundingInfo(updateExtends, data);
	function getTotalVertices() : Float;
	function getVerticesData(kind:String, ?copyWhenShared:Bool) : haxe.extern.EitherType<Array<Float>, Float32Array>;
	function getVertexBuffer(kind:String) : VertexBuffer;
	function getVertexBuffers() : Dynamic<VertexBuffer>;
	function isVerticesDataPresent(kind:String) : Bool;
	function getVerticesDataKinds() : Array<String>;
	function setIndices(indices:haxe.extern.EitherType<Array<Float>, Int32Array>, ?totalVertices:Float) : Void;
	function getTotalIndices() : Float;
	function getIndices(?copyWhenShared:Bool) : haxe.extern.EitherType<Array<Float>, Int32Array>;
	function getIndexBuffer() : WebGLBuffer;
	function releaseForMesh(mesh:Mesh, ?shouldDispose:Bool) : Void;
	function applyToMesh(mesh:Mesh) : Void;
	private function updateExtend(?data, stride?);
	private function _applyToMesh(mesh);
	private function notifyUpdate(?kind);
	function load(scene:Scene, ?onLoaded:Void->Void) : Void;
	private function _queueLoad(scene, ?onLoaded);
	/**
	 * Invert the geometry to move from a right handed system to a left handed one.
	 */
	function toLeftHanded() : Void;
	function isDisposed() : Bool;
	function dispose() : Void;
	function copy(id:String) : Geometry;
	function serialize() : Dynamic;
	function serializeVerticeData() : Dynamic;
	static function ExtractFromMesh(mesh:Mesh, id:String) : Geometry;
	/**
	 * You should now use Tools.RandomId(), this method is still here for legacy reasons.
	 * Implementation from http://stackoverflow.com/questions/105034/how-to-create-a-guid-uuid-in-javascript/2117523#answer-2117523
	 * Be aware Math.random() could cause collisions, but:
	 * "All but 6 of the 128 bits of the ID are randomly generated, which means that for any two ids, there's a 1 in 2^^122 (or 5.3x10^^36) chance they'll collide"
	 */
	static function RandomId() : String;
	static function ImportGeometry(parsedGeometry:Dynamic, mesh:Mesh) : Void;
	static function Parse(parsedVertexData:Dynamic, scene:Scene, rootUrl:String) : Geometry;
}