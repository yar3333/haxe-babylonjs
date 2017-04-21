package simd;

extern interface Int32x4Constructor
{
	(?s0:Float, ?s1:Float, ?s2:Float, ?s3:Float) : Int32x4;
	var prototype : Int32x4;
	function extractLane(simd:SIMD.Int32x4, lane:Float) : Float;
	function swizzle(a:SIMD.Int32x4, l1:Float, l2:Float, l3:Float, l4:Float) : SIMD.Int32x4;
	function shuffle(a:SIMD.Int32x4, b:SIMD.Int32x4, l1:Float, l2:Float, l3:Float, l4:Float) : SIMD.Int32x4;
	function check(a:SIMD.Int32x4) : SIMD.Int32x4;
	function splat(n:Float) : SIMD.Int32x4;
	function replaceLane(simd:SIMD.Int32x4, lane:Float, value:Float) : SIMD.Int32x4;
	function select(selector:SIMD.Bool32x4, a:SIMD.Int32x4, b:SIMD.Int32x4) : SIMD.Int32x4;
	function equal(a:SIMD.Int32x4, b:SIMD.Int32x4) : SIMD.Bool32x4;
	function notEqual(a:SIMD.Int32x4, b:SIMD.Int32x4) : SIMD.Bool32x4;
	function lessThan(a:SIMD.Int32x4, b:SIMD.Int32x4) : SIMD.Bool32x4;
	function lessThanOrEqual(a:SIMD.Int32x4, b:SIMD.Int32x4) : SIMD.Bool32x4;
	function greaterThan(a:SIMD.Int32x4, b:SIMD.Int32x4) : SIMD.Bool32x4;
	function greaterThanOrEqual(a:SIMD.Int32x4, b:SIMD.Int32x4) : SIMD.Bool32x4;
	function and(a:SIMD.Int32x4, b:SIMD.Int32x4) : SIMD.Int32x4;
	function or(a:SIMD.Int32x4, b:SIMD.Int32x4) : SIMD.Int32x4;
	function xor(a:SIMD.Int32x4, b:SIMD.Int32x4) : SIMD.Int32x4;
	function not(a:SIMD.Int32x4, b:SIMD.Int32x4) : SIMD.Int32x4;
	function add(a:SIMD.Int32x4, b:SIMD.Int32x4) : SIMD.Int32x4;
	function sub(a:SIMD.Int32x4, b:SIMD.Int32x4) : SIMD.Int32x4;
	function mul(a:SIMD.Int32x4, b:SIMD.Int32x4) : SIMD.Int32x4;
	function neg(a:SIMD.Int32x4) : SIMD.Int32x4;
	function shiftLeftByScalar(a:SIMD.Int32x4, bits:Float) : SIMD.Int32x4;
	function shiftRightByScalar(a:SIMD.Int32x4, bits:Float) : SIMD.Int32x4;
	function load(tarray:haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<Uint8Array, Uint8ClampedArray >, Int16Array >, Uint16Array >, Int32Array >| haxe.extern.EitherType<haxe.extern.EitherType<Uint32Array, Float32Array >, Float64Array>, index:Float) : SIMD.Int32x4;
	function load1(tarray:haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<Uint8Array, Uint8ClampedArray >, Int16Array >, Uint16Array >, Int32Array >| haxe.extern.EitherType<haxe.extern.EitherType<Uint32Array, Float32Array >, Float64Array>, index:Float) : SIMD.Int32x4;
	function load2(tarray:haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<Uint8Array, Uint8ClampedArray >, Int16Array >, Uint16Array >, Int32Array >| haxe.extern.EitherType<haxe.extern.EitherType<Uint32Array, Float32Array >, Float64Array>, index:Float) : SIMD.Int32x4;
	function load3(tarray:haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<Uint8Array, Uint8ClampedArray >, Int16Array >, Uint16Array >, Int32Array >| haxe.extern.EitherType<haxe.extern.EitherType<Uint32Array, Float32Array >, Float64Array>, index:Float) : SIMD.Int32x4;
	function store(tarray:haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<Uint8Array, Uint8ClampedArray >, Int16Array >, Uint16Array >, Int32Array >| haxe.extern.EitherType<haxe.extern.EitherType<Uint32Array, Float32Array >, Float64Array>, index:Float, value:SIMD.Int32x4) : SIMD.Int32x4;
	function store1(tarray:haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<Uint8Array, Uint8ClampedArray >, Int16Array >, Uint16Array >, Int32Array >| haxe.extern.EitherType<haxe.extern.EitherType<Uint32Array, Float32Array >, Float64Array>, index:Float, value:SIMD.Int32x4) : SIMD.Int32x4;
	function store2(tarray:haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<Uint8Array, Uint8ClampedArray >, Int16Array >, Uint16Array >, Int32Array >| haxe.extern.EitherType<haxe.extern.EitherType<Uint32Array, Float32Array >, Float64Array>, index:Float, value:SIMD.Int32x4) : SIMD.Int32x4;
	function store3(tarray:haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<Uint8Array, Uint8ClampedArray >, Int16Array >, Uint16Array >, Int32Array >| haxe.extern.EitherType<haxe.extern.EitherType<Uint32Array, Float32Array >, Float64Array>, index:Float, value:SIMD.Int32x4) : SIMD.Int32x4;
	function fromFloat32x4(value:SIMD.Float32x4) : SIMD.Int32x4;
	function fromUint32x4(value:SIMD.Uint32x4) : SIMD.Int32x4;
	function fromFloat32x4Bits(value:SIMD.Float32x4) : SIMD.Int32x4;
	function fromInt16x8Bits(value:SIMD.Int16x8) : SIMD.Int32x4;
	function fromInt8x16Bits(value:SIMD.Int8x16) : SIMD.Int32x4;
	function fromUint32x4Bits(value:SIMD.Uint32x4) : SIMD.Int32x4;
	function fromUint16x8Bits(value:SIMD.Uint16x8) : SIMD.Int32x4;
	function fromUint8x16Bits(value:SIMD.Uint8x16) : SIMD.Int32x4;
}