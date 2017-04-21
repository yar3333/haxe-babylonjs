package babylon;

extern class TextFileAssetTask implements IAssetTask
{
	var name : String;
	var url : String;
	var onSuccess : IAssetTask->Void;
	var onError : IAssetTask->Void;
	var isCompleted : Bool;
	var text : String;
	function new(name:String, url:String) : Void;
	function run(scene:Scene, onSuccess:Void->Void, onError:Void->Void) : Void;
}