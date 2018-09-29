package babylonjs;

/**
 * This represents a particle system in Babylon.
 * Particles are often small sprites used to simulate hard-to-reproduce phenomena like fire, smoke, water, or abstract visual effects like magic glitter and faery dust.
 * Particles can take different shapes while emitted like box, sphere, cone or you can write your custom function.
 * @example https://doc.babylonjs.com/babylon101/particles
 */
@:native("BABYLON.ParticleSystem")
extern class ParticleSystem
	implements IDisposable
	implements IAnimatable
	implements IParticleSystem
{
	/**
	 * Source color is added to the destination color without alpha affecting the result.
	 */
	static var BLENDMODE_ONEONE : Float;
	/**
	 * Blend current color and particle color using particle’s alpha.
	 */
	static var BLENDMODE_STANDARD : Float;
	/**
	 * List of animations used by the particle system.
	 */
	var animations : Array<Animation>;
	/**
	 * The id of the Particle system.
	 */
	var id : String;
	/**
	 * The friendly name of the Particle system.
	 */
	var name : String;
	/**
	 * The rendering group used by the Particle system to chose when to render.
	 */
	var renderingGroupId : Float;
	/**
	 * The emitter represents the Mesh or position we are attaching the particle system to.
	 */
	var emitter : Null<haxe.extern.EitherType<AbstractMesh, Vector3>>;
	/**
	 * The maximum number of particles to emit per frame
	 */
	var emitRate : Float;
	/**
	 * If you want to launch only a few particles at once, that can be done, as well.
	 */
	var manualEmitCount : Float;
	/**
	 * The overall motion speed (0.01 is default update speed, faster updates = faster animation)
	 */
	var updateSpeed : Float;
	/**
	 * The amount of time the particle system is running (depends of the overall update speed).
	 */
	var targetStopDuration : Float;
	/**
	 * Specifies whether the particle system will be disposed once it reaches the end of the animation.
	 */
	var disposeOnStop : Bool;
	/**
	 * Minimum power of emitting particles.
	 */
	var minEmitPower : Float;
	/**
	 * Maximum power of emitting particles.
	 */
	var maxEmitPower : Float;
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
	 * Minimum angular speed of emitting particles (Z-axis rotation for each particle).
	 */
	var minAngularSpeed : Float;
	/**
	 * Maximum angular speed of emitting particles (Z-axis rotation for each particle).
	 */
	var maxAngularSpeed : Float;
	/**
	 * The texture used to render each particle. (this can be a spritesheet)
	 */
	var particleTexture : Null<Texture>;
	/**
	 * The layer mask we are rendering the particles through.
	 */
	var layerMask : Float;
	/**
	 * This can help using your own shader to render the particle system.
	 * The according effect will be created
	 */
	var customShader : Dynamic;
	/**
	 * By default particle system starts as soon as they are created. This prevents the
	 * automatic start to happen and let you decide when to start emitting particles.
	 */
	var preventAutoStart : Bool;
	/**
	 * This function can be defined to provide custom update for active particles.
	 * This function will be called instead of regular update (age, position, color, etc.).
	 * Do not forget that this function will be called on every frame so try to keep it simple and fast :)
	 */
	var updateFunction : Array<Particle>->Void;
	/**
	 * Callback triggered when the particle animation is ending.
	 */
	var onAnimationEnd : Null<Void->Void>;
	/**
	 * Blend mode use to render the particle, it can be either ParticleSystem.BLENDMODE_ONEONE or ParticleSystem.BLENDMODE_STANDARD.
	 */
	var blendMode : Float;
	/**
	 * Forces the particle to write their depth information to the depth buffer. This can help preventing other draw calls
	 * to override the particles.
	 */
	var forceDepthWrite : Bool;
	/**
	 * You can use gravity if you want to give an orientation to your particles.
	 */
	var gravity : Vector3;
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
	 * An optional mask to filter some colors out of the texture, or filter a part of the alpha channel.
	 */
	var textureMask : Color4;
	/**
	 * The particle emitter type defines the emitter used by the particle system.
	 * It can be for example box, sphere, or cone...
	 */
	//var particleEmitterType : IParticleEmitterType

	var particleEmitterType : Null<IParticleEmitterType>;
	/**
	 * This function can be defined to specify initial direction for every new particle.
	 * It by default use the emitterType defined function.
	 */
	var startDirectionFunction : Float->Matrix->Vector3->Particle->Void;
	/**
	 * This function can be defined to specify initial position for every new particle.
	 * It by default use the emitterType defined function.
	 */
	var startPositionFunction : Matrix->Vector3->Particle->Void;
	/**
	 * If using a spritesheet (isAnimationSheetEnabled), defines if the sprite animation should loop between startSpriteCellID and endSpriteCellID or not.
	 */
	var spriteCellLoop : Bool;
	/**
	 * If using a spritesheet (isAnimationSheetEnabled) and spriteCellLoop defines the speed of the sprite loop.
	 */
	var spriteCellChangeSpeed : Float;
	/**
	 * If using a spritesheet (isAnimationSheetEnabled) and spriteCellLoop defines the first sprite cell to display.
	 */
	var startSpriteCellID : Float;
	/**
	 * If using a spritesheet (isAnimationSheetEnabled) and spriteCellLoop defines the last sprite cell to display.
	 */
	var endSpriteCellID : Float;
	/**
	 * If using a spritesheet (isAnimationSheetEnabled), defines the sprite cell width to use.
	 */
	var spriteCellWidth : Float;
	/**
	 * If using a spritesheet (isAnimationSheetEnabled), defines the sprite cell height to use.
	 */
	var spriteCellHeight : Float;
	/**
	 * An event triggered when the system is disposed.
	 */
	var onDisposeObservable : Observable<ParticleSystem>;
	private var _onDisposeObserver : Dynamic;
	/**
	 * Sets a callback that will be triggered when the system is disposed.
	 */
	var onDispose : Void->Void;
	/**
	 * Gets wether an animation sprite sheet is enabled or not on the particle system.
	 */
	var isAnimationSheetEnabled(default, null) : Bool;
	private var _particles : Dynamic;
	private var _epsilon : Dynamic;
	private var _capacity : Dynamic;
	private var _scene : Dynamic;
	private var _stockParticles : Dynamic;
	private var _newPartsExcess : Dynamic;
	private var _vertexData : Dynamic;
	private var _vertexBuffer : Dynamic;
	private var _vertexBuffers : Dynamic;
	private var _indexBuffer : Dynamic;
	private var _effect : Dynamic;
	private var _customEffect : Dynamic;
	private var _cachedDefines : Dynamic;
	private var _scaledColorStep : Dynamic;
	private var _colorDiff : Dynamic;
	private var _scaledDirection : Dynamic;
	private var _scaledGravity : Dynamic;
	private var _currentRenderId : Dynamic;
	private var _alive : Dynamic;
	private var _started : Dynamic;
	private var _stopped : Dynamic;
	private var _actualFrame : Dynamic;
	private var _scaledUpdateSpeed : Dynamic;
	private var _vertexBufferSize : Dynamic;
	private var _isAnimationSheetEnabled : Dynamic;
	/**
	 * this is the Sub-emitters templates that will be used to generate particle system when the particle dies, this property is used by the root particle system only.
	 */
	var subEmitters : Array<ParticleSystem>;
	/**
	 * The current active Sub-systems, this property is used by the root particle system only.
	 */
	var activeSubSystems : Array<ParticleSystem>;
	private var _rootParticleSystem : Dynamic;
	/**
	 * Gets the current list of active particles
	 */
	var particles(default, null) : Array<Particle>;
	/**
	 * "Recycles" one of the particle by copying it back to the "stock" of particles and removing it from the active list.
	 * Its lifetime will start back at 0.
	 */
	var recycleParticle : Particle->Void;
	private var _createParticle : Dynamic;
	private var _emitFromParticle : Dynamic;
	private var _appendParticleVertexes : Dynamic;

	/**
	 * Returns the string "ParticleSystem"
	 * @returns a string containing the class name
	 */
	function getClassName() : String;
	/**
	 * This represents a particle system in Babylon.
	 * Particles are often small sprites used to simulate hard-to-reproduce phenomena like fire, smoke, water, or abstract visual effects like magic glitter and faery dust.
	 * Particles can take different shapes while emitted like box, sphere, cone or you can write your custom function.
	 * @example https://doc.babylonjs.com/babylon101/particles
	 */
	function new(name:String, capacity:Float, scene:Scene, ?customEffect:Null<Effect>, ?isAnimationSheetEnabled:Bool, ?epsilon:Float) : Void;
	private function _createIndexBuffer() : Dynamic;
	/**
	 * Gets the maximum number of particles active at the same time.
	 * @returns The max number of active particles.
	 */
	function getCapacity() : Float;
	/**
	 * Gets Wether there are still active particles in the system.
	 * @returns True if it is alive, otherwise false.
	 */
	function isAlive() : Bool;
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
	@:overload(function(?stopSubEmitters:Bool): Void{})
	function stop() : Void;
	/**
	 * Remove all active particles
	 */
	function reset() : Void;
	/**
	 * @hidden (for internal use only)
	 */
	function _appendParticleVertex(index:Float, particle:Particle, offsetX:Float, offsetY:Float) : Void;
	/**
	 * @hidden (for internal use only)
	 */
	function _appendParticleVertexWithAnimation(index:Float, particle:Particle, offsetX:Float, offsetY:Float) : Void;
	private function _stopSubEmitters() : Dynamic;
	private function _removeFromRoot() : Dynamic;
	private function _update(newParticles:Dynamic) : Dynamic;
	private function _getEffect() : Dynamic;
	/**
	 * Animates the particle system for the current frame by emitting new particles and or animating the living ones.
	 */
	function animate() : Void;
	private function _appenedParticleVertexesWithSheet(offset:Dynamic, particle:Dynamic) : Dynamic;
	private function _appenedParticleVertexesNoSheet(offset:Dynamic, particle:Dynamic) : Dynamic;
	/**
	 * Rebuilds the particle system.
	 */
	function rebuild() : Void;
	/**
	 * Is this system ready to be used/rendered
	 * @return true if the system is ready
	 */
	function isReady() : Bool;
	/**
	 * Renders the particle system in its current state.
	 * @returns the current number of particles
	 */
	function render() : Float;
	/**
	 * Disposes the particle system and free the associated resources
	 */
	@:overload(function(?disposeTexture:Bool): Void{})
	function dispose() : Void;
	/**
	 * Creates a Sphere Emitter for the particle system. (emits along the sphere radius)
	 * @returns the emitter
	 */
	function createSphereEmitter(?radius:Float) : SphereParticleEmitter;
	/**
	 * Creates a Directed Sphere Emitter for the particle system. (emits between direction1 and direction2)
	 * @returns the emitter
	 */
	function createDirectedSphereEmitter(?radius:Float, ?direction1:Vector3, ?direction2:Vector3) : SphereDirectedParticleEmitter;
	/**
	 * Creates a Cone Emitter for the particle system. (emits from the cone to the particle position)
	 * @returns the emitter
	 */
	function createConeEmitter(?radius:Float, ?angle:Float) : ConeParticleEmitter;
	/**
	 * Creates a Box Emitter for the particle system. (emits between direction1 and direction2 from withing the box defined by minEmitBox and maxEmitBox)
	 * @returns the emitter
	 */
	function createBoxEmitter(direction1:Vector3, direction2:Vector3, minEmitBox:Vector3, maxEmitBox:Vector3) : BoxParticleEmitter;
	/**
	 * Clones the particle system.
	 * @returns the cloned particle system
	 */
	@:overload(function(name:String, newEmitter:Dynamic): ParticleSystem{})
	function clone(name:String, newEmitter:Dynamic) : Null<IParticleSystem>;
	/**
	 * Serializes the particle system to a JSON object.
	 * @returns the JSON object
	 */
	function serialize() : Dynamic;
	/**
	 * Parses a JSON object to create a particle system.
	 * @returns the Parsed particle system
	 */
	static function Parse(parsedParticleSystem:Dynamic, scene:Scene, rootUrl:String) : ParticleSystem;
}