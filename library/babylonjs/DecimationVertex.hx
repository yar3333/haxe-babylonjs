package babylonjs;

@:native("BABYLON.DecimationVertex")
extern class DecimationVertex
{
	var position : Vector3;
	var id : Float;
	var q : QuadraticMatrix;
	var isBorder : Bool;
	var triangleStart : Float;
	var triangleCount : Float;
	var originalOffsets : Array<Float>;

	function new(position:Vector3, id:Float) : Void;
	function updatePosition(newPosition:Vector3) : Void;
}