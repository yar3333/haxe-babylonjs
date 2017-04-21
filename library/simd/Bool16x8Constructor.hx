package simd;

extern interface Bool16x8Constructor
{
	(?s0:Bool, ?s1:Bool, ?s2:Bool, ?s3:Bool, ?s4:Bool, ?s5:Bool, ?s6:Bool, ?s7:Bool) : Bool16x8;
	var prototype : Bool16x8;
	function extractLane(simd:SIMD.Bool16x8, lane:Float) : Bool;
	function check(a:SIMD.Bool16x8) : SIMD.Bool16x8;
	function splat(n:Bool) : SIMD.Bool16x8;
	function replaceLane(simd:SIMD.Bool16x8, lane:Float, value:Bool) : SIMD.Bool16x8;
	function allTrue(a:SIMD.Bool16x8) : Bool;
	function anyTrue(a:SIMD.Bool16x8) : Bool;
	function and(a:SIMD.Bool16x8, b:SIMD.Bool16x8) : SIMD.Bool16x8;
	function or(a:SIMD.Bool16x8, b:SIMD.Bool16x8) : SIMD.Bool16x8;
	function xor(a:SIMD.Bool16x8, b:SIMD.Bool16x8) : SIMD.Bool16x8;
	function not(a:SIMD.Bool16x8, b:SIMD.Bool16x8) : SIMD.Bool16x8;
}