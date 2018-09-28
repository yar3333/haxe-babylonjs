package babylonjs.babylon;

/**
 * Options to be set when merging outputs from the default pipeline.
 */
@:native("BABYLON.DepthOfFieldMergePostProcessOptions")
extern class DepthOfFieldMergePostProcessOptions
{
	/**
	 * The original image to merge on top of
	 */
	var originalFromInput : PostProcess;
	/**
	 * Parameters to perform the merge of the depth of field effect
	 */
	@:optional var depthOfField : { var circleOfConfusion : PostProcess; var blurSteps : Array<PostProcess>; };
	/**
	 * Parameters to perform the merge of bloom effect
	 */
	@:optional var bloom : { var blurred : PostProcess; var weight : Float; };
}