package babylonjs;

/**
 * PostProcessManager is used to manage one or more post processes or post process pipelines
 * See https://doc.babylonjs.com/how_to/how_to_use_postprocesses
 */
@:native("BABYLON.PostProcessManager")
extern class PostProcessManager
{
	private var _scene : Dynamic;
	private var _indexBuffer : Dynamic;
	private var _vertexBuffers : Dynamic;

	/**
	 * PostProcessManager is used to manage one or more post processes or post process pipelines
	 * See https://doc.babylonjs.com/how_to/how_to_use_postprocesses
	 */
	function new(scene:Scene) : Void;
	private function _prepareBuffers() : Dynamic;
	private function _buildIndexBuffer() : Dynamic;
	/**
	 * Rebuilds the vertex buffers of the manager.
	 */
	function _rebuild() : Void;
	/**
	 * Prepares a frame to be run through a post process.
	 * @returns True if the post processes were able to be run.
	 */
	function _prepareFrame(?sourceTexture:Null<InternalTexture>, ?postProcesses:Null<Array<PostProcess>>) : Bool;
	/**
	 * Manually render a set of post processes to a texture.
	 */
	function directRender(postProcesses:Array<PostProcess>, ?targetTexture:Null<InternalTexture>, ?forceFullscreenViewport:Bool) : Void;
	/**
	 * Finalize the result of the output of the postprocesses.
	 */
	function _finalizeFrame(?doNotPresent:Bool, ?targetTexture:InternalTexture, ?faceIndex:Float, ?postProcesses:Array<PostProcess>, ?forceFullscreenViewport:Bool) : Void;
	/**
	 * Disposes of the post process manager.
	 */
	function dispose() : Void;
}