package babylonjs;

/**
 * A particle represents one of the element emitted by a particle system.
 * This is mainly define by its coordinates, direction, velocity and age.
 */
@:native("BABYLON.Particle")
extern class Particle
{
	/**
	 * particleSystem the particle system the particle belongs to.
	 */
	var particleSystem : ParticleSystem;
	/**
	 * The world position of the particle in the scene.
	 */
	var position : Vector3;
	/**
	 * The world direction of the particle in the scene.
	 */
	var direction : Vector3;
	/**
	 * The color of the particle.
	 */
	var color : Color4;
	/**
	 * The color change of the particle per step.
	 */
	var colorStep : Color4;
	/**
	 * Defines how long will the life of the particle be.
	 */
	var lifeTime : Float;
	/**
	 * The current age of the particle.
	 */
	var age : Float;
	/**
	 * The current size of the particle.
	 */
	var size : Float;
	/**
	 * The current angle of the particle.
	 */
	var angle : Float;
	/**
	 * Defines how fast is the angle changing.
	 */
	var angularSpeed : Float;
	/**
	 * Defines the cell index used by the particle to be rendered from a sprite.
	 */
	var cellIndex : Float;
	private var _currentFrameCounter : Dynamic;
	/**
	 * Defines how the sprite cell index is updated for the particle. This is
	 * defined as a callback.
	 */
	var updateCellIndex : Float->Void;

	/**
	 * A particle represents one of the element emitted by a particle system.
	 * This is mainly define by its coordinates, direction, velocity and age.
	 */
	function new(particleSystem:ParticleSystem) : Void;
	private function updateCellInfoFromSystem() : Dynamic;
	private function _updateCellIndexWithSpeedCalculated(scaledUpdateSpeed:Dynamic) : Dynamic;
	private function _updateCellIndexWithCustomSpeed() : Dynamic;
	/**
	 * Copy the properties of particle to another one.
	 */
	function copyTo(other:Particle) : Void;
}