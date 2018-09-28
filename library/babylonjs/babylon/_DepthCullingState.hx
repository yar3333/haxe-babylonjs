package babylonjs.babylon;

/**
 * @hidden
 */
@:native("BABYLON._DepthCullingState")
extern class _DepthCullingState
{
	private var _isDepthTestDirty : Dynamic;
	private var _isDepthMaskDirty : Dynamic;
	private var _isDepthFuncDirty : Dynamic;
	private var _isCullFaceDirty : Dynamic;
	private var _isCullDirty : Dynamic;
	private var _isZOffsetDirty : Dynamic;
	private var _isFrontFaceDirty : Dynamic;
	private var _depthTest : Dynamic;
	private var _depthMask : Dynamic;
	private var _depthFunc : Dynamic;
	private var _cull : Dynamic;
	private var _cullFace : Dynamic;
	private var _zOffset : Dynamic;
	private var _frontFace : Dynamic;
	var isDirty(default, null) : Bool;
	var zOffset : Float;
	var cullFace : Null<Float>;
	var cull : Null<Bool>;
	var depthFunc : Null<Float>;
	var depthMask : Bool;
	var depthTest : Bool;
	var frontFace : Null<Float>;

	/**
	 * @hidden
	 */
	function new() : Void;
	function reset() : Void;
	function apply(gl:js.html.webgl.RenderingContext) : Void;
}