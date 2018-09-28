package babylonjs.babylon;

/**
 * This represents a GPU particle system in Babylon
 * This is the fastest particle system in Babylon as it uses the GPU to update the individual particle data
 * @see https://www.babylonjs-playground.com/#PU4WYI#4
 */
@:native("BABYLON.GPUParticleSystem")
extern class GPUParticleSystem
	implements IDisposable
	implements IParticleSystem
	implements IAnimatable
{
	/**
	 * The id of the Particle system.
	 */
	var id : String;
	/**
	 * The friendly name of the Particle system.
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
	private var _capacity : Dynamic;
	private var _activeCount : Dynamic;
	private var _currentActiveCount : Dynamic;
	private var _renderEffect : Dynamic;
	private var _updateEffect : Dynamic;
	private var _buffer0 : Dynamic;
	private var _buffer1 : Dynamic;
	private var _spriteBuffer : Dynamic;
	private var _updateVAO : Dynamic;
	private var _renderVAO : Dynamic;
	private var _targetIndex : Dynamic;
	private var _sourceBuffer : Dynamic;
	private var _targetBuffer : Dynamic;
	private var _scene : Dynamic;
	private var _engine : Dynamic;
	private var _currentRenderId : Dynamic;
	private var _started : Dynamic;
	private var _stopped : Dynamic;
	private var _timeDelta : Dynamic;
	private var _randomTexture : Dynamic;
	private var _attributesStrideSize(default, null) : Dynamic;
	private var _updateEffectOptions : Dynamic;
	private var _randomTextureSize : Dynamic;
	private var _actualFrame : Dynamic;
	/**
	 * List of animations used by the particle system.
	 */
	var animations : Array<Animation>;
	/**
	 * Gets a boolean indicating if the GPU particles can be rendered on current browser
	 */
	static var IsSupported(default, null) : Bool;
	/**
	 * An event triggered when the system is disposed.
	 */
	var onDisposeObservable : Observable<GPUParticleSystem>;
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
	 * Random direction of each particle after it has been emitted, between direction1 and direction2 vectors.
	 * This only works when particleEmitterTyps is a BoxParticleEmitter
	 */
	var direction1 : Vector3;
	/**
	 * Random direction of each particle after it has been emitted, between direction1 and direction2 vectors.
	 * This only works when particleEmitterTyps is a BoxParticleEmitter
	 */
	var direction2 : Vector3;
	/**
	 * Minimum box point around our emitter. Our emitter is the center of particles source, but if you want your particles to emit from more than one point, then you can tell it to do so.
	 * This only works when particleEmitterTyps is a BoxParticleEmitter
	 */
	var minEmitBox : Vector3;
	/**
	 * Maximum box point around our emitter. Our emitter is the center of particles source, but if you want your particles to emit from more than one point, then you can tell it to do so.
	 * This only works when particleEmitterTyps is a BoxParticleEmitter
	 */
	var maxEmitBox : Vector3;
	/**
	 * Forces the particle to write their depth information to the depth buffer. This can help preventing other draw calls
	 * to override the particles.
	 */
	var forceDepthWrite : Bool;
	/**
	 * Gets or set the number of active particles
	 */
	var activeParticleCount : Float;

	/**
	 * Gets the maximum number of particles active at the same time.
	 * @returns The max number of active particles.
	 */
	function getCapacity() : Float;
	/**
	 * Is this system ready to be used/rendered
	 * @return true if the system is ready
	 */
	function isReady() : Bool;
	/**
	 * Gets Wether the system has been started.
	 * @returns True if it has been started, otherwise false.
	 */
	function isStarted() : Bool;
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
	 * Returns the string "GPUParticleSystem"
	 * @returns a string containing the class name
	 */
	function getClassName() : String;
	/**
	 * This represents a GPU particle system in Babylon
	 * This is the fastest particle system in Babylon as it uses the GPU to update the individual particle data
	 * @see https://www.babylonjs-playground.com/#PU4WYI#4
	 */
	function new(name:String, options:Partial<{ var capacity : Float; var randomTextureSize : Float; }>, scene:Scene) : Void;
	private function _createUpdateVAO(source:Dynamic) : Dynamic;
	private function _createRenderVAO(source:Dynamic, spriteSource:Dynamic) : Dynamic;
	private function _initialize(?force:Dynamic) : Dynamic;
	/**
	 * @hidden 
	 */
	function _recreateUpdateEffect() : Void;
	/**
	 * @hidden 
	 */
	function _recreateRenderEffect() : Void;
	/**
	 * Animates the particle system for the current frame by emitting new particles and or animating the living ones.
	 */
	function animate() : Void;
	/**
	 * Renders the particle system in its current state.
	 * @returns the current number of particles
	 */
	function render() : Float;
	/**
	 * Rebuilds the particle system
	 */
	function rebuild() : Void;
	private function _releaseBuffers() : Dynamic;
	private function _releaseVAOs() : Dynamic;
	/**
	 * Disposes the particle system and free the associated resources
	 */
	@:overload(function(?disposeTexture:Bool): Void{})
	function dispose() : Void;
	/**
	 * Clones the particle system.
	 * @returns the cloned particle system
	 */
	@:overload(function(name:String, newEmitter:Dynamic): Null<GPUParticleSystem>{})
	function clone(name:String, newEmitter:Dynamic) : Null<IParticleSystem>;
	/**
	 * Serializes the particle system to a JSON object.
	 * @returns the JSON object
	 */
	function serialize() : Dynamic;
	/**
	 * Parses a JSON object to create a GPU particle system.
	 * @returns the parsed GPU particle system
	 */
	static function Parse(parsedParticleSystem:Dynamic, scene:Scene, rootUrl:String) : GPUParticleSystem;
}