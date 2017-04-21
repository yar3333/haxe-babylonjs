package babylon;

extern interface ILoadingScreen
{
	var displayLoadingUI : Void->Void;
	var hideLoadingUI : Void->Void;
	var loadingUIBackgroundColor : String;
	var loadingUIText : String;
}