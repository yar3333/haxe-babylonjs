package babylon/internals;

extern class _DepthCullingState
{
	private var _isDepthTestDirty : Dynamic/*UNKNOW_TYPE*/;
	private var _isDepthMaskDirty : Dynamic/*UNKNOW_TYPE*/;
	private var _isDepthFuncDirty : Dynamic/*UNKNOW_TYPE*/;
	private var _isCullFaceDirty : Dynamic/*UNKNOW_TYPE*/;
	private var _isCullDirty : Dynamic/*UNKNOW_TYPE*/;
	private var _isZOffsetDirty : Dynamic/*UNKNOW_TYPE*/;
	private var _depthTest : Dynamic/*UNKNOW_TYPE*/;
	private var _depthMask : Dynamic/*UNKNOW_TYPE*/;
	private var _depthFunc : Dynamic/*UNKNOW_TYPE*/;
	private var _cull : Dynamic/*UNKNOW_TYPE*/;
	private var _cullFace : Dynamic/*UNKNOW_TYPE*/;
	private var _zOffset : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * Initializes the state.
	 */
	function new() : Void;
	var isDirty : Bool;
	var zOffset : Float;
	var cullFace : Float;
	var cull : Bool;
	var depthFunc : Float;
	var depthMask : Bool;
	var depthTest : Bool;
	function reset() : Void;
	function apply(gl:js.html.webgl.RenderingContext) : Void;
}