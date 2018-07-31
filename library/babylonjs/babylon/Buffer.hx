package babylon;

extern class Buffer
{
	private var _engine : Dynamic/*UNKNOW_TYPE*/;
	private var _buffer : Dynamic/*UNKNOW_TYPE*/;
	private var _data : Dynamic/*UNKNOW_TYPE*/;
	private var _updatable : Dynamic/*UNKNOW_TYPE*/;
	private var _strideSize : Dynamic/*UNKNOW_TYPE*/;
	private var _instanced : Dynamic/*UNKNOW_TYPE*/;
	function new(engine:Dynamic, data:haxe.extern.EitherType<Array<Float>, Float32Array>, updatable:Bool, stride:Float, ?postponeInternalCreation:Bool, ?instanced:Bool) : Void;
	function createVertexBuffer(kind:String, offset:Float, size:Float, ?stride:Float) : VertexBuffer;
	function isUpdatable() : Bool;
	function getData() : haxe.extern.EitherType<Array<Float>, Float32Array>;
	function getBuffer() : WebGLBuffer;
	function getStrideSize() : Float;
	function getIsInstanced() : Bool;
	function create(?data:haxe.extern.EitherType<Array<Float>, Float32Array>) : Void;
	function update(data:haxe.extern.EitherType<Array<Float>, Float32Array>) : Void;
	function updateDirectly(data:Float32Array, offset:Float, ?vertexCount:Float) : Void;
	function dispose() : Void;
}