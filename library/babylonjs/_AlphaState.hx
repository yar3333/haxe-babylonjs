package babylonjs;

/**
 * @hidden
 */
@:native("BABYLON._AlphaState")
extern class _AlphaState
{
	private var _isAlphaBlendDirty : Dynamic;
	private var _isBlendFunctionParametersDirty : Dynamic;
	private var _isBlendEquationParametersDirty : Dynamic;
	private var _isBlendConstantsDirty : Dynamic;
	private var _alphaBlend : Dynamic;
	private var _blendFunctionParameters : Dynamic;
	private var _blendEquationParameters : Dynamic;
	private var _blendConstants : Dynamic;
	var isDirty(default, null) : Bool;
	var alphaBlend : Bool;

	/**
	 * @hidden
	 */
	function new() : Void;
	function setAlphaBlendConstants(r:Float, g:Float, b:Float, a:Float) : Void;
	function setAlphaBlendFunctionParameters(value0:Float, value1:Float, value2:Float, value3:Float) : Void;
	function setAlphaEquationParameters(rgb:Float, alpha:Float) : Void;
	function reset() : Void;
	function apply(gl:js.html.webgl.RenderingContext) : Void;
}