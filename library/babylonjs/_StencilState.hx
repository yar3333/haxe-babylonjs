package babylonjs;

/**
 * @hidden
 */
@:native("BABYLON._StencilState")
extern class _StencilState
{
	private var _isStencilTestDirty : Dynamic;
	private var _isStencilMaskDirty : Dynamic;
	private var _isStencilFuncDirty : Dynamic;
	private var _isStencilOpDirty : Dynamic;
	private var _stencilTest : Dynamic;
	private var _stencilMask : Dynamic;
	private var _stencilFunc : Dynamic;
	private var _stencilFuncRef : Dynamic;
	private var _stencilFuncMask : Dynamic;
	private var _stencilOpStencilFail : Dynamic;
	private var _stencilOpDepthFail : Dynamic;
	private var _stencilOpStencilDepthPass : Dynamic;
	var isDirty(default, null) : Bool;
	var stencilFunc : Float;
	var stencilFuncRef : Float;
	var stencilFuncMask : Float;
	var stencilOpStencilFail : Float;
	var stencilOpDepthFail : Float;
	var stencilOpStencilDepthPass : Float;
	var stencilMask : Float;
	var stencilTest : Bool;

	/**
	 * @hidden
	 */
	function new() : Void;
	function reset() : Void;
	function apply(gl:js.html.webgl.RenderingContext) : Void;
}