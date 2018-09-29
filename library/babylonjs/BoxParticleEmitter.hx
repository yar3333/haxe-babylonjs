package babylonjs;

/**
 * Particle emitter emitting particles from the inside of a box.
 * It emits the particles randomly between 2 given directions.
 */
@:native("BABYLON.BoxParticleEmitter")
extern class BoxParticleEmitter
	implements IParticleEmitterType
{
	/**
	 * Random direction of each particle after it has been emitted, between direction1 and direction2 vectors.
	 */
	var direction1 : Vector3;
	/**
	 * Random direction of each particle after it has been emitted, between direction1 and direction2 vectors.
	 */
	var direction2 : Vector3;
	/**
	 * Minimum box point around our emitter. Our emitter is the center of particles source, but if you want your particles to emit from more than one point, then you can tell it to do so.
	 */
	var minEmitBox : Vector3;
	/**
	 * Maximum box point around our emitter. Our emitter is the center of particles source, but if you want your particles to emit from more than one point, then you can tell it to do so.
	 */
	var maxEmitBox : Vector3;

	/**
	 * Particle emitter emitting particles from the inside of a box.
	 * It emits the particles randomly between 2 given directions.
	 */
	function new() : Void;
	/**
	 * Called by the particle System when the direction is computed for the created particle.
	 */
	function startDirectionFunction(emitPower:Float, worldMatrix:Matrix, directionToUpdate:Vector3, particle:Particle) : Void;
	/**
	 * Called by the particle System when the position is computed for the created particle.
	 */
	function startPositionFunction(worldMatrix:Matrix, positionToUpdate:Vector3, particle:Particle) : Void;
	/**
	 * Clones the current emitter and returns a copy of it
	 * @returns the new emitter
	 */
	@:overload(function(): BoxParticleEmitter{})
	function clone() : IParticleEmitterType;
	/**
	 * Called by the {BABYLON.GPUParticleSystem} to setup the update shader
	 */
	function applyToShader(effect:Effect) : Void;
	/**
	 * Returns a string to use to update the GPU particles update shader
	 * @returns a string containng the defines string
	 */
	function getEffectDefines() : String;
	/**
	 * Returns the string "BoxEmitter"
	 * @returns a string containing the class name
	 */
	function getClassName() : String;
	/**
	 * Serializes the particle system to a JSON object.
	 * @returns the JSON object
	 */
	function serialize() : Dynamic;
	/**
	 * Parse properties from a JSON object
	 */
	function parse(serializationObject:Dynamic) : Void;
}