package babylon;

extern interface ITextureAssetTask extends IAssetTask
{
	var onSuccess : ITextureAssetTask->Void;
	var onError : ITextureAssetTask->Void;
	var texture : Texture;
}