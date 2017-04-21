package babylon;

extern class ImageAssetTask implements IAssetTask
{
	var name : String;
	var url : String;
	var onSuccess : IAssetTask->Void;
	var onError : IAssetTask->Void;
	var isCompleted : Bool;
	var image : js.html.ImageElement;
	function new(name:String, url:String) : Void;
	function run(scene:Scene, onSuccess:Void->Void, onError:Void->Void) : Void;
}