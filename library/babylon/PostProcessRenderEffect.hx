package babylon;

extern class PostProcessRenderEffect
{
	private var _engine : Dynamic/*UNKNOW_TYPE*/;
	private var _postProcesses : Dynamic/*UNKNOW_TYPE*/;
	private var _getPostProcess : Dynamic/*UNKNOW_TYPE*/;
	private var _singleInstance : Dynamic/*UNKNOW_TYPE*/;
	private var _cameras : Dynamic/*UNKNOW_TYPE*/;
	private var _indicesForCamera : Dynamic/*UNKNOW_TYPE*/;
	private var _renderPasses : Dynamic/*UNKNOW_TYPE*/;
	private var _renderEffectAsPasses : Dynamic/*UNKNOW_TYPE*/;
	var _name : String;
	var applyParameters : PostProcess->Void;
	function new(engine:Engine, name:String, getPostProcess:Void->PostProcess, ?singleInstance:Bool) : Void;
	var isSupported : Bool;
	function _update() : Void;
	function addPass(renderPass:PostProcessRenderPass) : Void;
	function removePass(renderPass:PostProcessRenderPass) : Void;
	function addRenderEffectAsPass(renderEffect:PostProcessRenderEffect) : Void;
	function getPass(passName:String) : Void;
	function emptyPasses() : Void;
	function _attachCameras(cameras:Camera) : Dynamic;
	function _attachCameras(cameras:Array<Camera>) : Dynamic;
	function _detachCameras(cameras:Camera) : Dynamic;
	function _detachCameras(cameras:Array<Camera>) : Dynamic;
	function _enable(cameras:Camera) : Dynamic;
	function _enable(cameras:Array<Camera>) : Dynamic;
	function _disable(cameras:Camera) : Dynamic;
	function _disable(cameras:Array<Camera>) : Dynamic;
	function getPostProcess(?camera:Camera) : PostProcess;
	private function _linkParameters();
	private function _linkTextures(effect);
}