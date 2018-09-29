package babylonjs;

extern interface IParticleSystem
{
	/**
	 * The id of the Particle system.
	 */
	var id : String;
	/**
	 * The name of the Particle system.
	 */
	var name : String;
	/**
	 * The emitter represents the Mesh or position we are attaching the particle system to.
	 */
	var emitter : Null<haxe.extern.EitherType<AbstractMesh, Vector3>>;
	/**
	 * The rendering group used by the Particle system to chose when to render.
	 */
	var renderingGroupId : Float;
	/**
	 * The layer mask we are rendering the particles through.
	 */
	var layerMask : Float;
	/**
	 * The overall motion speed (0.01 is default update speed, faster updates = faster animation)
	 */
	var updateSpeed : Float;
	/**
	 * The amount of time the particle system is running (depends of the overall update speed).
	 */
	var targetStopDuration : Float;
	/**
	 * The texture used to render each particle. (this can be a spritesheet)
	 */
	var particleTexture : Null<Texture>;
	/**
	 * Blend mode use to render the particle, it can be either ParticleSystem.BLENDMODE_ONEONE or ParticleSystem.BLENDMODE_STANDARD.
	 */
	var blendMode : Float;
	/**
	 * Minimum life time of emitting particles.
	 */
	var minLifeTime : Float;
	/**
	 * Maximum life time of emitting particles.
	 */
	var maxLifeTime : Float;
	/**
	 * Minimum Size of emitting particles.
	 */
	var minSize : Float;
	/**
	 * Maximum Size of emitting particles.
	 */
	var maxSize : Float;
	/**
	 * Random color of each particle after it has been emitted, between color1 and color2 vectors.
	 */
	var color1 : Color4;
	/**
	 * Random color of each particle after it has been emitted, between color1 and color2 vectors.
	 */
	var color2 : Color4;
	/**
	 * Color the particle will have at the end of its lifetime.
	 */
	var colorDead : Color4;
	/**
	 * The maximum number of particles to emit per frame until we reach the activeParticleCount value
	 */
	var emitRate : Float;
	/**
	 * You can use gravity if you want to give an orientation to your particles.
	 */
	var gravity : Vector3;
	/**
	 * Minimum power of emitting particles.
	 */
	var minEmitPower : Float;
	/**
	 * Maximum power of emitting particles.
	 */
	var maxEmitPower : Float;
	/**
	 * The particle emitter type defines the emitter used by the particle system.
	 * It can be for example box, sphere, or cone...
	 */
	var particleEmitterType : Null<IParticleEmitterType>;

	/**
	 * Gets the maximum number of particles active at the same time.
	 * @returns The max number of active particles.
	 */
	function getCapacity() : Float;
	/**
	 * Gets Wether the system has been started.
	 * @returns True if it has been started, otherwise false.
	 * Gets if the particle system has been started.
	 * @return true if the system has been started, otherwise false.
	 */
	@:overload(function():Bool{})
	function isStarted() : Bool;
	/**
	 * Gets Wether the system has been started.
	 * @returns True if it has been started, otherwise false.
	 * Gets if the particle system has been started.
	 * @return true if the system has been started, otherwise false.
	 */
	/**
	 * Animates the particle system for this frame.
	 */
	function animate() : Void;
	/**
	 * Renders the particle system in its current state.
	 * @returns the current number of particles
	 */
	function render() : Float;
	/**
	 * Dispose the particle system and frees its associated resources.
	 */
	@:overload(function(?disposeTexture:Bool):Void{})
	function dispose() : Void;
	/**
	 * Clones the particle system.
	 * @returns the cloned particle system
	 */
	function clone(name:String, newEmitter:Dynamic) : Null<IParticleSystem>;
	/**
	 * Serializes the particle system to a JSON object.
	 * @returns the JSON object
	 */
	function serialize() : Dynamic;
	/**
	 * Rebuild the particle system
	 */
	function rebuild() : Void;
	/**
	 * Starts the particle system and begins to emit.
	 */
	function start() : Void;
	/**
	 * Stops the particle system.
	 */
	function stop() : Void;
	/**
	 * Remove all active particles
	 */
	function reset() : Void;
	/**
	 * Is this system ready to be used/rendered
	 * @return true if the system is ready
	 */
	function isReady() : Bool;
}