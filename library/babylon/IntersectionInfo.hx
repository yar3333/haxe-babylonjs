package babylon;

extern class IntersectionInfo
{
	var bu : Float;
	var bv : Float;
	var distance : Float;
	var faceId : Float;
	var subMeshId : Float;
	function new(bu:Float, bv:Float, distance:Float) : Void;
}