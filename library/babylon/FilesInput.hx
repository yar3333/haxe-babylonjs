package babylon;

extern class FilesInput
{
	private var _engine : Dynamic/*UNKNOW_TYPE*/;
	private var _currentScene : Dynamic/*UNKNOW_TYPE*/;
	private var _canvas : Dynamic/*UNKNOW_TYPE*/;
	private var _sceneLoadedCallback : Dynamic/*UNKNOW_TYPE*/;
	private var _progressCallback : Dynamic/*UNKNOW_TYPE*/;
	private var _additionnalRenderLoopLogicCallback : Dynamic/*UNKNOW_TYPE*/;
	private var _textureLoadingCallback : Dynamic/*UNKNOW_TYPE*/;
	private var _startingProcessingFilesCallback : Dynamic/*UNKNOW_TYPE*/;
	private var _elementToMonitor : Dynamic/*UNKNOW_TYPE*/;
	static var FilesTextures : Array<Dynamic>;
	static var FilesToLoad : Array<Dynamic>;
	private var _sceneFileToLoad : Dynamic/*UNKNOW_TYPE*/;
	private var _filesToLoad : Dynamic/*UNKNOW_TYPE*/;
	function new(p_engine:Engine, p_scene:Scene, p_canvas:js.html.CanvasElement, p_sceneLoadedCallback:Dynamic, p_progressCallback:Dynamic, p_additionnalRenderLoopLogicCallback:Dynamic, p_textureLoadingCallback:Dynamic, p_startingProcessingFilesCallback:Dynamic) : Void;
	function monitorElementForDragNDrop(p_elementToMonitor:HtmlElement) : Void;
	private function renderFunction();
	private function drag(e);
	private function drop(eventDrop);
	function loadFiles(event:Dynamic) : Void;
	function reload() : Void;
}