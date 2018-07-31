package babylon;

extern class ParticleSystem implements IDisposable implements IAnimatable
{
	var name : String;
	static var BLENDMODE_ONEONE : Float;
	static var BLENDMODE_STANDARD : Float;
	var animations : Array<Animation>;
	var id : String;
	var renderingGroupId : Float;
	var emitter : Dynamic;
	var emitRate : Float;
	var manualEmitCount : Float;
	var updateSpeed : Float;
	var targetStopDuration : Float;
	var disposeOnStop : Bool;
	var minEmitPower : Float;
	var maxEmitPower : Float;
	var minLifeTime : Float;
	var maxLifeTime : Float;
	var minSize : Float;
	var maxSize : Float;
	var minAngularSpeed : Float;
	var maxAngularSpeed : Float;
	var particleTexture : Texture;
	var layerMask : Float;
	/**
	* An event triggered when the system is disposed.
	* @type {BABYLON.Observable}
	*/
	var onDisposeObservable : Observable<ParticleSystem>;
	private var _onDisposeObserver : Dynamic/*UNKNOW_TYPE*/;
	var onDispose : Void->Void;
	var updateFunction : Array<Particle>->Void;
	var blendMode : Float;
	var forceDepthWrite : Bool;
	var gravity : Vector3;
	var direction1 : Vector3;
	var direction2 : Vector3;
	var minEmitBox : Vector3;
	var maxEmitBox : Vector3;
	var color1 : Color4;
	var color2 : Color4;
	var colorDead : Color4;
	var textureMask : Color4;
	var startDirectionFunction : Float->Matrix->Vector3->Particle->Void;
	var startPositionFunction : Matrix->Vector3->Particle->Void;
	private var particles : Dynamic/*UNKNOW_TYPE*/;
	private var _capacity : Dynamic/*UNKNOW_TYPE*/;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _stockParticles : Dynamic/*UNKNOW_TYPE*/;
	private var _newPartsExcess : Dynamic/*UNKNOW_TYPE*/;
	private var _vertexData : Dynamic/*UNKNOW_TYPE*/;
	private var _vertexBuffer : Dynamic/*UNKNOW_TYPE*/;
	private var _vertexBuffers : Dynamic/*UNKNOW_TYPE*/;
	private var _indexBuffer : Dynamic/*UNKNOW_TYPE*/;
	private var _effect : Dynamic/*UNKNOW_TYPE*/;
	private var _customEffect : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedDefines : Dynamic/*UNKNOW_TYPE*/;
	private var _scaledColorStep : Dynamic/*UNKNOW_TYPE*/;
	private var _colorDiff : Dynamic/*UNKNOW_TYPE*/;
	private var _scaledDirection : Dynamic/*UNKNOW_TYPE*/;
	private var _scaledGravity : Dynamic/*UNKNOW_TYPE*/;
	private var _currentRenderId : Dynamic/*UNKNOW_TYPE*/;
	private var _alive : Dynamic/*UNKNOW_TYPE*/;
	private var _started : Dynamic/*UNKNOW_TYPE*/;
	private var _stopped : Dynamic/*UNKNOW_TYPE*/;
	private var _actualFrame : Dynamic/*UNKNOW_TYPE*/;
	private var _scaledUpdateSpeed : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, capacity:Float, scene:Scene, ?customEffect:Effect) : Void;
	function recycleParticle(particle:Particle) : Void;
	function getCapacity() : Float;
	function isAlive() : Bool;
	function isStarted() : Bool;
	function start() : Void;
	function stop() : Void;
	function _appendParticleVertex(index:Float, particle:Particle, offsetX:Float, offsetY:Float) : Void;
	private function _update(newParticles);
	private function _getEffect();
	function animate() : Void;
	function render() : Float;
	function dispose() : Void;
	function clone(name:String, newEmitter:Dynamic) : ParticleSystem;
	function serialize() : Dynamic;
	static function Parse(parsedParticleSystem:Dynamic, scene:Scene, rootUrl:String) : ParticleSystem;
}