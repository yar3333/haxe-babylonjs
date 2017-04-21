package simd;

extern interface Bool32x4Constructor
{
	(?s0:Bool, ?s1:Bool, ?s2:Bool, ?s3:Bool) : Bool32x4;
	var prototype : Bool32x4;
	function extractLane(simd:SIMD.Bool32x4, lane:Float) : Bool;
	function check(a:SIMD.Bool32x4) : SIMD.Bool32x4;
	function splat(n:Bool) : SIMD.Bool32x4;
	function replaceLane(simd:SIMD.Bool32x4, lane:Float, value:Bool) : SIMD.Bool32x4;
	function allTrue(a:SIMD.Bool32x4) : Bool;
	function anyTrue(a:SIMD.Bool32x4) : Bool;
	function and(a:SIMD.Bool32x4, b:SIMD.Bool32x4) : SIMD.Bool32x4;
	function or(a:SIMD.Bool32x4, b:SIMD.Bool32x4) : SIMD.Bool32x4;
	function xor(a:SIMD.Bool32x4, b:SIMD.Bool32x4) : SIMD.Bool32x4;
	function not(a:SIMD.Bool32x4, b:SIMD.Bool32x4) : SIMD.Bool32x4;
}