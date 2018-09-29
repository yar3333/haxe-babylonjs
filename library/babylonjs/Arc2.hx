package babylonjs;

@:native("BABYLON.Arc2")
extern class Arc2
{
	var startPoint : Vector2;
	var midPoint : Vector2;
	var endPoint : Vector2;
	var centerPoint : Vector2;
	var radius : Float;
	var angle : Angle;
	var startAngle : Angle;
	var orientation : Orientation;

	function new(startPoint:Vector2, midPoint:Vector2, endPoint:Vector2) : Void;
}