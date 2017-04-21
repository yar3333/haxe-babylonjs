package babylon;

extern class ReflectionProbe
{
	var name : String;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _renderTargetTexture : Dynamic/*UNKNOW_TYPE*/;
	private var _projectionMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _viewMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _target : Dynamic/*UNKNOW_TYPE*/;
	private var _add : Dynamic/*UNKNOW_TYPE*/;
	private var _attachedMesh : Dynamic/*UNKNOW_TYPE*/;
	var invertYAxis : Bool;
	var position : Vector3;
	function new(name:String, size:Float, scene:Scene, ?generateMipMaps:Bool) : Void;
	var refreshRate : Float;
	function getScene() : Scene;
	var cubeTexture : RenderTargetTexture;
	var renderList : Array<AbstractMesh>;
	function attachToMesh(mesh:AbstractMesh) : Void;
	function dispose() : Void;
}