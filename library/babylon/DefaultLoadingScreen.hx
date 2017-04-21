package babylon;

extern class DefaultLoadingScreen implements ILoadingScreen
{
	private var _renderingCanvas : Dynamic/*UNKNOW_TYPE*/;
	private var _loadingText : Dynamic/*UNKNOW_TYPE*/;
	private var _loadingDivBackgroundColor : Dynamic/*UNKNOW_TYPE*/;
	private var _loadingDiv : Dynamic/*UNKNOW_TYPE*/;
	private var _loadingTextDiv : Dynamic/*UNKNOW_TYPE*/;
	function new(_renderingCanvas:js.html.CanvasElement, ?_loadingText:String, ?_loadingDivBackgroundColor:String) : Void;
	function displayLoadingUI() : Void;
	function hideLoadingUI() : Void;
	var loadingUIText : String;
	var loadingUIBackgroundColor : String;
	private var _resizeLoadingUI : Dynamic/*UNKNOW_TYPE*/;
}