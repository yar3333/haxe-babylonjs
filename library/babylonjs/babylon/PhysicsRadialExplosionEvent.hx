package babylonjs.babylon;

/**
 * *** Radial explosion ****
 */
@:native("BABYLON.PhysicsRadialExplosionEvent")
extern class PhysicsRadialExplosionEvent
{
	private var _scene : Dynamic;
	private var _sphere : Dynamic;
	private var _sphereOptions : Dynamic;
	private var _rays : Dynamic;
	private var _dataFetched : Dynamic;

	/**
	 * *** Radial explosion ****
	 */
	function new(scene:Scene) : Void;
	/**
	 * Returns the data related to the radial explosion event (sphere & rays).
	 * @returns {PhysicsRadialExplosionEventData}
	 */
	function getData() : PhysicsRadialExplosionEventData;
	/**
	 * Returns the force and contact point of the impostor or false, if the impostor is not affected by the force/impulse.
	 * @returns {Nullable<PhysicsForceAndContactPoint>}
	 */
	function getImpostorForceAndContactPoint(impostor:PhysicsImpostor, origin:Vector3, radius:Float, strength:Float, falloff:PhysicsRadialImpulseFalloff) : Null<PhysicsForceAndContactPoint>;
	/**
	 * Disposes the sphere.
	 */
	function dispose(?force:Bool) : Void;
	/**
	 * * Helpers **
	 */
	private function _prepareSphere() : Dynamic;
	private function _intersectsWithSphere(impostor:Dynamic, origin:Dynamic, radius:Dynamic) : Dynamic;
}