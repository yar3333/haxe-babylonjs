package babylonjs;

/**
 * *** Vortex ****
 */
@:native("BABYLON.PhysicsVortexEvent")
extern class PhysicsVortexEvent
{
	private var _scene : Dynamic;
	private var _origin : Dynamic;
	private var _radius : Dynamic;
	private var _strength : Dynamic;
	private var _height : Dynamic;
	private var _physicsEngine : Dynamic;
	private var _originTop : Dynamic;
	private var _centripetalForceThreshold : Dynamic;
	private var _updraftMultiplier : Dynamic;
	private var _tickCallback : Dynamic;
	private var _cylinder : Dynamic;
	private var _cylinderPosition : Dynamic;
	private var _dataFetched : Dynamic;

	/**
	 * *** Vortex ****
	 */
	function new(_scene:Scene, _origin:Vector3, _radius:Float, _strength:Float, _height:Float) : Void;
	/**
	 * Returns the data related to the vortex event (cylinder).
	 * @returns {PhysicsVortexEventData}
	 */
	function getData() : PhysicsVortexEventData;
	/**
	 * Enables the vortex.
	 */
	function enable() : Void;
	/**
	 * Disables the cortex.
	 */
	function disable() : Void;
	/**
	 * Disposes the sphere.
	 */
	function dispose(?force:Bool) : Void;
	private function getImpostorForceAndContactPoint(impostor:Dynamic) : Dynamic;
	private function _tick() : Dynamic;
	/**
	 * * Helpers **
	 */
	private function _prepareCylinder() : Dynamic;
	private function _intersectsWithCylinder(impostor:Dynamic) : Dynamic;
}