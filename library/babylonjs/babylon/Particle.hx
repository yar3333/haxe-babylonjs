package babylon;

extern class Particle
{
	var position : Vector3;
	var direction : Vector3;
	var color : Color4;
	var colorStep : Color4;
	var lifeTime : Float;
	var age : Float;
	var size : Float;
	var angle : Float;
	var angularSpeed : Float;
	function copyTo(other:Particle) : Void;
}