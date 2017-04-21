package simd;

extern interface Float32x4Constructor
{
	(?s0:Float, ?s1:Float, ?s2:Float, ?s3:Float) : Float32x4;
	var prototype : Float32x4;
	function extractLane(simd:SIMD.Float32x4, lane:Float) : Float;
	function swizzle(a:SIMD.Float32x4, l1:Float, l2:Float, l3:Float, l4:Float) : SIMD.Float32x4;
	function shuffle(a:SIMD.Float32x4, b:SIMD.Float32x4, l1:Float, l2:Float, l3:Float, l4:Float) : SIMD.Float32x4;
	function check(a:SIMD.Float32x4) : SIMD.Float32x4;
	function splat(n:Float) : SIMD.Float32x4;
	function replaceLane(simd:SIMD.Float32x4, lane:Float, value:Float) : SIMD.Float32x4;
	function select(selector:SIMD.Bool32x4, a:SIMD.Float32x4, b:SIMD.Float32x4) : SIMD.Float32x4;
	function equal(a:SIMD.Float32x4, b:SIMD.Float32x4) : SIMD.Bool32x4;
	function notEqual(a:SIMD.Float32x4, b:SIMD.Float32x4) : SIMD.Bool32x4;
	function lessThan(a:SIMD.Float32x4, b:SIMD.Float32x4) : SIMD.Bool32x4;
	function lessThanOrEqual(a:SIMD.Float32x4, b:SIMD.Float32x4) : SIMD.Bool32x4;
	function greaterThan(a:SIMD.Float32x4, b:SIMD.Float32x4) : SIMD.Bool32x4;
	function greaterThanOrEqual(a:SIMD.Float32x4, b:SIMD.Float32x4) : SIMD.Bool32x4;
	function add(a:SIMD.Float32x4, b:SIMD.Float32x4) : SIMD.Float32x4;
	function sub(a:SIMD.Float32x4, b:SIMD.Float32x4) : SIMD.Float32x4;
	function mul(a:SIMD.Float32x4, b:SIMD.Float32x4) : SIMD.Float32x4;
	function div(a:SIMD.Float32x4, b:SIMD.Float32x4) : SIMD.Float32x4;
	function neg(a:SIMD.Float32x4) : SIMD.Float32x4;
	function abs(a:SIMD.Float32x4) : SIMD.Float32x4;
	function min(a:SIMD.Float32x4, b:SIMD.Float32x4) : SIMD.Float32x4;
	function max(a:SIMD.Float32x4, b:SIMD.Float32x4) : SIMD.Float32x4;
	function minNum(a:SIMD.Float32x4, b:SIMD.Float32x4) : SIMD.Float32x4;
	function maxNum(a:SIMD.Float32x4, b:SIMD.Float32x4) : SIMD.Float32x4;
	function reciprocalApproximation(a:SIMD.Float32x4) : SIMD.Float32x4;
	function reciprocalSqrtApproximation(a:SIMD.Float32x4) : SIMD.Float32x4;
	function sqrt(a:SIMD.Float32x4) : SIMD.Float32x4;
	function load(tarray:haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<Uint8Array, Uint8ClampedArray >, Int16Array >, Uint16Array >, Int32Array >| haxe.extern.EitherType<haxe.extern.EitherType<Uint32Array, Float32Array >, Float64Array>, index:Float) : SIMD.Float32x4;
	function load1(tarray:haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<Uint8Array, Uint8ClampedArray >, Int16Array >, Uint16Array >, Int32Array >| haxe.extern.EitherType<haxe.extern.EitherType<Uint32Array, Float32Array >, Float64Array>, index:Float) : SIMD.Float32x4;
	function load2(tarray:haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<Uint8Array, Uint8ClampedArray >, Int16Array >, Uint16Array >, Int32Array >| haxe.extern.EitherType<haxe.extern.EitherType<Uint32Array, Float32Array >, Float64Array>, index:Float) : SIMD.Float32x4;
	function load3(tarray:haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<Uint8Array, Uint8ClampedArray >, Int16Array >, Uint16Array >, Int32Array >| haxe.extern.EitherType<haxe.extern.EitherType<Uint32Array, Float32Array >, Float64Array>, index:Float) : SIMD.Float32x4;
	function store(tarray:haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<Uint8Array, Uint8ClampedArray >, Int16Array >, Uint16Array >, Int32Array >| haxe.extern.EitherType<haxe.extern.EitherType<Uint32Array, Float32Array >, Float64Array>, index:Float, value:SIMD.Float32x4) : SIMD.Float32x4;
	function store1(tarray:haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<Uint8Array, Uint8ClampedArray >, Int16Array >, Uint16Array >, Int32Array >| haxe.extern.EitherType<haxe.extern.EitherType<Uint32Array, Float32Array >, Float64Array>, index:Float, value:SIMD.Float32x4) : SIMD.Float32x4;
	function store2(tarray:haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<Uint8Array, Uint8ClampedArray >, Int16Array >, Uint16Array >, Int32Array >| haxe.extern.EitherType<haxe.extern.EitherType<Uint32Array, Float32Array >, Float64Array>, index:Float, value:SIMD.Float32x4) : SIMD.Float32x4;
	function store3(tarray:haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<Uint8Array, Uint8ClampedArray >, Int16Array >, Uint16Array >, Int32Array >| haxe.extern.EitherType<haxe.extern.EitherType<Uint32Array, Float32Array >, Float64Array>, index:Float, value:SIMD.Float32x4) : SIMD.Float32x4;
	function fromInt32x4(value:SIMD.Int32x4) : SIMD.Float32x4;
	function fromUint32x4(value:SIMD.Uint32x4) : SIMD.Float32x4;
	function fromInt32x4Bits(value:SIMD.Int32x4) : SIMD.Float32x4;
	function fromInt16x8Bits(value:SIMD.Int16x8) : SIMD.Float32x4;
	function fromInt8x16Bits(value:SIMD.Int8x16) : SIMD.Float32x4;
	function fromUint32x4Bits(value:SIMD.Uint32x4) : SIMD.Float32x4;
	function fromUint16x8Bits(value:SIMD.Uint16x8) : SIMD.Float32x4;
	function fromUint8x16Bits(value:SIMD.Uint8x16) : SIMD.Float32x4;
}