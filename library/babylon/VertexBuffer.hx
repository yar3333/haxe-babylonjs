package babylon;

extern class VertexBuffer
{
	private var _buffer : Dynamic/*UNKNOW_TYPE*/;
	private var _kind : Dynamic/*UNKNOW_TYPE*/;
	private var _offset : Dynamic/*UNKNOW_TYPE*/;
	private var _size : Dynamic/*UNKNOW_TYPE*/;
	private var _stride : Dynamic/*UNKNOW_TYPE*/;
	private var _ownsBuffer : Dynamic/*UNKNOW_TYPE*/;
	function new(engine:Dynamic, data:haxe.extern.EitherType<haxe.extern.EitherType<Array<Float>, Float32Array >, Buffer>, kind:String, updatable:Bool, ?postponeInternalCreation:Bool, ?stride:Float, ?instanced:Bool, ?offset:Float, ?size:Float) : Void;
	function getKind() : String;
	function isUpdatable() : Bool;
	function getData() : haxe.extern.EitherType<Array<Float>, Float32Array>;
	function getBuffer() : WebGLBuffer;
	function getStrideSize() : Float;
	function getOffset() : Float;
	function getSize() : Float;
	function getIsInstanced() : Bool;
	function create(?data:haxe.extern.EitherType<Array<Float>, Float32Array>) : Void;
	function update(data:haxe.extern.EitherType<Array<Float>, Float32Array>) : Void;
	function updateDirectly(data:Float32Array, offset:Float) : Void;
	function dispose() : Void;
	private static var _PositionKind : Dynamic/*UNKNOW_TYPE*/;
	private static var _NormalKind : Dynamic/*UNKNOW_TYPE*/;
	private static var _UVKind : Dynamic/*UNKNOW_TYPE*/;
	private static var _UV2Kind : Dynamic/*UNKNOW_TYPE*/;
	private static var _UV3Kind : Dynamic/*UNKNOW_TYPE*/;
	private static var _UV4Kind : Dynamic/*UNKNOW_TYPE*/;
	private static var _UV5Kind : Dynamic/*UNKNOW_TYPE*/;
	private static var _UV6Kind : Dynamic/*UNKNOW_TYPE*/;
	private static var _ColorKind : Dynamic/*UNKNOW_TYPE*/;
	private static var _MatricesIndicesKind : Dynamic/*UNKNOW_TYPE*/;
	private static var _MatricesWeightsKind : Dynamic/*UNKNOW_TYPE*/;
	private static var _MatricesIndicesExtraKind : Dynamic/*UNKNOW_TYPE*/;
	private static var _MatricesWeightsExtraKind : Dynamic/*UNKNOW_TYPE*/;
	static var PositionKind : String;
	static var NormalKind : String;
	static var UVKind : String;
	static var UV2Kind : String;
	static var UV3Kind : String;
	static var UV4Kind : String;
	static var UV5Kind : String;
	static var UV6Kind : String;
	static var ColorKind : String;
	static var MatricesIndicesKind : String;
	static var MatricesWeightsKind : String;
	static var MatricesIndicesExtraKind : String;
	static var MatricesWeightsExtraKind : String;
}