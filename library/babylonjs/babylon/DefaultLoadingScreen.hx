package babylonjs.babylon;

@:native("BABYLON.DefaultLoadingScreen")
extern class DefaultLoadingScreen
	implements ILoadingScreen
{
	private var _renderingCanvas : Dynamic;
	private var _loadingText : Dynamic;
	private var _loadingDivBackgroundColor : Dynamic;
	private var _loadingDiv : Dynamic;
	private var _loadingTextDiv : Dynamic;
	var loadingUIText : String;
	var loadingUIBackgroundColor : String;
	private var _resizeLoadingUI : Dynamic;

	function new(_renderingCanvas:js.html.CanvasElement, ?_loadingText:String, ?_loadingDivBackgroundColor:String) : Void;
	function displayLoadingUI() : Void;
	function hideLoadingUI() : Void;
}