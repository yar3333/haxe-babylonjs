package babylon;

extern interface IAssetTask
{
	var onSuccess : IAssetTask->Void;
	var onError : IAssetTask->Void;
	var isCompleted : Bool;
	function run(scene:Scene, onSuccess:Void->Void, onError:Void->Void) : Dynamic;
}