package simd;

extern interface Uint8x16Constructor
{
	(?s0:Float, ?s1:Float, ?s2:Float, ?s3:Float, ?s4:Float, ?s5:Float, ?s6:Float, ?s7:Float, ?s8:Float, ?s9:Float, ?s10:Float, ?s11:Float, ?s12:Float, ?s13:Float, ?s14:Float, ?s15:Float) : Uint8x16;
	var prototype : Uint8x16;
	function extractLane(simd:SIMD.Uint8x16, lane:Float) : Float;
	function swizzle(a:SIMD.Uint8x16, l1:Float, l2:Float, l3:Float, l4:Float, l5:Float, l6:Float, l7:Float, l8:Float, l9:Float, l10:Float, l11:Float, l12:Float, l13:Float, l14:Float, l15:Float, l16:Float) : SIMD.Uint8x16;
	function shuffle(a:SIMD.Uint8x16, b:SIMD.Uint8x16, l1:Float, l2:Float, l3:Float, l4:Float, l5:Float, l6:Float, l7:Float, l8:Float, l9:Float, l10:Float, l11:Float, l12:Float, l13:Float, l14:Float, l15:Float, l16:Float) : SIMD.Uint8x16;
	function check(a:SIMD.Uint8x16) : SIMD.Uint8x16;
	function splat(n:Float) : SIMD.Uint8x16;
	function replaceLane(simd:SIMD.Uint8x16, lane:Float, value:Float) : SIMD.Uint8x16;
	function select(selector:SIMD.Bool8x16, a:SIMD.Uint8x16, b:SIMD.Uint8x16) : SIMD.Uint8x16;
	function equal(a:SIMD.Uint8x16, b:SIMD.Uint8x16) : SIMD.Bool8x16;
	function notEqual(a:SIMD.Uint8x16, b:SIMD.Uint8x16) : SIMD.Bool8x16;
	function lessThan(a:SIMD.Uint8x16, b:SIMD.Uint8x16) : SIMD.Bool8x16;
	function lessThanOrEqual(a:SIMD.Uint8x16, b:SIMD.Uint8x16) : SIMD.Bool8x16;
	function greaterThan(a:SIMD.Uint8x16, b:SIMD.Uint8x16) : SIMD.Bool8x16;
	function greaterThanOrEqual(a:SIMD.Uint8x16, b:SIMD.Uint8x16) : SIMD.Bool8x16;
	function and(a:SIMD.Uint8x16, b:SIMD.Uint8x16) : SIMD.Uint8x16;
	function or(a:SIMD.Uint8x16, b:SIMD.Uint8x16) : SIMD.Uint8x16;
	function xor(a:SIMD.Uint8x16, b:SIMD.Uint8x16) : SIMD.Uint8x16;
	function not(a:SIMD.Uint8x16, b:SIMD.Uint8x16) : SIMD.Uint8x16;
	function add(a:SIMD.Uint8x16, b:SIMD.Uint8x16) : SIMD.Uint8x16;
	function sub(a:SIMD.Uint8x16, b:SIMD.Uint8x16) : SIMD.Uint8x16;
	function mul(a:SIMD.Uint8x16, b:SIMD.Uint8x16) : SIMD.Uint8x16;
	function shiftLeftByScalar(a:SIMD.Uint8x16, bits:Float) : SIMD.Uint8x16;
	function shiftRightByScalar(a:SIMD.Uint8x16, bits:Float) : SIMD.Uint8x16;
	function addSaturate(a:SIMD.Uint8x16, b:SIMD.Uint8x16) : SIMD.Uint8x16;
	function subSaturate(a:SIMD.Uint8x16, b:SIMD.Uint8x16) : SIMD.Uint8x16;
	function load(tarray:haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<Uint8Array, Uint8ClampedArray >, Int16Array >, Uint16Array >, Int32Array >| haxe.extern.EitherType<haxe.extern.EitherType<Uint32Array, Float32Array >, Float64Array>, index:Float) : SIMD.Uint8x16;
	function store(tarray:haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<haxe.extern.EitherType<Uint8Array, Uint8ClampedArray >, Int16Array >, Uint16Array >, Int32Array >| haxe.extern.EitherType<haxe.extern.EitherType<Uint32Array, Float32Array >, Float64Array>, index:Float, value:SIMD.Uint8x16) : SIMD.Uint8x16;
	function fromInt8x16(value:SIMD.Int8x16) : SIMD.Uint8x16;
	function fromFloat32x4Bits(value:SIMD.Float32x4) : SIMD.Uint8x16;
	function fromInt32x4Bits(value:SIMD.Int32x4) : SIMD.Uint8x16;
	function fromInt16x8Bits(value:SIMD.Int16x8) : SIMD.Uint8x16;
	function fromInt8x16Bits(value:SIMD.Int8x16) : SIMD.Uint8x16;
	function fromUint32x4Bits(value:SIMD.Uint32x4) : SIMD.Uint8x16;
	function fromUint16x8Bits(value:SIMD.Uint16x8) : SIMD.Uint8x16;
}