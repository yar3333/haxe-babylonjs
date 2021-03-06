package babylonjs;

extern interface PhysicsImpostorParameters
{
	var mass : Float;
	@:optional var friction : Float;
	@:optional var restitution : Float;
	@:optional var nativeOptions : Dynamic;
	@:optional var ignoreParent : Bool;
	@:optional var disableBidirectionalTransformation : Bool;
}