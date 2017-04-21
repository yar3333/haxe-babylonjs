package babylon/internals;

extern class _StencilState
{
	private var _isStencilTestDirty : Dynamic/*UNKNOW_TYPE*/;
	private var _isStencilMaskDirty : Dynamic/*UNKNOW_TYPE*/;
	private var _isStencilFuncDirty : Dynamic/*UNKNOW_TYPE*/;
	private var _isStencilOpDirty : Dynamic/*UNKNOW_TYPE*/;
	private var _stencilTest : Dynamic/*UNKNOW_TYPE*/;
	private var _stencilMask : Dynamic/*UNKNOW_TYPE*/;
	private var _stencilFunc : Dynamic/*UNKNOW_TYPE*/;
	private var _stencilFuncRef : Dynamic/*UNKNOW_TYPE*/;
	private var _stencilFuncMask : Dynamic/*UNKNOW_TYPE*/;
	private var _stencilOpStencilFail : Dynamic/*UNKNOW_TYPE*/;
	private var _stencilOpDepthFail : Dynamic/*UNKNOW_TYPE*/;
	private var _stencilOpStencilDepthPass : Dynamic/*UNKNOW_TYPE*/;
	var isDirty : Bool;
	var stencilFunc : Float;
	var stencilFuncRef : Float;
	var stencilFuncMask : Float;
	var stencilOpStencilFail : Float;
	var stencilOpDepthFail : Float;
	var stencilOpStencilDepthPass : Float;
	var stencilMask : Float;
	var stencilTest : Bool;
	function new() : Void;
	function reset() : Void;
	function apply(gl:js.html.webgl.RenderingContext) : Void;
}