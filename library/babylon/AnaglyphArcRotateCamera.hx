package babylon;

extern class AnaglyphArcRotateCamera extends ArcRotateCamera
{
	function new(name:String, alpha:Float, beta:Float, radius:Float, target:Dynamic, interaxialDistance:Float, scene:Scene) : Void;
	function getTypeName() : String;
}