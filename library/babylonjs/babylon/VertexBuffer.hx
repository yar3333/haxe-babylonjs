package babylonjs.babylon;

@:native("BABYLON.VertexBuffer")
extern class VertexBuffer
{
	private var _buffer : Dynamic;
	private var _kind : Dynamic;
	private var _size : Dynamic;
	private var _ownsBuffer : Dynamic;
	private var _instanced : Dynamic;
	private var _instanceDivisor : Dynamic;
	/**
	 * The byte type.
	 */
	static var BYTE(default, null) : Float;
	/**
	 * The unsigned byte type.
	 */
	static var UNSIGNED_BYTE(default, null) : Float;
	/**
	 * The short type.
	 */
	static var SHORT(default, null) : Float;
	/**
	 * The unsigned short type.
	 */
	static var UNSIGNED_SHORT(default, null) : Float;
	/**
	 * The integer type.
	 */
	static var INT(default, null) : Float;
	/**
	 * The unsigned integer type.
	 */
	static var UNSIGNED_INT(default, null) : Float;
	/**
	 * The float type.
	 */
	static var FLOAT(default, null) : Float;
	/**
	 * Gets or sets the instance divisor when in instanced mode
	 */
	var instanceDivisor : Float;
	/**
	 * Gets the byte stride.
	 */
	var byteStride(default, null) : Float;
	/**
	 * Gets the byte offset.
	 */
	var byteOffset(default, null) : Float;
	/**
	 * Gets whether integer data values should be normalized into a certain range when being casted to a float.
	 */
	var normalized(default, null) : Bool;
	/**
	 * Gets the data type of each component in the array.
	 */
	var type(default, null) : Float;
	private static var _PositionKind : Dynamic;
	private static var _NormalKind : Dynamic;
	private static var _TangentKind : Dynamic;
	private static var _UVKind : Dynamic;
	private static var _UV2Kind : Dynamic;
	private static var _UV3Kind : Dynamic;
	private static var _UV4Kind : Dynamic;
	private static var _UV5Kind : Dynamic;
	private static var _UV6Kind : Dynamic;
	private static var _ColorKind : Dynamic;
	private static var _MatricesIndicesKind : Dynamic;
	private static var _MatricesWeightsKind : Dynamic;
	private static var _MatricesIndicesExtraKind : Dynamic;
	private static var _MatricesWeightsExtraKind : Dynamic;
	static var PositionKind(default, null) : String;
	static var NormalKind(default, null) : String;
	static var TangentKind(default, null) : String;
	static var UVKind(default, null) : String;
	static var UV2Kind(default, null) : String;
	static var UV3Kind(default, null) : String;
	static var UV4Kind(default, null) : String;
	static var UV5Kind(default, null) : String;
	static var UV6Kind(default, null) : String;
	static var ColorKind(default, null) : String;
	static var MatricesIndicesKind(default, null) : String;
	static var MatricesWeightsKind(default, null) : String;
	static var MatricesIndicesExtraKind(default, null) : String;
	static var MatricesWeightsExtraKind(default, null) : String;

	function new(engine:Dynamic, data:haxe.extern.EitherType<DataArray, Buffer>, kind:String, updatable:Bool, ?postponeInternalCreation:Bool, ?stride:Float, ?instanced:Bool, ?offset:Float, ?size:Float, ?type:Float, ?normalized:Bool, ?useBytes:Bool) : Void;
	function _rebuild() : Void;
	/**
	 * Returns the kind of the VertexBuffer (string).
	 */
	function getKind() : String;
	/**
	 * Boolean : is the VertexBuffer updatable ?
	 */
	function isUpdatable() : Bool;
	/**
	 * Returns an array of numbers or a typed array containing the VertexBuffer data.
	 */
	function getData() : Null<DataArray>;
	/**
	 * Returns the WebGLBuffer associated to the VertexBuffer.
	 */
	function getBuffer() : Null<WebGLBuffer>;
	/**
	 * Returns the stride as a multiple of the type byte length.
	 * DEPRECATED. Use byteStride instead.
	 */
	function getStrideSize() : Float;
	/**
	 * Returns the offset as a multiple of the type byte length.
	 * DEPRECATED. Use byteOffset instead.
	 */
	function getOffset() : Float;
	/**
	 * Returns the number of components per vertex attribute (integer).
	 */
	function getSize() : Float;
	/**
	 * Boolean : is the WebGLBuffer of the VertexBuffer instanced now ?
	 */
	function getIsInstanced() : Bool;
	/**
	 * Returns the instancing divisor, zero for non-instanced (integer).
	 */
	function getInstanceDivisor() : Float;
	/**
	 * Creates the underlying WebGLBuffer from the passed numeric array or Float32Array.
	 * Returns the created WebGLBuffer.
	 */
	function create(?data:DataArray) : Void;
	/**
	 * Updates the underlying WebGLBuffer according to the passed numeric array or Float32Array.
	 * This function will create a new buffer if the current one is not updatable
	 * Returns the updated WebGLBuffer.
	 */
	function update(data:DataArray) : Void;
	/**
	 * Updates directly the underlying WebGLBuffer according to the passed numeric array or Float32Array.
	 * Returns the directly updated WebGLBuffer.
	 */
	function updateDirectly(data:DataArray, offset:Float, ?useBytes:Bool) : Void;
	/**
	 * Disposes the VertexBuffer and the underlying WebGLBuffer.
	 */
	function dispose() : Void;
	/**
	 * Enumerates each value of this vertex buffer as numbers.
	 */
	function forEach(count:Float, callback:Float->Float->Void) : Void;
	/**
	 * Deduces the stride given a kind.
	 * @returns The deduced stride
	 */
	static function DeduceStride(kind:String) : Float;
	/**
	 * Gets the byte length of the given type.
	 * @returns the number of bytes
	 */
	static function GetTypeByteLength(type:Float) : Float;
	/**
	 * Enumerates each value of the given parameters as numbers.
	 */
	static function ForEach(data:DataArray, byteOffset:Float, byteStride:Float, componentCount:Float, componentType:Float, count:Float, normalized:Bool, callback:Float->Float->Void) : Void;
	private static function _GetFloatValue(dataView:Dynamic, type:Dynamic, byteOffset:Dynamic, normalized:Dynamic) : Dynamic;
}