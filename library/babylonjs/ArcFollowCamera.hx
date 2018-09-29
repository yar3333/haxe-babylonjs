package babylonjs;

@:native("BABYLON.ArcFollowCamera")
extern class ArcFollowCamera extends TargetCamera
{
	var alpha : Float;
	var beta : Float;
	var radius : Float;
	var target : Null<AbstractMesh>;
	private var _cartesianCoordinates : Dynamic;

	@:overload(function(name:String, alpha:Float, beta:Float, radius:Float, target:Null<AbstractMesh>, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	private function follow() : Dynamic;
	override function _checkInputs() : Void;
	override function getClassName() : String;
}