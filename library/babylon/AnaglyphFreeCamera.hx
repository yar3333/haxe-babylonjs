package babylon;

extern class AnaglyphFreeCamera extends FreeCamera
{
	function new(name:String, position:Vector3, interaxialDistance:Float, scene:Scene) : Void;
	function getTypeName() : String;
}