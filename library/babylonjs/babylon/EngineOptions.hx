package babylon;

extern interface EngineOptions extends WebGLContextAttributes
{
	@:optional var limitDeviceRatio : Float;
	@:optional var autoEnableWebVR : Bool;
}