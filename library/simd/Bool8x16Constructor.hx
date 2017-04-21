package simd;

extern interface Bool8x16Constructor
{
	(?s0:Bool, ?s1:Bool, ?s2:Bool, ?s3:Bool, ?s4:Bool, ?s5:Bool, ?s6:Bool, ?s7:Bool, ?s8:Bool, ?s9:Bool, ?s10:Bool, ?s11:Bool, ?s12:Bool, ?s13:Bool, ?s14:Bool, ?s15:Bool) : Bool8x16;
	var prototype : Bool8x16;
	function extractLane(simd:SIMD.Bool8x16, lane:Float) : Bool;
	function check(a:SIMD.Bool8x16) : SIMD.Bool8x16;
	function splat(n:Bool) : SIMD.Bool8x16;
	function replaceLane(simd:SIMD.Bool8x16, lane:Float, value:Bool) : SIMD.Bool8x16;
	function allTrue(a:SIMD.Bool8x16) : Bool;
	function anyTrue(a:SIMD.Bool8x16) : Bool;
	function and(a:SIMD.Bool8x16, b:SIMD.Bool8x16) : SIMD.Bool8x16;
	function or(a:SIMD.Bool8x16, b:SIMD.Bool8x16) : SIMD.Bool8x16;
	function xor(a:SIMD.Bool8x16, b:SIMD.Bool8x16) : SIMD.Bool8x16;
	function not(a:SIMD.Bool8x16, b:SIMD.Bool8x16) : SIMD.Bool8x16;
}