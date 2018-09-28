package babylonjs.babylon;

extern interface IParticleEmitterType
{
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
	function clone() : IParticleEmitterType;
	/**
	 * Called by the {BABYLON.GPUParticleSystem} to setup the update shader
	 */
	function applyToShader(effect:Effect) : Void;
	/**
	 * Returns a string to use to update the GPU particles update shader
	 * @returns the effect defines string
	 */
	function getEffectDefines() : String;
	/**
	 * Returns a string representing the class name
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