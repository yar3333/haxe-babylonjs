package babylonjs.babylon;

extern interface IMultiRenderTargetOptions
{
	@:optional var generateMipMaps : Bool;
	@:optional var types : Array<Float>;
	@:optional var samplingModes : Array<Float>;
	@:optional var generateDepthBuffer : Bool;
	@:optional var generateStencilBuffer : Bool;
	@:optional var generateDepthTexture : Bool;
	@:optional var textureCount : Float;
	@:optional var doNotChangeAspectRatio : Bool;
	@:optional var defaultType : Float;
}