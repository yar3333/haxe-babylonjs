package babylon;

extern interface PhysicsImpostorParameters
{
	var mass : Float;
	@:optional var friction : Float;
	@:optional var restitution : Float;
	@:optional var nativeOptions : Dynamic;
}