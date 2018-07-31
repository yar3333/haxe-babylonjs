package babylon;

extern class PostProcessRenderPipeline
{
	private var _engine : Dynamic/*UNKNOW_TYPE*/;
	private var _renderEffects : Dynamic/*UNKNOW_TYPE*/;
	private var _renderEffectsForIsolatedPass : Dynamic/*UNKNOW_TYPE*/;
	private var _cameras : Dynamic/*UNKNOW_TYPE*/;
	var _name : String;
	private static var PASS_EFFECT_NAME : Dynamic/*UNKNOW_TYPE*/;
	private static var PASS_SAMPLER_NAME : Dynamic/*UNKNOW_TYPE*/;
	function new(engine:Engine, name:String) : Void;
	var isSupported : Bool;
	function addEffect(renderEffect:PostProcessRenderEffect) : Void;
	function _enableEffect(renderEffectName:String, cameras:Camera) : Dynamic;
	function _enableEffect(renderEffectName:String, cameras:Array<Camera>) : Dynamic;
	function _disableEffect(renderEffectName:String, cameras:Camera) : Dynamic;
	function _disableEffect(renderEffectName:String, cameras:Array<Camera>) : Dynamic;
	function _attachCameras(cameras:Camera, unique:Bool) : Dynamic;
	function _attachCameras(cameras:Array<Camera>, unique:Bool) : Dynamic;
	function _detachCameras(cameras:Camera) : Dynamic;
	function _detachCameras(cameras:Array<Camera>) : Dynamic;
	function _enableDisplayOnlyPass(passName:Dynamic, cameras:Camera) : Dynamic;
	function _enableDisplayOnlyPass(passName:Dynamic, cameras:Array<Camera>) : Dynamic;
	function _disableDisplayOnlyPass(cameras:Camera) : Dynamic;
	function _disableDisplayOnlyPass(cameras:Array<Camera>) : Dynamic;
	function _update() : Void;
	function dispose() : Void;
}