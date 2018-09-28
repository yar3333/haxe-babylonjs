package babylonjs.babylon;

@:native("BABYLON.PostProcessRenderPipelineManager")
extern class PostProcessRenderPipelineManager
{
	private var _renderPipelines : Dynamic;

	function new() : Void;
	function addPipeline(renderPipeline:PostProcessRenderPipeline) : Void;
	@:overload(function(renderPipelineName:String, cameras:Array<Camera>, ?unique:Bool):Void{})
	function attachCamerasToRenderPipeline(renderPipelineName:String, cameras:Camera, ?unique:Bool) : Void;
	@:overload(function(renderPipelineName:String, cameras:Array<Camera>):Void{})
	function detachCamerasFromRenderPipeline(renderPipelineName:String, cameras:Camera) : Void;
	@:overload(function(renderPipelineName:String, renderEffectName:String, cameras:Array<Camera>):Void{})
	function enableEffectInPipeline(renderPipelineName:String, renderEffectName:String, cameras:Camera) : Void;
	@:overload(function(renderPipelineName:String, renderEffectName:String, cameras:Array<Camera>):Void{})
	function disableEffectInPipeline(renderPipelineName:String, renderEffectName:String, cameras:Camera) : Void;
	function update() : Void;
	function _rebuild() : Void;
	function dispose() : Void;
}