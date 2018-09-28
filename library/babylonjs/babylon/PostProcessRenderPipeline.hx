package babylonjs.babylon;

@:native("BABYLON.PostProcessRenderPipeline")
extern class PostProcessRenderPipeline
{
	private var engine : Dynamic;
	private var _renderEffects : Dynamic;
	private var _renderEffectsForIsolatedPass : Dynamic;
	private var _cameras : Array<Camera>;
	var _name : String;
	var isSupported(default, null) : Bool;

	function new(engine:Engine, name:String) : Void;
	function getClassName() : String;
	function addEffect(renderEffect:PostProcessRenderEffect) : Void;
	function _rebuild() : Void;
	@:overload(function(renderEffectName:String, cameras:Array<Camera>):Void{})
	function _enableEffect(renderEffectName:String, cameras:Camera) : Void;
	@:overload(function(renderEffectName:String, cameras:Null<Array<Camera>>):Void{})
	function _disableEffect(renderEffectName:String, cameras:Null<Array<Camera>>) : Void;
	@:overload(function(cameras:Array<Camera>, unique:Bool):Void{})
	function _attachCameras(cameras:Camera, unique:Bool) : Void;
	@:overload(function(cameras:Null<Array<Camera>>):Void{})
	function _detachCameras(cameras:Camera) : Void;
	function _update() : Void;
	function _reset() : Void;
	function _enableMSAAOnFirstPostProcess(sampleCount:Float) : Bool;
	function dispose() : Void;
}