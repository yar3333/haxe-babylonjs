package babylon;

extern class DecimationTriangle
{
	var vertices : Array<DecimationVertex>;
	var normal : Vector3;
	var error : Array<Float>;
	var deleted : Bool;
	var isDirty : Bool;
	var borderFactor : Float;
	var deletePending : Bool;
	var originalOffset : Float;
	function new(vertices:Array<DecimationVertex>) : Void;
}