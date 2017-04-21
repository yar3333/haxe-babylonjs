package babylon/internals;

extern class _AlphaState
{
	private var _isAlphaBlendDirty : Dynamic/*UNKNOW_TYPE*/;
	private var _isBlendFunctionParametersDirty : Dynamic/*UNKNOW_TYPE*/;
	private var _alphaBlend : Dynamic/*UNKNOW_TYPE*/;
	private var _blendFunctionParameters : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * Initializes the state.
	 */
	function new() : Void;
	var isDirty : Bool;
	var alphaBlend : Bool;
	function setAlphaBlendFunctionParameters(value0:Float, value1:Float, value2:Float, value3:Float) : Void;
	function reset() : Void;
	function apply(gl:js.html.webgl.RenderingContext) : Void;
}