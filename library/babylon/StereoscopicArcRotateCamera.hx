package babylon;

extern class StereoscopicArcRotateCamera extends ArcRotateCamera
{
	function new(name:String, alpha:Float, beta:Float, radius:Float, target:Dynamic, interaxialDistance:Float, isStereoscopicSideBySide:Bool, scene:Scene) : Void;
	function getTypeName() : String;
}