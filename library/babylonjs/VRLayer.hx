package babylonjs;

extern interface VRLayer
{
	@:optional var leftBounds : Array<Float>;
	@:optional var rightBounds : Array<Float>;
	@:optional var source : js.html.CanvasElement;
}