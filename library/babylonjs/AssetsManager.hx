package babylonjs;

/**
 * This class can be used to easily import assets into a scene
 * @see http://doc.babylonjs.com/how_to/how_to_use_assetsmanager
 */
@:native("BABYLON.AssetsManager")
extern class AssetsManager
{
	private var _scene : Dynamic;
	private var _isLoading : Dynamic;
	private var _tasks : Array<AbstractAssetTask>;
	private var _waitingTasksCount : Float;
	private var _totalTasksCount : Float;
	/**
	 * Callback called when all tasks are processed
	 */
	var onFinish : Array<AbstractAssetTask>->Void;
	/**
	 * Callback called when a task is successful
	 */
	var onTaskSuccess : AbstractAssetTask->Void;
	/**
	 * Callback called when a task had an error
	 */
	var onTaskError : AbstractAssetTask->Void;
	/**
	 * Callback called when a task is done (whatever the result is)
	 */
	var onProgress : Float->Float->AbstractAssetTask->Void;
	/**
	 * Observable called when all tasks are processed
	 */
	var onTaskSuccessObservable : Observable<AbstractAssetTask>;
	/**
	 * Observable called when a task had an error
	 */
	var onTaskErrorObservable : Observable<AbstractAssetTask>;
	/**
	 * Observable called when a task is successful
	 */
	var onTasksDoneObservable : Observable<Array<AbstractAssetTask>>;
	/**
	 * Observable called when a task is done (whatever the result is)
	 */
	var onProgressObservable : Observable<IAssetsProgressEvent>;
	/**
	 * Gets or sets a boolean defining if the {BABYLON.AssetsManager} should use the default loading screen
	 * @see http://doc.babylonjs.com/how_to/creating_a_custom_loading_screen
	 */
	var useDefaultLoadingScreen : Bool;

	/**
	 * This class can be used to easily import assets into a scene
	 * @see http://doc.babylonjs.com/how_to/how_to_use_assetsmanager
	 */
	function new(scene:Scene) : Void;
	/**
	 * Add a {BABYLON.MeshAssetTask} to the list of active tasks
	 * @returns a new {BABYLON.MeshAssetTask} object
	 */
	function addMeshTask(taskName:String, meshesNames:Dynamic, rootUrl:String, sceneFilename:String) : MeshAssetTask;
	/**
	 * Add a {BABYLON.TextFileAssetTask} to the list of active tasks
	 * @returns a new {BABYLON.TextFileAssetTask} object
	 */
	function addTextFileTask(taskName:String, url:String) : TextFileAssetTask;
	/**
	 * Add a {BABYLON.BinaryFileAssetTask} to the list of active tasks
	 * @returns a new {BABYLON.BinaryFileAssetTask} object
	 */
	function addBinaryFileTask(taskName:String, url:String) : BinaryFileAssetTask;
	/**
	 * Add a {BABYLON.ImageAssetTask} to the list of active tasks
	 * @returns a new {BABYLON.ImageAssetTask} object
	 */
	function addImageTask(taskName:String, url:String) : ImageAssetTask;
	/**
	 * Add a {BABYLON.TextureAssetTask} to the list of active tasks
	 * @returns a new {BABYLON.TextureAssetTask} object
	 */
	function addTextureTask(taskName:String, url:String, ?noMipmap:Bool, ?invertY:Bool, ?samplingMode:Float) : TextureAssetTask;
	/**
	 * Add a {BABYLON.CubeTextureAssetTask} to the list of active tasks
	 * @returns a new {BABYLON.CubeTextureAssetTask} object
	 */
	function addCubeTextureTask(taskName:String, url:String, ?extensions:Array<String>, ?noMipmap:Bool, ?files:Array<String>) : CubeTextureAssetTask;
	/**
	 * Add a {BABYLON.HDRCubeTextureAssetTask} to the list of active tasks
	 * @returns a new {BABYLON.HDRCubeTextureAssetTask} object
	 */
	function addHDRCubeTextureTask(taskName:String, url:String, size:Float, ?noMipmap:Bool, ?generateHarmonics:Bool, ?gammaSpace:Bool, ?reserved:Bool) : HDRCubeTextureAssetTask;
	private function _decreaseWaitingTasksCount(task:Dynamic) : Dynamic;
	private function _runTask(task:Dynamic) : Dynamic;
	/**
	 * Reset the {BABYLON.AssetsManager} and remove all tasks
	 * @return the current instance of the {BABYLON.AssetsManager}
	 */
	function reset() : AssetsManager;
	/**
	 * Start the loading process
	 * @return the current instance of the {BABYLON.AssetsManager}
	 */
	function load() : AssetsManager;
}