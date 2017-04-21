package babylon;

extern interface CameraInputsMap<TCamera:BABYLON.Camera>
{
	[name: String]: ICameraInput<TCamera>;
	[idx: Float]: ICameraInput<TCamera>;
}