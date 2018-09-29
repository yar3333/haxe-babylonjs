package babylonjs;

@:native("BABYLON.ReflectionProbe")
extern class ReflectionProbe
{
	var name : String;
	private var _scene : Dynamic;
	private var _renderTargetTexture : Dynamic;
	private var _projectionMatrix : Dynamic;
	private var _viewMatrix : Dynamic;
	private var _target : Dynamic;
	private var _add : Dynamic;
	private var _attachedMesh : Dynamic;
	private var _invertYAxis : Dynamic;
	var position : Vector3;
	var samples : Float;
	var refreshRate : Float;
	var cubeTexture(default, null) : RenderTargetTexture;
	var renderList(default, null) : Null<Array<AbstractMesh>>;

	function new(name:String, size:Float, scene:Scene, ?generateMipMaps:Bool) : Void;
	function getScene() : Scene;
	function attachToMesh(mesh:AbstractMesh) : Void;
	/**
	 * Specifies whether or not the stencil and depth buffer are cleared between two rendering groups.
	 */
	function setRenderingAutoClearDepthStencil(renderingGroupId:Float, autoClearDepthStencil:Bool) : Void;
	function dispose() : Void;
}