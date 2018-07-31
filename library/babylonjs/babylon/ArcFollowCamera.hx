package babylon;

extern class ArcFollowCamera extends TargetCamera
{
	var alpha : Float;
	var beta : Float;
	var radius : Float;
	var target : AbstractMesh;
	private var _cartesianCoordinates : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, alpha:Float, beta:Float, radius:Float, target:AbstractMesh, scene:Scene) : Void;
	private function follow();
	function _checkInputs() : Void;
	function getTypeName() : String;
}