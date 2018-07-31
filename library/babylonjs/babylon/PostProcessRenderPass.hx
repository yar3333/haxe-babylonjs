package babylon;

extern class PostProcessRenderPass
{
	private var _enabled : Dynamic/*UNKNOW_TYPE*/;
	private var _renderList : Dynamic/*UNKNOW_TYPE*/;
	private var _renderTexture : Dynamic/*UNKNOW_TYPE*/;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _refCount : Dynamic/*UNKNOW_TYPE*/;
	var _name : String;
	function new(scene:Scene, name:String, size:Float, renderList:Array<Mesh>, beforeRender:Void->Void, afterRender:Void->Void) : Void;
	function _incRefCount() : Float;
	function _decRefCount() : Float;
	function _update() : Void;
	function setRenderList(renderList:Array<Mesh>) : Void;
	function getRenderTexture() : RenderTargetTexture;
}