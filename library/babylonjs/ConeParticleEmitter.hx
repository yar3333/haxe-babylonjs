package babylonjs;

/**
 * Particle emitter emitting particles from the inside of a cone.
 * It emits the particles alongside the cone volume from the base to the particle.
 * The emission direction might be randomized.
 */
@:native("BABYLON.ConeParticleEmitter")
extern class ConeParticleEmitter
	implements IParticleEmitterType
{
	/**
	 * The radius of the emission cone.
	 */
	var angle : Float;
	/**
	 * The cone base angle.
	 */
	var directionRandomizer : Float;
	private var _radius : Dynamic;
	private var _height : Dynamic;
	/**
	 * Gets the radius of the emission cone.
	 * Sets the radius of the emission cone.
	 */
	var radius : Float;

	/**
	 * Particle emitter emitting particles from the inside of a cone.
	 * It emits the particles alongside the cone volume from the base to the particle.
	 * The emission direction might be randomized.
	 */
	function new(?radius:Float, ?angle:Float, ?directionRandomizer:Float) : Void;
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
	@:overload(function(): ConeParticleEmitter{})
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