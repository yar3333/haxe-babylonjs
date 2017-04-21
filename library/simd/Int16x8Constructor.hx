package simd;

extern interface Int16x8Constructor
{
	(?s0:Float, ?s1:Float, ?s2:Float, ?s3:Float, ?s4:Float, ?s5:Float, ?s6:Float, ?s7:Float) : Int16x8;
	var prototype : Int16x8;
	function extractLane(simd:SIMD.Int16x8, lane:Float) : Float;
	function swizzle(a:SIMD.Int16x8, l1:Float, l2:Float, l3:Float, l4:Float, l5:Float, l6:Float, l7:Float, l8:Float) : SIMD.Int16x8;
	function shuffle(a:SIMD.Int16x8, b:SIMD.Int16x8, l1:Float, l2:Float, l3:Float, l4:Float, l5:Float, l6:Float, l7:Float, l8:Float) : SIMD.Int16x8;
	function check(a:SIMD.Int16x8) : SIMD.Int16x8;
	function splat(n:Float) : SIMD.Int16x8;
	function replaceLane(simd:SIMD.Int16x8, lane:Float, value:Float) : SIMD.Int16x8;
	function select(selector:SIMD.Bool16x8, a:SIMD.Int16x8, b:SIMD.Int16x8) : SIMD.Int16x8;
	function equal(a:SIMD.Int16x8, b:SIMD.Int16x8) : SIMD.Bool16x8;
	function notEqual(a:SIMD.Int16x8, b:SIMD.Int16x8) : SIMD.Bool16x8;
	function lessThan(a:SIMD.Int16x8, b:SIMD.Int16x8) : SIMD.Bool16x8;
	function lessThanOrEqual(a:SIMD.Int16x8, b:SIMD.Int16x8) : SIMD.Bool16x8;
	function greaterThan(a:SIMD.Int16x8, b:SIMD.Int16x8) : SIMD.Bool16x8;
	function greaterThanOrEqual(a:SIMD.Int16x8, b:SIMD.Int16x8) : SIMD.Bool16x8;
	function and(a:SIMD.Int16x8, b:SIMD.Int16x8) : SIMD.Int16x8;
	function or(a:SIMD.Int16x8, b:SIMD.Int16x8) : SIMD.Int16x8;
	function xor(a:SIMD.Int16x8, b:SIMD.Int16x8) : SIMD.Int16x8;
	function not(a:SIMD.Int16x8, b:SIMD.Int16x8) : SIMD.Int16x8;
	function add(a:SIMD.Int16x8, b:SIMD.Int16x8) : SIMD.Int16x8;
	function sub(a:SIMD.Int16x8, b:SIMD.Int16x8) : SIMD.Int16x8;
	function mul(a:SIMD.Int16x8, b:SIMD.Int16x8) : SIMD.Int16x8;
	function neg(a:SIMD.Int16x8) : SIMD.Int16x8;
	function shiftLeftByScalar(a:SIMD.Int16x8, bits:Float) : SIMD.Int16x8;
	function shiftRightByScalar(a:SIMD.Int16x8, bits:Float) : SIMD.Int16x8;
	function addSaturate(a:SIMD.Int16x8, b:SIMD.Int16x8) : SIMD.Int16x8;
	function subSaturate(a:SIMD.Int16x8, b:SIMD.Int16x8) : SIMD.Int16x8;
	function load(tarray:haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<Uint8Array, Uint8ClampedArray >, Int16Array >, Uint16Array >, Int32Array >| haxe.extern.EitherType<haxe.extern.EitherType<Uint32Array, Float32Array >, Float64Array>, index:Float) : SIMD.Int16x8;
	function store(tarray:haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<Uint8Array, Uint8ClampedArray >, Int16Array >, Uint16Array >, Int32Array >| haxe.extern.EitherType<haxe.extern.EitherType<Uint32Array, Float32Array >, Float64Array>, index:Float, value:SIMD.Int16x8) : SIMD.Int16x8;
	function fromUint16x8(value:SIMD.Uint16x8) : SIMD.Int16x8;
	function fromFloat32x4Bits(value:SIMD.Float32x4) : SIMD.Int16x8;
	function fromInt32x4Bits(value:SIMD.Int32x4) : SIMD.Int16x8;
	function fromInt8x16Bits(value:SIMD.Int8x16) : SIMD.Int16x8;
	function fromUint32x4Bits(value:SIMD.Uint32x4) : SIMD.Int16x8;
	function fromUint16x8Bits(value:SIMD.Uint16x8) : SIMD.Int16x8;
	function fromUint8x16Bits(value:SIMD.Uint8x16) : SIMD.Int16x8;
}