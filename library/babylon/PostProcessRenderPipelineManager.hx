package babylon;

extern class PostProcessRenderPipelineManager
{
	private var _renderPipelines : Dynamic/*UNKNOW_TYPE*/;
	function new() : Void;
	function addPipeline(renderPipeline:PostProcessRenderPipeline) : Void;
	function attachCamerasToRenderPipeline(renderPipelineName:String, cameras:Camera, ?unique:Bool) : Dynamic;
	function attachCamerasToRenderPipeline(renderPipelineName:String, cameras:Array<Camera>, ?unique:Bool) : Dynamic;
	function detachCamerasFromRenderPipeline(renderPipelineName:String, cameras:Camera) : Dynamic;
	function detachCamerasFromRenderPipeline(renderPipelineName:String, cameras:Array<Camera>) : Dynamic;
	function enableEffectInPipeline(renderPipelineName:String, renderEffectName:String, cameras:Camera) : Dynamic;
	function enableEffectInPipeline(renderPipelineName:String, renderEffectName:String, cameras:Array<Camera>) : Dynamic;
	function disableEffectInPipeline(renderPipelineName:String, renderEffectName:String, cameras:Camera) : Dynamic;
	function disableEffectInPipeline(renderPipelineName:String, renderEffectName:String, cameras:Array<Camera>) : Dynamic;
	function enableDisplayOnlyPassInPipeline(renderPipelineName:String, passName:String, cameras:Camera) : Dynamic;
	function enableDisplayOnlyPassInPipeline(renderPipelineName:String, passName:String, cameras:Array<Camera>) : Dynamic;
	function disableDisplayOnlyPassInPipeline(renderPipelineName:String, cameras:Camera) : Dynamic;
	function disableDisplayOnlyPassInPipeline(renderPipelineName:String, cameras:Array<Camera>) : Dynamic;
	function update() : Void;
}