package babylon;

extern class AssetsManager
{
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	protected var tasks : Array<IAssetTask>;
	protected var waitingTasksCount : Float;
	var onFinish : Array<IAssetTask>->Void;
	var onTaskSuccess : IAssetTask->Void;
	var onTaskError : IAssetTask->Void;
	var useDefaultLoadingScreen : Bool;
	function new(scene:Scene) : Void;
	function addMeshTask(taskName:String, meshesNames:Dynamic, rootUrl:String, sceneFilename:String) : IAssetTask;
	function addTextFileTask(taskName:String, url:String) : IAssetTask;
	function addBinaryFileTask(taskName:String, url:String) : IAssetTask;
	function addImageTask(taskName:String, url:String) : IAssetTask;
	function addTextureTask(taskName:String, url:String, ?noMipmap:Bool, ?invertY:Bool, ?samplingMode:Float) : ITextureAssetTask;
	private function _decreaseWaitingTasksCount();
	private function _runTask(task);
	function reset() : AssetsManager;
	function load() : AssetsManager;
}