package babylonjs.babylon;

/**
 * @hidden
 */
@:native("BABYLON._TimeToken")
extern class _TimeToken
{
	var _startTimeQuery : Null<WebGLQuery>;
	var _endTimeQuery : Null<WebGLQuery>;
	var _timeElapsedQuery : Null<WebGLQuery>;
	var _timeElapsedQueryEnded : Bool;
}