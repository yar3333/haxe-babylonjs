package babylon;

extern class Scene implements IAnimatable
{
	private static var _FOGMODE_NONE : Dynamic/*UNKNOW_TYPE*/;
	private static var _FOGMODE_EXP : Dynamic/*UNKNOW_TYPE*/;
	private static var _FOGMODE_EXP2 : Dynamic/*UNKNOW_TYPE*/;
	private static var _FOGMODE_LINEAR : Dynamic/*UNKNOW_TYPE*/;
	static var MinDeltaTime : Float;
	static var MaxDeltaTime : Float;
	static var FOGMODE_NONE : Float;
	static var FOGMODE_EXP : Float;
	static var FOGMODE_EXP2 : Float;
	static var FOGMODE_LINEAR : Float;
	var autoClear : Bool;
	var clearColor : Dynamic;
	var ambientColor : Color3;
	var forceWireframe : Bool;
	var forcePointsCloud : Bool;
	var forceShowBoundingBoxes : Bool;
	var clipPlane : Plane;
	var animationsEnabled : Bool;
	var constantlyUpdateMeshUnderPointer : Bool;
	var useRightHandedSystem : Bool;
	var hoverCursor : String;
	var metadata : Dynamic;
	/**
	* An event triggered when the scene is disposed.
	* @type {BABYLON.Observable}
	*/
	var onDisposeObservable : Observable<Scene>;
	private var _onDisposeObserver : Dynamic/*UNKNOW_TYPE*/;
	var onDispose : Void->Void;
	/**
	* An event triggered before rendering the scene
	* @type {BABYLON.Observable}
	*/
	var onBeforeRenderObservable : Observable<Scene>;
	private var _onBeforeRenderObserver : Dynamic/*UNKNOW_TYPE*/;
	var beforeRender : Void->Void;
	/**
	* An event triggered after rendering the scene
	* @type {BABYLON.Observable}
	*/
	var onAfterRenderObservable : Observable<Scene>;
	private var _onAfterRenderObserver : Dynamic/*UNKNOW_TYPE*/;
	var afterRender : Void->Void;
	/**
	* An event triggered when the scene is ready
	* @type {BABYLON.Observable}
	*/
	var onReadyObservable : Observable<Scene>;
	/**
	* An event triggered before rendering a camera
	* @type {BABYLON.Observable}
	*/
	var onBeforeCameraRenderObservable : Observable<Camera>;
	private var _onBeforeCameraRenderObserver : Dynamic/*UNKNOW_TYPE*/;
	var beforeCameraRender : Void->Void;
	/**
	* An event triggered after rendering a camera
	* @type {BABYLON.Observable}
	*/
	var onAfterCameraRenderObservable : Observable<Camera>;
	private var _onAfterCameraRenderObserver : Dynamic/*UNKNOW_TYPE*/;
	var afterCameraRender : Void->Void;
	/**
	* An event triggered when a camera is created
	* @type {BABYLON.Observable}
	*/
	var onNewCameraAddedObservable : Observable<Camera>;
	/**
	* An event triggered when a camera is removed
	* @type {BABYLON.Observable}
	*/
	var onCameraRemovedObservable : Observable<Camera>;
	/**
	* An event triggered when a light is created
	* @type {BABYLON.Observable}
	*/
	var onNewLightAddedObservable : Observable<Light>;
	/**
	* An event triggered when a light is removed
	* @type {BABYLON.Observable}
	*/
	var onLightRemovedObservable : Observable<Light>;
	/**
	* An event triggered when a geometry is created
	* @type {BABYLON.Observable}
	*/
	var onNewGeometryAddedObservable : Observable<Geometry>;
	/**
	* An event triggered when a geometry is removed
	* @type {BABYLON.Observable}
	*/
	var onGeometryRemovedObservable : Observable<Geometry>;
	/**
	* An event triggered when a mesh is created
	* @type {BABYLON.Observable}
	*/
	var onNewMeshAddedObservable : Observable<AbstractMesh>;
	/**
	* An event triggered when a mesh is removed
	* @type {BABYLON.Observable}
	*/
	var onMeshRemovedObservable : Observable<AbstractMesh>;
	/**
	 * This Observable will be triggered for each stage of each renderingGroup of each rendered camera.
	 * The RenderinGroupInfo class contains all the information about the context in which the observable is called
	 * If you wish to register an Observer only for a given set of renderingGroup, use the mask with a combination of the renderingGroup index elevated to the power of two (1 for renderingGroup 0, 2 for renderingrOup1, 4 for 2 and 8 for 3)
	 */
	var onRenderingGroupObservable : Observable<RenderingGroupInfo>;
	var animations : Array<Animation>;
	var pointerDownPredicate : AbstractMesh->Bool;
	var pointerUpPredicate : AbstractMesh->Bool;
	var pointerMovePredicate : AbstractMesh->Bool;
	private var _onPointerMove : Dynamic/*UNKNOW_TYPE*/;
	private var _onPointerDown : Dynamic/*UNKNOW_TYPE*/;
	private var _onPointerUp : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * @deprecated Use onPointerObservable instead
	 */
	var onPointerMove : PointerEvent->PickingInfo->Void;
	/**
	 * @deprecated Use onPointerObservable instead
	 */
	var onPointerDown : PointerEvent->PickingInfo->Void;
	/**
	 * @deprecated Use onPointerObservable instead
	 */
	var onPointerUp : PointerEvent->PickingInfo->Void;
	/**
	 * @deprecated Use onPointerObservable instead
	 */
	var onPointerPick : PointerEvent->PickingInfo->Void;
	/**
	 * This observable event is triggered when any mouse event registered during Scene.attach() is called BEFORE the 3D engine to process anything (mesh/sprite picking for instance).
	 * You have the possibility to skip the 3D Engine process and the call to onPointerObservable by setting PointerInfoBase.skipOnPointerObservable to true
	 */
	var onPrePointerObservable : Observable<PointerInfoPre>;
	/**
	 * Observable event triggered each time an input event is received from the rendering canvas
	 */
	var onPointerObservable : Observable<PointerInfo>;
	var unTranslatedPointer : Vector2;
	var cameraToUseForPointers : Camera;
	private var _pointerX : Dynamic/*UNKNOW_TYPE*/;
	private var _pointerY : Dynamic/*UNKNOW_TYPE*/;
	private var _unTranslatedPointerX : Dynamic/*UNKNOW_TYPE*/;
	private var _unTranslatedPointerY : Dynamic/*UNKNOW_TYPE*/;
	private var _startingPointerPosition : Dynamic/*UNKNOW_TYPE*/;
	private var _startingPointerTime : Dynamic/*UNKNOW_TYPE*/;
	var _mirroredCameraPosition : Vector3;
	private var _onKeyDown : Dynamic/*UNKNOW_TYPE*/;
	private var _onKeyUp : Dynamic/*UNKNOW_TYPE*/;
	/**
	* is fog enabled on this scene.
	* @type {boolean}
	*/
	var fogEnabled : Bool;
	var fogMode : Float;
	var fogColor : Color3;
	var fogDensity : Float;
	var fogStart : Float;
	var fogEnd : Float;
	/**
	* is shadow enabled on this scene.
	* @type {boolean}
	*/
	var shadowsEnabled : Bool;
	/**
	* is light enabled on this scene.
	* @type {boolean}
	*/
	var lightsEnabled : Bool;
	/**
	* All of the lights added to this scene.
	* @see BABYLON.Light
	* @type {BABYLON.Light[]}
	*/
	var lights : Array<Light>;
	/**
	* All of the cameras added to this scene.
	* @see BABYLON.Camera
	* @type {BABYLON.Camera[]}
	*/
	var cameras : Array<Camera>;
	var activeCameras : Array<Camera>;
	var activeCamera : Camera;
	/**
	* All of the (abstract) meshes added to this scene.
	* @see BABYLON.AbstractMesh
	* @type {BABYLON.AbstractMesh[]}
	*/
	var meshes : Array<AbstractMesh>;
	private var _geometries : Dynamic/*UNKNOW_TYPE*/;
	var materials : Array<Material>;
	var multiMaterials : Array<MultiMaterial>;
	private var _defaultMaterial : Dynamic/*UNKNOW_TYPE*/;
	var defaultMaterial : StandardMaterial;
	var texturesEnabled : Bool;
	var textures : Array<BaseTexture>;
	var particlesEnabled : Bool;
	var particleSystems : Array<ParticleSystem>;
	var spritesEnabled : Bool;
	var spriteManagers : Array<SpriteManager>;
	var layers : Array<Layer>;
	var highlightLayers : Array<HighlightLayer>;
	var skeletonsEnabled : Bool;
	var skeletons : Array<Skeleton>;
	var lensFlaresEnabled : Bool;
	var lensFlareSystems : Array<LensFlareSystem>;
	var collisionsEnabled : Bool;
	private var _workerCollisions : Dynamic/*UNKNOW_TYPE*/;
	var collisionCoordinator : ICollisionCoordinator;
	var gravity : Vector3;
	var postProcessesEnabled : Bool;
	var postProcessManager : PostProcessManager;
	var postProcessRenderPipelineManager : PostProcessRenderPipelineManager;
	var renderTargetsEnabled : Bool;
	var dumpNextRenderTargets : Bool;
	var customRenderTargets : Array<RenderTargetTexture>;
	var useDelayedTextureLoading : Bool;
	var importedMeshesFiles : Array<String>;
	var probesEnabled : Bool;
	var reflectionProbes : Array<ReflectionProbe>;
	var database : Dynamic;
	/**
	 * This scene's action manager
	 * @type {BABYLON.ActionManager}
	*/
	var actionManager : ActionManager;
	var _actionManagers : Array<ActionManager>;
	private var _meshesForIntersections : Dynamic/*UNKNOW_TYPE*/;
	var proceduralTexturesEnabled : Bool;
	var _proceduralTextures : Array<ProceduralTexture>;
	var mainSoundTrack : SoundTrack;
	var soundTracks : Array<SoundTrack>;
	private var _audioEnabled : Dynamic/*UNKNOW_TYPE*/;
	private var _headphone : Dynamic/*UNKNOW_TYPE*/;
	var simplificationQueue : SimplificationQueue;
	private var _engine : Dynamic/*UNKNOW_TYPE*/;
	private var _totalMeshesCounter : Dynamic/*UNKNOW_TYPE*/;
	private var _totalLightsCounter : Dynamic/*UNKNOW_TYPE*/;
	private var _totalMaterialsCounter : Dynamic/*UNKNOW_TYPE*/;
	private var _totalTexturesCounter : Dynamic/*UNKNOW_TYPE*/;
	private var _totalVertices : Dynamic/*UNKNOW_TYPE*/;
	var _activeIndices : PerfCounter;
	var _activeParticles : PerfCounter;
	private var _lastFrameDuration : Dynamic/*UNKNOW_TYPE*/;
	private var _evaluateActiveMeshesDuration : Dynamic/*UNKNOW_TYPE*/;
	private var _renderTargetsDuration : Dynamic/*UNKNOW_TYPE*/;
	var _particlesDuration : PerfCounter;
	private var _renderDuration : Dynamic/*UNKNOW_TYPE*/;
	var _spritesDuration : PerfCounter;
	var _activeBones : PerfCounter;
	private var _animationRatio : Dynamic/*UNKNOW_TYPE*/;
	private var _animationStartDate : Dynamic/*UNKNOW_TYPE*/;
	var _cachedMaterial : Material;
	private var _renderId : Dynamic/*UNKNOW_TYPE*/;
	private var _executeWhenReadyTimeoutId : Dynamic/*UNKNOW_TYPE*/;
	private var _intermediateRendering : Dynamic/*UNKNOW_TYPE*/;
	var _toBeDisposed : SmartArray<IDisposable>;
	private var _pendingData : Dynamic/*UNKNOW_TYPE*/;
	private var _activeMeshes : Dynamic/*UNKNOW_TYPE*/;
	private var _processedMaterials : Dynamic/*UNKNOW_TYPE*/;
	private var _renderTargets : Dynamic/*UNKNOW_TYPE*/;
	var _activeParticleSystems : SmartArray<ParticleSystem>;
	private var _activeSkeletons : Dynamic/*UNKNOW_TYPE*/;
	private var _softwareSkinnedMeshes : Dynamic/*UNKNOW_TYPE*/;
	private var _renderingManager : Dynamic/*UNKNOW_TYPE*/;
	private var _physicsEngine : Dynamic/*UNKNOW_TYPE*/;
	var _activeAnimatables : Array<Animatable>;
	private var _transformMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _pickWithRayInverseMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _edgesRenderers : Dynamic/*UNKNOW_TYPE*/;
	private var _boundingBoxRenderer : Dynamic/*UNKNOW_TYPE*/;
	private var _outlineRenderer : Dynamic/*UNKNOW_TYPE*/;
	private var _viewMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _projectionMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _frustumPlanes : Dynamic/*UNKNOW_TYPE*/;
	private var _selectionOctree : Dynamic/*UNKNOW_TYPE*/;
	private var _pointerOverMesh : Dynamic/*UNKNOW_TYPE*/;
	private var _pointerOverSprite : Dynamic/*UNKNOW_TYPE*/;
	private var _debugLayer : Dynamic/*UNKNOW_TYPE*/;
	private var _depthRenderer : Dynamic/*UNKNOW_TYPE*/;
	private var _uniqueIdCounter : Dynamic/*UNKNOW_TYPE*/;
	private var _pickedDownMesh : Dynamic/*UNKNOW_TYPE*/;
	private var _pickedDownSprite : Dynamic/*UNKNOW_TYPE*/;
	private var _externalData : Dynamic/*UNKNOW_TYPE*/;
	private var _uid : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * @constructor
	 * @param {BABYLON.Engine} engine - the engine to be used to render this scene.
	 */
	function new(engine:Engine) : Void;
	var debugLayer : DebugLayer;
	var workerCollisions : Bool;
	var SelectionOctree : Octree<AbstractMesh>;
	/**
	 * The mesh that is currently under the pointer.
	 * @return {BABYLON.AbstractMesh} mesh under the pointer/mouse cursor or null if none.
	 */
	var meshUnderPointer : AbstractMesh;
	/**
	 * Current on-screen X position of the pointer
	 * @return {number} X position of the pointer
	 */
	var pointerX : Float;
	/**
	 * Current on-screen Y position of the pointer
	 * @return {number} Y position of the pointer
	 */
	var pointerY : Float;
	function getCachedMaterial() : Material;
	function getBoundingBoxRenderer() : BoundingBoxRenderer;
	function getOutlineRenderer() : OutlineRenderer;
	function getEngine() : Engine;
	function getTotalVertices() : Float;
	var totalVerticesPerfCounter : PerfCounter;
	function getActiveIndices() : Float;
	var totalActiveIndicesPerfCounter : PerfCounter;
	function getActiveParticles() : Float;
	var activeParticlesPerfCounter : PerfCounter;
	function getActiveBones() : Float;
	var activeBonesPerfCounter : PerfCounter;
	function getLastFrameDuration() : Float;
	var lastFramePerfCounter : PerfCounter;
	function getEvaluateActiveMeshesDuration() : Float;
	var evaluateActiveMeshesDurationPerfCounter : PerfCounter;
	function getActiveMeshes() : SmartArray<Mesh>;
	function getRenderTargetsDuration() : Float;
	function getRenderDuration() : Float;
	var renderDurationPerfCounter : PerfCounter;
	function getParticlesDuration() : Float;
	var particlesDurationPerfCounter : PerfCounter;
	function getSpritesDuration() : Float;
	var spriteDuractionPerfCounter : PerfCounter;
	function getAnimationRatio() : Float;
	function getRenderId() : Float;
	function incrementRenderId() : Void;
	private function _updatePointerPosition(evt);
	/**
	* Attach events to the canvas (To handle actionManagers triggers and raise onPointerMove, onPointerDown and onPointerUp
	* @param attachUp defines if you want to attach events to pointerup
	* @param attachDown defines if you want to attach events to pointerdown
	* @param attachMove defines if you want to attach events to pointermove
	*/
	function attachControl(?attachUp:Bool, ?attachDown:Bool, ?attachMove:Bool) : Void;
	function detachControl() : Void;
	function isReady() : Bool;
	function resetCachedMaterial() : Void;
	function registerBeforeRender(func:Void->Void) : Void;
	function unregisterBeforeRender(func:Void->Void) : Void;
	function registerAfterRender(func:Void->Void) : Void;
	function unregisterAfterRender(func:Void->Void) : Void;
	function _addPendingData(data:Dynamic) : Void;
	function _removePendingData(data:Dynamic) : Void;
	function getWaitingItemsCount() : Float;
	/**
	 * Registers a function to be executed when the scene is ready.
	 * @param {Function} func - the function to be executed.
	 */
	function executeWhenReady(func:Void->Void) : Void;
	function _checkIsReady() : Void;
	/**
	 * Will start the animation sequence of a given target
	 * @param target - the target
	 * @param {number} from - from which frame should animation start
	 * @param {number} to - till which frame should animation run.
	 * @param {boolean} [loop] - should the animation loop
	 * @param {number} [speedRatio] - the speed in which to run the animation
	 * @param {Function} [onAnimationEnd] function to be executed when the animation ended.
	 * @param {BABYLON.Animatable} [animatable] an animatable object. If not provided a new one will be created from the given params.
	 * @return {BABYLON.Animatable} the animatable object created for this animation
	 * @see BABYLON.Animatable
	 * @see http://doc.babylonjs.com/page.php?p=22081
	 */
	function beginAnimation(target:Dynamic, from:Float, to:Float, ?loop:Bool, ?speedRatio:Float, ?onAnimationEnd:Void->Void, ?animatable:Animatable) : Animatable;
	function beginDirectAnimation(target:Dynamic, animations:Array<Animation>, from:Float, to:Float, ?loop:Bool, ?speedRatio:Float, ?onAnimationEnd:Void->Void) : Animatable;
	function getAnimatableByTarget(target:Dynamic) : Animatable;
	var Animatables : Array<Animatable>;
	/**
	 * Will stop the animation of the given target
	 * @param target - the target
	 * @param animationName - the name of the animation to stop (all animations will be stopped is empty)
	 * @see beginAnimation
	 */
	function stopAnimation(target:Dynamic, ?animationName:String) : Void;
	private function _animate();
	function getViewMatrix() : Matrix;
	function getProjectionMatrix() : Matrix;
	function getTransformMatrix() : Matrix;
	function setTransformMatrix(view:Matrix, projection:Matrix) : Void;
	function addMesh(newMesh:AbstractMesh) : Void;
	function removeMesh(toRemove:AbstractMesh) : Float;
	function removeSkeleton(toRemove:Skeleton) : Float;
	function removeLight(toRemove:Light) : Float;
	function removeCamera(toRemove:Camera) : Float;
	function addLight(newLight:Light) : Void;
	function addCamera(newCamera:Camera) : Void;
	/**
	 * Switch active camera
	 * @param {Camera} newCamera - new active camera
	 * @param {boolean} attachControl - call attachControl for the new active camera (default: true)
	 */
	function switchActiveCamera(newCamera:Camera, ?attachControl:Bool) : Void;
	/**
	 * sets the active camera of the scene using its ID
	 * @param {string} id - the camera's ID
	 * @return {haxe.extern.EitherType<BABYLON.Camera, null>} the new active camera or null if none found.
	 * @see activeCamera
	 */
	function setActiveCameraByID(id:String) : Camera;
	/**
	 * sets the active camera of the scene using its name
	 * @param {string} name - the camera's name
	 * @return {haxe.extern.EitherType<BABYLON.Camera, null>} the new active camera or null if none found.
	 * @see activeCamera
	 */
	function setActiveCameraByName(name:String) : Camera;
	/**
	 * get a material using its id
	 * @param {string} the material's ID
	 * @return {haxe.extern.EitherType<BABYLON.Material, null>} the material or null if none found.
	 */
	function getMaterialByID(id:String) : Material;
	/**
	 * get a material using its name
	 * @param {string} the material's name
	 * @return {haxe.extern.EitherType<BABYLON.Material, null>} the material or null if none found.
	 */
	function getMaterialByName(name:String) : Material;
	function getLensFlareSystemByName(name:String) : LensFlareSystem;
	function getLensFlareSystemByID(id:String) : LensFlareSystem;
	function getCameraByID(id:String) : Camera;
	function getCameraByUniqueID(uniqueId:Float) : Camera;
	/**
	 * get a camera using its name
	 * @param {string} the camera's name
	 * @return {haxe.extern.EitherType<BABYLON.Camera, null>} the camera or null if none found.
	 */
	function getCameraByName(name:String) : Camera;
	/**
	 * get a bone using its id
	 * @param {string} the bone's id
	 * @return {haxe.extern.EitherType<BABYLON.Bone, null>} the bone or null if not found
	 */
	function getBoneByID(id:String) : Bone;
	/**
	* get a bone using its id
	* @param {string} the bone's name
	* @return {haxe.extern.EitherType<BABYLON.Bone, null>} the bone or null if not found
	*/
	function getBoneByName(name:String) : Bone;
	/**
	 * get a light node using its name
	 * @param {string} the light's name
	 * @return {haxe.extern.EitherType<BABYLON.Light, null>} the light or null if none found.
	 */
	function getLightByName(name:String) : Light;
	/**
	 * get a light node using its ID
	 * @param {string} the light's id
	 * @return {haxe.extern.EitherType<BABYLON.Light, null>} the light or null if none found.
	 */
	function getLightByID(id:String) : Light;
	/**
	 * get a light node using its scene-generated unique ID
	 * @param {number} the light's unique id
	 * @return {haxe.extern.EitherType<BABYLON.Light, null>} the light or null if none found.
	 */
	function getLightByUniqueID(uniqueId:Float) : Light;
	/**
	 * get a particle system by id
	 * @param id {number} the particle system id
	 * @return {haxe.extern.EitherType<BABYLON.ParticleSystem, null>} the corresponding system or null if none found.
	 */
	function getParticleSystemByID(id:String) : ParticleSystem;
	/**
	 * get a geometry using its ID
	 * @param {string} the geometry's id
	 * @return {haxe.extern.EitherType<BABYLON.Geometry, null>} the geometry or null if none found.
	 */
	function getGeometryByID(id:String) : Geometry;
	/**
	 * add a new geometry to this scene.
	 * @param {BABYLON.Geometry} geometry - the geometry to be added to the scene.
	 * @param {boolean} [force] - force addition, even if a geometry with this ID already exists
	 * @return {boolean} was the geometry added or not
	 */
	function pushGeometry(geometry:Geometry, ?force:Bool) : Bool;
	/**
	 * Removes an existing geometry
	 * @param {BABYLON.Geometry} geometry - the geometry to be removed from the scene.
	 * @return {boolean} was the geometry removed or not
	 */
	function removeGeometry(geometry:Geometry) : Bool;
	function getGeometries() : Array<Geometry>;
	/**
	 * Get the first added mesh found of a given ID
	 * @param {string} id - the id to search for
	 * @return {haxe.extern.EitherType<BABYLON.AbstractMesh, null>} the mesh found or null if not found at all.
	 */
	function getMeshByID(id:String) : AbstractMesh;
	function getMeshesByID(id:String) : Array<AbstractMesh>;
	/**
	 * Get a mesh with its auto-generated unique id
	 * @param {number} uniqueId - the unique id to search for
	 * @return {haxe.extern.EitherType<BABYLON.AbstractMesh, null>} the mesh found or null if not found at all.
	 */
	function getMeshByUniqueID(uniqueId:Float) : AbstractMesh;
	/**
	 * Get a the last added mesh found of a given ID
	 * @param {string} id - the id to search for
	 * @return {haxe.extern.EitherType<BABYLON.AbstractMesh, null>} the mesh found or null if not found at all.
	 */
	function getLastMeshByID(id:String) : AbstractMesh;
	/**
	 * Get a the last added node (Mesh, Camera, Light) found of a given ID
	 * @param {string} id - the id to search for
	 * @return {haxe.extern.EitherType<BABYLON.Node, null>} the node found or null if not found at all.
	 */
	function getLastEntryByID(id:String) : Node;
	function getNodeByID(id:String) : Node;
	function getNodeByName(name:String) : Node;
	function getMeshByName(name:String) : AbstractMesh;
	function getSoundByName(name:String) : Sound;
	function getLastSkeletonByID(id:String) : Skeleton;
	function getSkeletonById(id:String) : Skeleton;
	function getSkeletonByName(name:String) : Skeleton;
	function isActiveMesh(mesh:Mesh) : Bool;
	/**
	 * Return a unique id as a string which can serve as an identifier for the scene
	 */
	var uid : String;
	/**
	 * Add an externaly attached data from its key.
	 * This method call will fail and return false, if such key already exists.
	 * If you don't care and just want to get the data no matter what, use the more convenient getOrAddExternalDataWithFactory() method.
	 * @param key the unique key that identifies the data
	 * @param data the data object to associate to the key for this Engine instance
	 * @return true if no such key were already present and the data was added successfully, false otherwise
	 */
	function addExternalData<T>(key:String, data:T) : Bool;
	/**
	 * Get an externaly attached data from its key
	 * @param key the unique key that identifies the data
	 * @return the associated data, if present (can be null), or undefined if not present
	 */
	function getExternalData<T>(key:String) : T;
	/**
	 * Get an externaly attached data from its key, create it using a factory if it's not already present
	 * @param key the unique key that identifies the data
	 * @param factory the factory that will be called to create the instance if and only if it doesn't exists
	 * @return the associated data, can be null if the factory returned null.
	 */
	function getOrAddExternalDataWithFactory<T>(key:String, factory:String->T) : T;
	/**
	 * Remove an externaly attached data from the Engine instance
	 * @param key the unique key that identifies the data
	 * @return true if the data was successfully removed, false if it doesn't exist
	 */
	function removeExternalData(key:Dynamic) : Bool;
	private function _evaluateSubMesh(subMesh, mesh);
	function _isInIntermediateRendering() : Bool;
	private function _evaluateActiveMeshes();
	private function _activeMesh(sourceMesh, mesh);
	function updateTransformMatrix(?force:Bool) : Void;
	private function _renderForCamera(camera);
	private function _processSubCameras(camera);
	private function _checkIntersections();
	function render() : Void;
	private function _updateAudioParameters();
	var audioEnabled : Bool;
	private function _disableAudio();
	private function _enableAudio();
	var headphone : Bool;
	private function _switchAudioModeForHeadphones();
	private function _switchAudioModeForNormalSpeakers();
	function enableDepthRenderer() : DepthRenderer;
	function disableDepthRenderer() : Void;
	function freezeMaterials() : Void;
	function unfreezeMaterials() : Void;
	function dispose() : Void;
	function disposeSounds() : Void;
	function getWorldExtends() :
	{
		min : Vector3,
		max : Vector3
	};
	function createOrUpdateSelectionOctree(?maxCapacity:Float, ?maxDepth:Float) : Octree<AbstractMesh>;
	function createPickingRay(x:Float, y:Float, world:Matrix, camera:Camera, ?cameraViewSpace:Bool) : Ray;
	function createPickingRayInCameraSpace(x:Float, y:Float, camera:Camera) : Ray;
	private function _internalPick(rayFunction, predicate, ?fastCheck);
	private function _internalMultiPick(rayFunction, predicate);
	private function _internalPickSprites(ray, ?predicate, ?fastCheck, ?camera);
	function pick(x:Float, y:Float, ?predicate:AbstractMesh->Bool, ?fastCheck:Bool, ?camera:Camera) : PickingInfo;
	function pickSprite(x:Float, y:Float, ?predicate:Sprite->Bool, ?fastCheck:Bool, ?camera:Camera) : PickingInfo;
	function pickWithRay(ray:Ray, predicate:Mesh->Bool, ?fastCheck:Bool) : PickingInfo;
	function multiPick(x:Float, y:Float, ?predicate:AbstractMesh->Bool, ?camera:Camera) : Array<PickingInfo>;
	function multiPickWithRay(ray:Ray, predicate:Mesh->Bool) : Array<PickingInfo>;
	function setPointerOverMesh(mesh:AbstractMesh) : Void;
	function getPointerOverMesh() : AbstractMesh;
	function setPointerOverSprite(sprite:Sprite) : Void;
	function getPointerOverSprite() : Sprite;
	function getPhysicsEngine() : PhysicsEngine;
	/**
	 * Enables physics to the current scene
	 * @param {BABYLON.Vector3} [gravity] - the scene's gravity for the physics engine
	 * @param {BABYLON.IPhysicsEnginePlugin} [plugin] - The physics engine to be used. defaults to OimoJS.
	 * @return {boolean} was the physics engine initialized
	 */
	function enablePhysics(?gravity:Vector3, ?plugin:IPhysicsEnginePlugin) : Bool;
	function disablePhysicsEngine() : Void;
	function isPhysicsEnabled() : Bool;
	/**
	 *
	 * Sets the gravity of the physics engine (and NOT of the scene)
	 * @param {BABYLON.Vector3} [gravity] - the new gravity to be used
	 */
	function setGravity(gravity:Vector3) : Void;
	/**
	 * Legacy support, using the new API
	 * @Deprecated
	 */
	function createCompoundImpostor(parts:Dynamic, options:PhysicsImpostorParameters) : Dynamic;
	function deleteCompoundImpostor(compound:Dynamic) : Void;
	function createDefaultCameraOrLight() : Void;
	private function _getByTags(list, tagsQuery, ?forEach);
	function getMeshesByTags(tagsQuery:String, ?forEach:AbstractMesh->Void) : Array<Mesh>;
	function getCamerasByTags(tagsQuery:String, ?forEach:Camera->Void) : Array<Camera>;
	function getLightsByTags(tagsQuery:String, ?forEach:Light->Void) : Array<Light>;
	function getMaterialByTags(tagsQuery:String, ?forEach:Material->Void) : Array<Material>;
	/**
	 * Overrides the default sort function applied in the renderging group to prepare the meshes.
	 * This allowed control for front to back rendering or reversly depending of the special needs.
	 *
	 * @param renderingGroupId The rendering group id corresponding to its index
	 * @param opaqueSortCompareFn The opaque queue comparison function use to sort.
	 * @param alphaTestSortCompareFn The alpha test queue comparison function use to sort.
	 * @param transparentSortCompareFn The transparent queue comparison function use to sort.
	 */
	function setRenderingOrder(renderingGroupId:Float, ?opaqueSortCompareFn:SubMesh->SubMesh->Float, ?alphaTestSortCompareFn:SubMesh->SubMesh->Float, ?transparentSortCompareFn:SubMesh->SubMesh->Float) : Void;
	/**
	 * Specifies whether or not the stencil and depth buffer are cleared between two rendering groups.
	 *
	 * @param renderingGroupId The rendering group id corresponding to its index
	 * @param autoClearDepthStencil Automatically clears depth and stencil between groups if true.
	 */
	function setRenderingAutoClearDepthStencil(renderingGroupId:Float, autoClearDepthStencil:Bool) : Void;
}