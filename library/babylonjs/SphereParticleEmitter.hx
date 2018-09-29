package babylonjs;

/**
 * Particle emitter emitting particles from the inside of a sphere.
 * It emits the particles alongside the sphere radius. The emission direction might be randomized.
 */
@:native("BABYLON.SphereParticleEmitter")
extern class SphereParticleEmitter
	implements IParticleEmitterType
{
	/**
	 * The radius of the emission sphere.
	 */
	var radius : Float;
	/**
	 * How much to randomize the particle direction [0-1].
	 */
	var directionRandomizer : Float;

	/**
	 * Particle emitter emitting particles from the inside of a sphere.
	 * It emits the particles alongside the sphere radius. The emission direction might be randomized.
	 */
	function new(?radius:Float, ?directionRandomizer:Float) : Void;
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
	@:overload(function(): SphereParticleEmitter{})
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
	 * Returns the string "SphereParticleEmitter"
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