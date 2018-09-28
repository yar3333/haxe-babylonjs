package babylonjs.babylon;

@:native("BABYLON.Buffer")
extern class Buffer
{
	private var _engine : Dynamic;
	private var _buffer : Dynamic;
	private var _data : Dynamic;
	private var _updatable : Dynamic;
	private var _instanced : Dynamic;
	/**
	 * Gets the byte stride.
	 */
	var byteStride(default, null) : Float;

	function new(engine:Dynamic, data:DataArray, updatable:Bool, ?stride:Float, ?postponeInternalCreation:Bool, ?instanced:Bool, ?useBytes:Bool) : Void;
	/**
	 * Create a new {BABYLON.VertexBuffer} based on the current buffer
	 * @returns the new vertex buffer
	 */
	function createVertexBuffer(kind:String, offset:Float, size:Float, ?stride:Float, ?instanced:Bool, ?useBytes:Bool) : VertexBuffer;
	function isUpdatable() : Bool;
	function getData() : Null<DataArray>;
	function getBuffer() : Null<WebGLBuffer>;
	/**
	 * Gets the stride in float32 units (i.e. byte stride / 4).
	 * May not be an integer if the byte stride is not divisible by 4.
	 * DEPRECATED. Use byteStride instead.
	 * @returns the stride in float32 units
	 */
	function getStrideSize() : Float;
	function create(?data:Null<DataArray>) : Void;
	function _rebuild() : Void;
	function update(data:DataArray) : Void;
	/**
	 * Updates the data directly.
	 */
	function updateDirectly(data:DataArray, offset:Float, ?vertexCount:Float, ?useBytes:Bool) : Void;
	function dispose() : Void;
}