package babylon;

extern interface IShadowGenerator
{
	function getShadowMap() : RenderTargetTexture;
	function dispose() : Void;
}