package babylon;

extern class SimplificationSettings implements ISimplificationSettings
{
	var quality : Float;
	var distance : Float;
	var optimizeMesh : Bool;
	function new(quality:Float, distance:Float, ?optimizeMesh:Bool) : Void;
}