package babylonjs;

extern interface EXT_disjoint_timer_query
{
	var QUERY_COUNTER_BITS_EXT : Float;
	var TIME_ELAPSED_EXT : Float;
	var TIMESTAMP_EXT : Float;
	var GPU_DISJOINT_EXT : Float;
	var QUERY_RESULT_EXT : Float;
	var QUERY_RESULT_AVAILABLE_EXT : Float;

	function queryCounterEXT(query:WebGLQuery, target:Float) : Void;
	function createQueryEXT() : WebGLQuery;
	function beginQueryEXT(target:Float, query:WebGLQuery) : Void;
	function endQueryEXT(target:Float) : Void;
	function getQueryObjectEXT(query:WebGLQuery, target:Float) : Dynamic;
	function deleteQueryEXT(query:WebGLQuery) : Void;
}