package babylonjs;

@:native("BABYLON.PhysicsHelper")
extern class PhysicsHelper
{
	private var _scene : Dynamic;
	private var _physicsEngine : Dynamic;

	function new(scene:Scene) : Void;
	function applyRadialExplosionImpulse(origin:Vector3, radius:Float, strength:Float, ?falloff:PhysicsRadialImpulseFalloff) : Null<PhysicsRadialExplosionEvent>;
	function applyRadialExplosionForce(origin:Vector3, radius:Float, strength:Float, ?falloff:PhysicsRadialImpulseFalloff) : Null<PhysicsRadialExplosionEvent>;
	function gravitationalField(origin:Vector3, radius:Float, strength:Float, ?falloff:PhysicsRadialImpulseFalloff) : Null<PhysicsGravitationalFieldEvent>;
	function updraft(origin:Vector3, radius:Float, strength:Float, height:Float, ?updraftMode:PhysicsUpdraftMode) : Null<PhysicsUpdraftEvent>;
	function vortex(origin:Vector3, radius:Float, strength:Float, height:Float) : Null<PhysicsVortexEvent>;
}