package babylon;

extern class CubeTextureAssetTask implements IAssetTask
{
	var name : String;
	var url : String;
	var extensions : Array<String>;
	var noMipmap : Bool;
	var files : Array<String>;
	var onSuccess : IAssetTask->Void;
	var onError : IAssetTask->Void;
	var isCompleted : Bool;
	var texture : CubeTexture;
	function new(name:String, url:String, ?extensions:Array<String>, ?noMipmap:Bool, ?files:Array<String>) : Void;
	function run(scene:Scene, onSuccess:Void->Void, onError:Void->Void) : Void;
}