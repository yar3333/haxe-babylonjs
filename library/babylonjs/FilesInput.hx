package babylonjs;

@:native("BABYLON.FilesInput")
extern class FilesInput
{
	static var FilesToLoad : Dynamic<js.html.File>;
	var onProcessFileCallback : js.html.File->String->String->Bool;
	private var _engine : Dynamic;
	private var _currentScene : Dynamic;
	private var _sceneLoadedCallback : Dynamic;
	private var _progressCallback : Dynamic;
	private var _additionalRenderLoopLogicCallback : Dynamic;
	private var _textureLoadingCallback : Dynamic;
	private var _startingProcessingFilesCallback : Dynamic;
	private var _onReloadCallback : Dynamic;
	private var _errorCallback : Dynamic;
	private var _elementToMonitor : Dynamic;
	private var _sceneFileToLoad : Dynamic;
	private var _filesToLoad : Dynamic;
	private var _dragEnterHandler : Dynamic;
	private var _dragOverHandler : Dynamic;
	private var _dropHandler : Dynamic;

	function new(engine:Engine, scene:Scene, sceneLoadedCallback:js.html.File->Scene->Void, progressCallback:SceneLoaderProgressEvent->Void, additionalRenderLoopLogicCallback:Void->Void, textureLoadingCallback:Float->Void, startingProcessingFilesCallback:Void->Void, onReloadCallback:js.html.File->Void, errorCallback:js.html.File->Scene->String->Void) : Void;
	function monitorElementForDragNDrop(elementToMonitor:js.html.Element) : Void;
	function dispose() : Void;
	private function renderFunction() : Dynamic;
	private function drag(e:Dynamic) : Dynamic;
	private function drop(eventDrop:Dynamic) : Dynamic;
	private function _traverseFolder(folder:Dynamic, files:Dynamic, remaining:Dynamic, callback:Dynamic) : Dynamic;
	private function _processFiles(files:Dynamic) : Dynamic;
	function loadFiles(event:Dynamic) : Void;
	private function _processReload() : Dynamic;
	function reload() : Void;
}