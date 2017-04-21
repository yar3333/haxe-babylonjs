package babylon;

extern class TextureAssetTask implements ITextureAssetTask
{
	var name : String;
	var url : String;
	var noMipmap : Bool;
	var invertY : Bool;
	var samplingMode : Float;
	var onSuccess : ITextureAssetTask->Void;
	var onError : ITextureAssetTask->Void;
	var isCompleted : Bool;
	var texture : Texture;
	function new(name:String, url:String, ?noMipmap:Bool, ?invertY:Bool, ?samplingMode:Float) : Void;
	function run(scene:Scene, onSuccess:Void->Void, onError:Void->Void) : Void;
}