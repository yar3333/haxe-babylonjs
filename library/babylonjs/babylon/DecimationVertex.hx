package babylon;

extern class DecimationVertex
{
	var position : Vector3;
	var id : Dynamic;
	var q : QuadraticMatrix;
	var isBorder : Bool;
	var triangleStart : Float;
	var triangleCount : Float;
	var originalOffsets : Array<Float>;
	function new(position:Vector3, id:Dynamic) : Void;
	function updatePosition(newPosition:Vector3) : Void;
}