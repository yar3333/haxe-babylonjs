package babylonjs;

/**
 * *** Gravitational Field ****
 */
@:native("BABYLON.PhysicsGravitationalFieldEvent")
extern class PhysicsGravitationalFieldEvent
{
	private var _physicsHelper : Dynamic;
	private var _scene : Dynamic;
	private var _origin : Dynamic;
	private var _radius : Dynamic;
	private var _strength : Dynamic;
	private var _falloff : Dynamic;
	private var _tickCallback : Dynamic;
	private var _sphere : Dynamic;
	private var _dataFetched : Dynamic;

	/**
	 * *** Gravitational Field ****
	 */
	function new(physicsHelper:PhysicsHelper, scene:Scene, origin:Vector3, radius:Float, strength:Float, ?falloff:PhysicsRadialImpulseFalloff) : Void;
	/**
	 * Returns the data related to the gravitational field event (sphere).
	 * @returns {PhysicsGravitationalFieldEventData}
	 */
	function getData() : PhysicsGravitationalFieldEventData;
	/**
	 * Enables the gravitational field.
	 */
	function enable() : Void;
	/**
	 * Disables the gravitational field.
	 */
	function disable() : Void;
	/**
	 * Disposes the sphere.
	 */
	function dispose(?force:Bool) : Void;
	private function _tick() : Dynamic;
}