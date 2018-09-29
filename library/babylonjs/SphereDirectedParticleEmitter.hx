package babylonjs;

/**
 * Particle emitter emitting particles from the inside of a sphere.
 * It emits the particles randomly between two vectors.
 */
@:native("BABYLON.SphereDirectedParticleEmitter")
extern class SphereDirectedParticleEmitter extends SphereParticleEmitter
{
	/**
	 * The min limit of the emission direction.
	 */
	var direction1 : Vector3;
	/**
	 * The max limit of the emission direction.
	 */
	var direction2 : Vector3;

	/**
	 * Particle emitter emitting particles from the inside of a sphere.
	 * It emits the particles randomly between two vectors.
	 */
	@:overload(function(?radius:Float,?direction1:Vector3,?direction2:Vector3): Void{})
	function new(?radius:Float, ?directionRandomizer:Float) : Void;
	/**
	 * Called by the particle System when the direction is computed for the created particle.
	 */
	override function startDirectionFunction(emitPower:Float, worldMatrix:Matrix, directionToUpdate:Vector3, particle:Particle) : Void;
	/**
	 * Clones the current emitter and returns a copy of it
	 * @returns the new emitter
	 */
	@:overload(function(): SphereDirectedParticleEmitter{})
	override function clone() : IParticleEmitterType;
	/**
	 * Called by the {BABYLON.GPUParticleSystem} to setup the update shader
	 */
	override function applyToShader(effect:Effect) : Void;
	/**
	 * Returns a string to use to update the GPU particles update shader
	 * @returns a string containng the defines string
	 */
	override function getEffectDefines() : String;
	/**
	 * Returns the string "SphereDirectedParticleEmitter"
	 * @returns a string containing the class name
	 */
	override function getClassName() : String;
	/**
	 * Serializes the particle system to a JSON object.
	 * @returns the JSON object
	 */
	override function serialize() : Dynamic;
	/**
	 * Parse properties from a JSON object
	 */
	override function parse(serializationObject:Dynamic) : Void;
}