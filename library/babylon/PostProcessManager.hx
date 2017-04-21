package babylon;

extern class PostProcessManager
{
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _indexBuffer : Dynamic/*UNKNOW_TYPE*/;
	private var _vertexBuffers : Dynamic/*UNKNOW_TYPE*/;
	function new(scene:Scene) : Void;
	private function _prepareBuffers();
	function _prepareFrame(?sourceTexture:WebGLTexture) : Bool;
	function directRender(postProcesses:Array<PostProcess>, ?targetTexture:WebGLTexture) : Void;
	function _finalizeFrame(?doNotPresent:Bool, ?targetTexture:WebGLTexture, ?faceIndex:Float, ?postProcesses:Array<PostProcess>) : Void;
	function dispose() : Void;
}