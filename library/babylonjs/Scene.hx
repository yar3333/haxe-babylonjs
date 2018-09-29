package babylonjs;

/**
 * Represents a scene to be rendered by the engine.
 * @see http://doc.babylonjs.com/features/scene
 */
@:native("BABYLON.Scene")
extern class Scene
	implements IAnimatable
{
	private static var _FOGMODE_NONE : Dynamic;
	private static var _FOGMODE_EXP : Dynamic;
	private static var _FOGMODE_EXP2 : Dynamic;
	private static var _FOGMODE_LINEAR : Dynamic;
	private static var _uniqueIdCounter : Dynamic;
	/**
	 * Gets or sets the minimum deltatime when deterministic lock step is enabled
	 * @see http://doc.babylonjs.com/babylon101/animations#deterministic-lockstep
	 */
	static var MinDeltaTime : Float;
	/**
	 * Gets or sets the maximum deltatime when deterministic lock step is enabled
	 * @see http://doc.babylonjs.com/babylon101/animations#deterministic-lockstep
	 */
	static var MaxDeltaTime : Float;
	/**
	 * The fog is deactivated 
	 */
	static var FOGMODE_NONE(default, null) : Float;
	/**
	 * The fog density is following an exponential function 
	 */
	static var FOGMODE_EXP(default, null) : Float;
	/**
	 * The fog density is following an exponential function faster than FOGMODE_EXP 
	 */
	static var FOGMODE_EXP2(default, null) : Float;
	/**
	 * The fog density is following a linear function. 
	 */
	static var FOGMODE_LINEAR(default, null) : Float;
	/**
	 * Gets or sets a boolean that indicates if the scene must clear the render buffer before rendering a frame
	 */
	var autoClear : Bool;
	/**
	 * Gets or sets a boolean that indicates if the scene must clear the depth and stencil buffers before rendering a frame
	 */
	var autoClearDepthAndStencil : Bool;
	/**
	 * Defines the color used to clear the render buffer (Default is (0.2, 0.2, 0.3, 1.0))
	 */
	var clearColor : Color4;
	/**
	 * Defines the color used to simulate the ambient color (Default is (0, 0, 0))
	 */
	var ambientColor : Color3;
	/**
	 * @hidden 
	 */
	var _environmentBRDFTexture : BaseTexture;
	/**
	 * @hidden 
	 */
	private var _environmentTexture : BaseTexture;
	/**
	 * Texture used in all pbr material as the reflection texture.
	 * As in the majority of the scene they are the same (exception for multi room and so on),
	 * this is easier to reference from here than from all the materials.
	 * Texture used in all pbr material as the reflection texture.
	 * As in the majority of the scene they are the same (exception for multi room and so on),
	 * this is easier to set here than in all the materials.
	 */
	var environmentTexture : BaseTexture;
	/**
	 * @hidden 
	 */
	private var _imageProcessingConfiguration : ImageProcessingConfiguration;
	/**
	 * Default image processing configuration used either in the rendering
	 * Forward main pass or through the imageProcessingPostProcess if present.
	 * As in the majority of the scene they are the same (exception for multi camera),
	 * this is easier to reference from here than from all the materials and post process.
	 * 
	 * No setter as we it is a shared configuration, you can set the values instead.
	 */
	var imageProcessingConfiguration(default, null) : ImageProcessingConfiguration;
	private var _forceWireframe : Dynamic;
	/**
	 * Gets or sets a boolean indicating if all rendering must be done in wireframe
	 */
	var forceWireframe : Bool;
	private var _forcePointsCloud : Dynamic;
	/**
	 * Gets or sets a boolean indicating if all rendering must be done in point cloud
	 */
	var forcePointsCloud : Bool;
	/**
	 * Gets or sets a boolean indicating if all bounding boxes must be rendered
	 */
	var forceShowBoundingBoxes : Bool;
	/**
	 * Gets or sets the active clipplane
	 */
	var clipPlane : Null<Plane>;
	/**
	 * Gets or sets a boolean indicating if animations are enabled
	 */
	var animationsEnabled : Bool;
	private var _animationPropertiesOverride : Dynamic;
	/**
	 * Gets or sets the animation properties override
	 */
	var animationPropertiesOverride : Null<AnimationPropertiesOverride>;
	/**
	 * Gets or sets a boolean indicating if a constant deltatime has to be used
	 * This is mostly useful for testing purposes when you do not want the animations to scale with the framerate
	 */
	var useConstantAnimationDeltaTime : Bool;
	/**
	 * Gets or sets a boolean indicating if the scene must keep the meshUnderPointer property updated
	 * Please note that it requires to run a ray cast through the scene on every frame
	 */
	var constantlyUpdateMeshUnderPointer : Bool;
	/**
	 * Defines the HTML cursor to use when hovering over interactive elements
	 */
	var hoverCursor : String;
	/**
	 * Defines the HTML default cursor to use (empty by default)
	 */
	var defaultCursor : String;
	/**
	 * This is used to call preventDefault() on pointer down
	 * in order to block unwanted artifacts like system double clicks
	 */
	var preventDefaultOnPointerDown : Bool;
	/**
	 * Gets or sets user defined metadata
	 */
	var metadata : Dynamic;
	/**
	 * Gets the name of the plugin used to load this scene (null by default)
	 */
	var loadingPluginName : String;
	/**
	 * Use this array to add regular expressions used to disable offline support for specific urls
	 */
	var disableOfflineSupportExceptionRules : Array<js.RegExp>;
	private var _spritePredicate : Dynamic;
	/**
	 * An event triggered when the scene is disposed.
	 */
	var onDisposeObservable : Observable<Scene>;
	private var _onDisposeObserver : Dynamic;
	/**
	 * Sets a function to be executed when this scene is disposed. 
	 */
	var onDispose : Void->Void;
	/**
	 * An event triggered before rendering the scene (right after animations and physics)
	 */
	var onBeforeRenderObservable : Observable<Scene>;
	private var _onBeforeRenderObserver : Dynamic;
	/**
	 * Sets a function to be executed before rendering this scene 
	 */
	var beforeRender : Null<Void->Void>;
	/**
	 * An event triggered after rendering the scene
	 */
	var onAfterRenderObservable : Observable<Scene>;
	private var _onAfterRenderObserver : Dynamic;
	/**
	 * Sets a function to be executed after rendering this scene 
	 */
	var afterRender : Null<Void->Void>;
	/**
	 * An event triggered before animating the scene
	 */
	var onBeforeAnimationsObservable : Observable<Scene>;
	/**
	 * An event triggered after animations processing
	 */
	var onAfterAnimationsObservable : Observable<Scene>;
	/**
	 * An event triggered before draw calls are ready to be sent
	 */
	var onBeforeDrawPhaseObservable : Observable<Scene>;
	/**
	 * An event triggered after draw calls have been sent
	 */
	var onAfterDrawPhaseObservable : Observable<Scene>;
	/**
	 * An event triggered when physic simulation is about to be run
	 */
	var onBeforePhysicsObservable : Observable<Scene>;
	/**
	 * An event triggered when physic simulation has been done
	 */
	var onAfterPhysicsObservable : Observable<Scene>;
	/**
	 * An event triggered when the scene is ready
	 */
	var onReadyObservable : Observable<Scene>;
	/**
	 * An event triggered before rendering a camera
	 */
	var onBeforeCameraRenderObservable : Observable<Camera>;
	private var _onBeforeCameraRenderObserver : Dynamic;
	/**
	 * Sets a function to be executed before rendering a camera
	 */
	var beforeCameraRender : Void->Void;
	/**
	 * An event triggered after rendering a camera
	 */
	var onAfterCameraRenderObservable : Observable<Camera>;
	private var _onAfterCameraRenderObserver : Dynamic;
	/**
	 * Sets a function to be executed after rendering a camera
	 */
	var afterCameraRender : Void->Void;
	/**
	 * An event triggered when active meshes evaluation is about to start
	 */
	var onBeforeActiveMeshesEvaluationObservable : Observable<Scene>;
	/**
	 * An event triggered when active meshes evaluation is done
	 */
	var onAfterActiveMeshesEvaluationObservable : Observable<Scene>;
	/**
	 * An event triggered when particles rendering is about to start
	 * Note: This event can be trigger more than once per frame (because particles can be rendered by render target textures as well)
	 */
	var onBeforeParticlesRenderingObservable : Observable<Scene>;
	/**
	 * An event triggered when particles rendering is done
	 * Note: This event can be trigger more than once per frame (because particles can be rendered by render target textures as well)
	 */
	var onAfterParticlesRenderingObservable : Observable<Scene>;
	/**
	 * An event triggered when sprites rendering is about to start
	 * Note: This event can be trigger more than once per frame (because sprites can be rendered by render target textures as well)
	 */
	var onBeforeSpritesRenderingObservable : Observable<Scene>;
	/**
	 * An event triggered when sprites rendering is done
	 * Note: This event can be trigger more than once per frame (because sprites can be rendered by render target textures as well)
	 */
	var onAfterSpritesRenderingObservable : Observable<Scene>;
	/**
	 * An event triggered when SceneLoader.Append or SceneLoader.Load or SceneLoader.ImportMesh were successfully executed
	 */
	var onDataLoadedObservable : Observable<Scene>;
	/**
	 * An event triggered when a camera is created
	 */
	var onNewCameraAddedObservable : Observable<Camera>;
	/**
	 * An event triggered when a camera is removed
	 */
	var onCameraRemovedObservable : Observable<Camera>;
	/**
	 * An event triggered when a light is created
	 */
	var onNewLightAddedObservable : Observable<Light>;
	/**
	 * An event triggered when a light is removed
	 */
	var onLightRemovedObservable : Observable<Light>;
	/**
	 * An event triggered when a geometry is created
	 */
	var onNewGeometryAddedObservable : Observable<Geometry>;
	/**
	 * An event triggered when a geometry is removed
	 */
	var onGeometryRemovedObservable : Observable<Geometry>;
	/**
	 * An event triggered when a transform node is created
	 */
	var onNewTransformNodeAddedObservable : Observable<TransformNode>;
	/**
	 * An event triggered when a transform node is removed
	 */
	var onTransformNodeRemovedObservable : Observable<TransformNode>;
	/**
	 * An event triggered when a mesh is created
	 */
	var onNewMeshAddedObservable : Observable<AbstractMesh>;
	/**
	 * An event triggered when a mesh is removed
	 */
	var onMeshRemovedObservable : Observable<AbstractMesh>;
	/**
	 * An event triggered when render targets are about to be rendered
	 * Can happen multiple times per frame.
	 */
	var onBeforeRenderTargetsRenderObservable : Observable<Scene>;
	/**
	 * An event triggered when render targets were rendered.
	 * Can happen multiple times per frame.
	 */
	var onAfterRenderTargetsRenderObservable : Observable<Scene>;
	/**
	 * An event triggered before calculating deterministic simulation step
	 */
	var onBeforeStepObservable : Observable<Scene>;
	/**
	 * An event triggered after calculating deterministic simulation step
	 */
	var onAfterStepObservable : Observable<Scene>;
	/**
	 * This Observable will be triggered for each stage of each renderingGroup of each rendered camera.
	 * The RenderinGroupInfo class contains all the information about the context in which the observable is called
	 * If you wish to register an Observer only for a given set of renderingGroup, use the mask with a combination of the renderingGroup index elevated to the power of two (1 for renderingGroup 0, 2 for renderingrOup1, 4 for 2 and 8 for 3)
	 */
	var onRenderingGroupObservable : Observable<RenderingGroupInfo>;
	/**
	 * Gets a list of Animations associated with the scene
	 */
	var animations : Array<Animation>;
	private var _registeredForLateAnimationBindings : Dynamic;
	/**
	 * Gets or sets a predicate used to select candidate meshes for a pointer down event
	 */
	var pointerDownPredicate : AbstractMesh->Bool;
	/**
	 * Gets or sets a predicate used to select candidate meshes for a pointer up event
	 */
	var pointerUpPredicate : AbstractMesh->Bool;
	/**
	 * Gets or sets a predicate used to select candidate meshes for a pointer move event
	 */
	var pointerMovePredicate : AbstractMesh->Bool;
	private var _onPointerMove : Dynamic;
	private var _onPointerDown : Dynamic;
	private var _onPointerUp : Dynamic;
	/**
	 * Deprecated. Use onPointerObservable instead 
	 */
	var onPointerMove : js.html.PointerEvent->PickingInfo->PointerEventTypes->Void;
	/**
	 * Deprecated. Use onPointerObservable instead 
	 */
	var onPointerDown : js.html.PointerEvent->PickingInfo->PointerEventTypes->Void;
	/**
	 * Deprecated. Use onPointerObservable instead 
	 */
	var onPointerUp : js.html.PointerEvent->Null<PickingInfo>->PointerEventTypes->Void;
	/**
	 * Deprecated. Use onPointerObservable instead 
	 */
	var onPointerPick : js.html.PointerEvent->PickingInfo->Void;
	private var _gamepadManager : Dynamic;
	/**
	 * Gets the gamepad manager associated with the scene
	 * @see http://doc.babylonjs.com/how_to/how_to_use_gamepads
	 */
	var gamepadManager(default, null) : GamepadManager;
	/**
	 * This observable event is triggered when any ponter event is triggered. It is registered during Scene.attachControl() and it is called BEFORE the 3D engine process anything (mesh/sprite picking for instance).
	 * You have the possibility to skip the process and the call to onPointerObservable by setting PointerInfoPre.skipOnPointerObservable to true
	 */
	var onPrePointerObservable : Observable<PointerInfoPre>;
	/**
	 * Observable event triggered each time an input event is received from the rendering canvas
	 */
	var onPointerObservable : Observable<PointerInfo>;
	/**
	 * Gets the pointer coordinates without any translation (ie. straight out of the pointer event)
	 */
	var unTranslatedPointer(default, null) : Vector2;
	/**
	 * The distance in pixel that you have to move to prevent some events 
	 */
	static var DragMovementThreshold : Float;
	/**
	 * Time in milliseconds to wait to raise long press events if button is still pressed 
	 */
	static var LongPressDelay : Float;
	/**
	 * Time in milliseconds with two consecutive clicks will be considered as a double click 
	 */
	static var DoubleClickDelay : Float;
	/**
	 * If you need to check double click without raising a single click at first click, enable this flag 
	 */
	static var ExclusiveDoubleClickMode : Bool;
	private var _initClickEvent : Dynamic;
	private var _initActionManager : Dynamic;
	private var _delayedSimpleClick : Dynamic;
	private var _delayedSimpleClickTimeout : Dynamic;
	private var _previousDelayedSimpleClickTimeout : Dynamic;
	private var _meshPickProceed : Dynamic;
	private var _previousButtonPressed : Dynamic;
	private var _currentPickResult : Dynamic;
	private var _previousPickResult : Dynamic;
	private var _totalPointersPressed : Dynamic;
	private var _doubleClickOccured : Dynamic;
	/**
	 * Define this parameter if you are using multiple cameras and you want to specify which one should be used for pointer position 
	 */
	var cameraToUseForPointers : Null<Camera>;
	private var _pointerX : Dynamic;
	private var _pointerY : Dynamic;
	private var _unTranslatedPointerX : Dynamic;
	private var _unTranslatedPointerY : Dynamic;
	private var _startingPointerPosition : Dynamic;
	private var _previousStartingPointerPosition : Dynamic;
	private var _startingPointerTime : Dynamic;
	private var _previousStartingPointerTime : Dynamic;
	private var _pointerCaptures : Dynamic;
	private var _timeAccumulator : Dynamic;
	private var _currentStepId : Dynamic;
	private var _currentInternalStep : Dynamic;
	/**
	 * @hidden 
	 */
	var _mirroredCameraPosition : Null<Vector3>;
	/**
	 * This observable event is triggered when any keyboard event si raised and registered during Scene.attachControl()
	 * You have the possibility to skip the process and the call to onKeyboardObservable by setting KeyboardInfoPre.skipOnPointerObservable to true
	 */
	var onPreKeyboardObservable : Observable<KeyboardInfoPre>;
	/**
	 * Observable event triggered each time an keyboard event is received from the hosting window
	 */
	var onKeyboardObservable : Observable<KeyboardInfo>;
	private var _onKeyDown : Dynamic;
	private var _onKeyUp : Dynamic;
	private var _onCanvasFocusObserver : Dynamic;
	private var _onCanvasBlurObserver : Dynamic;
	private var _useRightHandedSystem : Dynamic;
	/**
	 * Gets or sets a boolean indicating if the scene must use right-handed coordinates system
	 */
	var useRightHandedSystem : Bool;
	private var _fogEnabled : Dynamic;
	/**
	 * Gets or sets a boolean indicating if fog is enabled on this scene
	 * @see http://doc.babylonjs.com/babylon101/environment#fog
	 */
	var fogEnabled : Bool;
	private var _fogMode : Dynamic;
	/**
	 * Gets or sets the fog mode to use
	 * @see http://doc.babylonjs.com/babylon101/environment#fog
	 */
	var fogMode : Float;
	/**
	 * Gets or sets the fog color to use
	 * @see http://doc.babylonjs.com/babylon101/environment#fog
	 */
	var fogColor : Color3;
	/**
	 * Gets or sets the fog density to use
	 * @see http://doc.babylonjs.com/babylon101/environment#fog
	 */
	var fogDensity : Float;
	/**
	 * Gets or sets the fog start distance to use
	 * @see http://doc.babylonjs.com/babylon101/environment#fog
	 */
	var fogStart : Float;
	/**
	 * Gets or sets the fog end distance to use
	 * @see http://doc.babylonjs.com/babylon101/environment#fog
	 */
	var fogEnd : Float;
	private var _shadowsEnabled : Dynamic;
	/**
	 * Gets or sets a boolean indicating if shadows are enabled on this scene
	 */
	var shadowsEnabled : Bool;
	private var _lightsEnabled : Dynamic;
	/**
	 * Gets or sets a boolean indicating if lights are enabled on this scene
	 */
	var lightsEnabled : Bool;
	/**
	 * All of the lights added to this scene
	 * @see http://doc.babylonjs.com/babylon101/lights
	 */
	var lights : Array<Light>;
	/**
	 * All of the cameras added to this scene.
	 * @see http://doc.babylonjs.com/babylon101/cameras
	 */
	var cameras : Array<Camera>;
	/**
	 * All of the active cameras added to this scene. 
	 */
	var activeCameras : Array<Camera>;
	/**
	 * The current active camera 
	 */
	var activeCamera : Null<Camera>;
	/**
	 * All of the tranform nodes added to this scene
	 * @see http://doc.babylonjs.com/how_to/transformnode
	 */
	var transformNodes : Array<TransformNode>;
	/**
	 * All of the (abstract) meshes added to this scene
	 */
	var meshes : Array<AbstractMesh>;
	/**
	 * All of the animation groups added to this scene
	 * @see http://doc.babylonjs.com/how_to/group
	 */
	var animationGroups : Array<AnimationGroup>;
	private var _geometries : Dynamic;
	/**
	 * All of the materials added to this scene
	 * @see http://doc.babylonjs.com/babylon101/materials
	 */
	var materials : Array<Material>;
	/**
	 * All of the multi-materials added to this scene
	 * @see http://doc.babylonjs.com/how_to/multi_materials
	 */
	var multiMaterials : Array<MultiMaterial>;
	private var _defaultMaterial : Dynamic;
	/**
	 * The default material used on meshes when no material is affected 
	 * The default material used on meshes when no material is affected 
	 */
	var defaultMaterial : Material;
	private var _texturesEnabled : Dynamic;
	/**
	 * Gets or sets a boolean indicating if textures are enabled on this scene
	 */
	var texturesEnabled : Bool;
	/**
	 * All of the textures added to this scene
	 */
	var textures : Array<BaseTexture>;
	/**
	 * Gets or sets a boolean indicating if particles are enabled on this scene
	 */
	var particlesEnabled : Bool;
	/**
	 * All of the particle systems added to this scene
	 * @see http://doc.babylonjs.com/babylon101/particles
	 */
	var particleSystems : Array<IParticleSystem>;
	/**
	 * Gets or sets a boolean indicating if sprites are enabled on this scene
	 */
	var spritesEnabled : Bool;
	/**
	 * All of the sprite managers added to this scene
	 * @see http://doc.babylonjs.com/babylon101/sprites
	 */
	var spriteManagers : Array<SpriteManager>;
	/**
	 * The list of layers (background and foreground) of the scene
	 */
	var layers : Array<Layer>;
	/**
	 * The list of effect layers (highlights/glow) added to the scene
	 * @see http://doc.babylonjs.com/how_to/highlight_layer
	 * @see http://doc.babylonjs.com/how_to/glow_layer
	 */
	var effectLayers : Array<EffectLayer>;
	private var _skeletonsEnabled : Dynamic;
	/**
	 * Gets or sets a boolean indicating if skeletons are enabled on this scene
	 */
	var skeletonsEnabled : Bool;
	/**
	 * The list of skeletons added to the scene
	 * @see http://doc.babylonjs.com/how_to/how_to_use_bones_and_skeletons
	 */
	var skeletons : Array<Skeleton>;
	/**
	 * The list of morph target managers added to the scene
	 * @see http://doc.babylonjs.com/how_to/how_to_dynamically_morph_a_mesh
	 */
	var morphTargetManagers : Array<MorphTargetManager>;
	/**
	 * Gets or sets a boolean indicating if lens flares are enabled on this scene
	 */
	var lensFlaresEnabled : Bool;
	/**
	 * The list of lens flare system added to the scene
	 * @see http://doc.babylonjs.com/how_to/how_to_use_lens_flares
	 */
	var lensFlareSystems : Array<LensFlareSystem>;
	/**
	 * Gets or sets a boolean indicating if collisions are enabled on this scene
	 * @see http://doc.babylonjs.com/babylon101/cameras,_mesh_collisions_and_gravity
	 */
	var collisionsEnabled : Bool;
	private var _workerCollisions : Dynamic;
	/**
	 * @hidden 
	 */
	var collisionCoordinator : ICollisionCoordinator;
	/**
	 * Defines the gravity applied to this scene (used only for collisions)
	 * @see http://doc.babylonjs.com/babylon101/cameras,_mesh_collisions_and_gravity
	 */
	var gravity : Vector3;
	/**
	 * Gets or sets a boolean indicating if postprocesses are enabled on this scene
	 */
	var postProcessesEnabled : Bool;
	/**
	 * The list of postprocesses added to the scene
	 */
	var postProcesses : Array<PostProcess>;
	/**
	 * Gets the current postprocess manager
	 */
	var postProcessManager : PostProcessManager;
	private var _postProcessRenderPipelineManager : Dynamic;
	/**
	 * Gets the postprocess render pipeline manager
	 * @see http://doc.babylonjs.com/how_to/how_to_use_postprocessrenderpipeline
	 * @see http://doc.babylonjs.com/how_to/using_default_rendering_pipeline
	 */
	var postProcessRenderPipelineManager(default, null) : PostProcessRenderPipelineManager;
	/**
	 * Gets or sets a boolean indicating if render targets are enabled on this scene
	 */
	var renderTargetsEnabled : Bool;
	/**
	 * Gets or sets a boolean indicating if next render targets must be dumped as image for debugging purposes
	 * We recommend not using it and instead rely on Spector.js: http://spector.babylonjs.com
	 */
	var dumpNextRenderTargets : Bool;
	/**
	 * The list of user defined render targets added to the scene
	 */
	var customRenderTargets : Array<RenderTargetTexture>;
	/**
	 * Defines if texture loading must be delayed
	 * If true, textures will only be loaded when they need to be rendered
	 */
	var useDelayedTextureLoading : Bool;
	/**
	 * Gets the list of meshes imported to the scene through SceneLoader
	 */
	var importedMeshesFiles : Array<String>;
	/**
	 * Gets or sets a boolean indicating if probes are enabled on this scene
	 */
	var probesEnabled : Bool;
	/**
	 * The list of reflection probes added to the scene
	 * @see http://doc.babylonjs.com/how_to/how_to_use_reflection_probes
	 */
	var reflectionProbes : Array<ReflectionProbe>;
	/**
	 * @hidden
	 */
	var database : Database;
	/**
	 * Gets or sets the action manager associated with the scene
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions
	 */
	var actionManager : ActionManager;
	/**
	 * @hidden 
	 */
	var _actionManagers : Array<ActionManager>;
	private var _meshesForIntersections : Dynamic;
	/**
	 * Gets or sets a boolean indicating if procedural textures are enabled on this scene
	 */
	var proceduralTexturesEnabled : Bool;
	/**
	 * The list of procedural textures added to the scene
	 * @see http://doc.babylonjs.com/how_to/how_to_use_procedural_textures
	 */
	var proceduralTextures : Array<ProceduralTexture>;
	private var _mainSoundTrack : Dynamic;
	/**
	 * The list of sound tracks added to the scene
	 * @see http://doc.babylonjs.com/how_to/playing_sounds_and_music
	 */
	var soundTracks : Array<SoundTrack>;
	private var _audioEnabled : Dynamic;
	private var _headphone : Dynamic;
	/**
	 * Gets the main soundtrack associated with the scene
	 */
	var mainSoundTrack(default, null) : SoundTrack;
	/**
	 * Gets or sets the VRExperienceHelper attached to the scene
	 * @see http://doc.babylonjs.com/how_to/webvr_helper
	 * @ignorenaming
	 */
	var VRHelper : VRExperienceHelper;
	/**
	 * Gets or sets the simplification queue attached to the scene
	 * @see http://doc.babylonjs.com/how_to/in-browser_mesh_simplification
	 */
	var simplificationQueue : SimplificationQueue;
	private var _engine : Dynamic;
	private var _totalVertices : Dynamic;
	/**
	 * @hidden 
	 */
	var _activeIndices : PerfCounter;
	/**
	 * @hidden 
	 */
	var _activeParticles : PerfCounter;
	/**
	 * @hidden 
	 */
	var _activeBones : PerfCounter;
	private var _animationRatio : Dynamic;
	private var _animationTimeLast : Dynamic;
	private var _animationTime : Dynamic;
	/**
	 * Gets or sets a general scale for animation speed
	 * @see https://www.babylonjs-playground.com/#IBU2W7#3
	 */
	var animationTimeScale : Float;
	/**
	 * @hidden 
	 */
	var _cachedMaterial : Null<Material>;
	/**
	 * @hidden 
	 */
	var _cachedEffect : Null<Effect>;
	/**
	 * @hidden 
	 */
	var _cachedVisibility : Null<Float>;
	private var _renderId : Dynamic;
	private var _executeWhenReadyTimeoutId : Dynamic;
	private var _intermediateRendering : Dynamic;
	private var _viewUpdateFlag : Dynamic;
	private var _projectionUpdateFlag : Dynamic;
	private var _alternateViewUpdateFlag : Dynamic;
	private var _alternateProjectionUpdateFlag : Dynamic;
	/**
	 * @hidden 
	 */
	var _toBeDisposed : SmartArray<Null<IDisposable>>;
	private var _activeRequests : Dynamic;
	private var _pendingData : Dynamic;
	private var _isDisposed : Dynamic;
	/**
	 * Gets or sets a boolean indicating that all submeshes of active meshes must be rendered
	 * Use this boolean to avoid computing frustum clipping on submeshes (This could help when you are CPU bound)
	 */
	var dispatchAllSubMeshesOfActiveMeshes : Bool;
	private var _activeMeshes : Dynamic;
	private var _processedMaterials : Dynamic;
	private var _renderTargets : Dynamic;
	/**
	 * @hidden 
	 */
	var _activeParticleSystems : SmartArray<IParticleSystem>;
	private var _activeSkeletons : Dynamic;
	private var _softwareSkinnedMeshes : Dynamic;
	private var _renderingManager : Dynamic;
	private var _physicsEngine : Dynamic;
	/**
	 * @hidden 
	 */
	var _activeAnimatables : Array<Animatable>;
	private var _transformMatrix : Dynamic;
	private var _sceneUbo : Dynamic;
	private var _alternateSceneUbo : Dynamic;
	private var _pickWithRayInverseMatrix : Dynamic;
	private var _boundingBoxRenderer : Dynamic;
	private var _outlineRenderer : Dynamic;
	private var _viewMatrix : Dynamic;
	private var _projectionMatrix : Dynamic;
	private var _alternateViewMatrix : Dynamic;
	private var _alternateProjectionMatrix : Dynamic;
	private var _alternateTransformMatrix : Dynamic;
	private var _useAlternateCameraConfiguration : Dynamic;
	private var _alternateRendering : Dynamic;
	/**
	 * @hidden 
	 */
	var _forcedViewPosition : Null<Vector3>;
	/**
	 * @hidden 
	 */
	var _isAlternateRenderingEnabled(default, null) : Bool;
	private var _frustumPlanes : Dynamic;
	/**
	 * Gets the list of frustum planes (built from the active camera)
	 */
	var frustumPlanes(default, null) : Array<Plane>;
	/**
	 * Gets or sets a boolean indicating if lights must be sorted by priority (off by default)
	 * This is useful if there are more lights that the maximum simulteanous authorized
	 */
	var requireLightSorting : Bool;
	private var _selectionOctree : Dynamic;
	private var _pointerOverMesh : Dynamic;
	private var _pointerOverSprite : Dynamic;
	private var _debugLayer : Dynamic;
	private var _depthRenderer : Dynamic;
	private var _geometryBufferRenderer : Dynamic;
	/**
	 * Gets the current geometry buffer associated to the scene.
	 * Sets the current geometry buffer for the scene.
	 */
	var geometryBufferRenderer : Null<GeometryBufferRenderer>;
	private var _pickedDownMesh : Dynamic;
	private var _pickedUpMesh : Dynamic;
	private var _pickedDownSprite : Dynamic;
	private var _externalData : Dynamic;
	private var _uid : Dynamic;
	/**
	 * Gets the debug layer associated with the scene
	 * @see http://doc.babylonjs.com/features/playground_debuglayer
	 */
	var debugLayer(default, null) : DebugLayer;
	/**
	 * Gets a boolean indicating if collisions are processed on a web worker
	 * @see http://doc.babylonjs.com/babylon101/cameras,_mesh_collisions_and_gravity#web-worker-based-collision-system-since-21
	 */
	var workerCollisions : Bool;
	/**
	 * Gets the octree used to boost mesh selection (picking)
	 * @see http://doc.babylonjs.com/how_to/optimizing_your_scene_with_octrees
	 */
	var selectionOctree(default, null) : Octree<AbstractMesh>;
	/**
	 * Gets the mesh that is currently under the pointer
	 */
	var meshUnderPointer(default, null) : Null<AbstractMesh>;
	/**
	 * Gets the current on-screen X position of the pointer
	 */
	var pointerX(default, null) : Float;
	/**
	 * Gets the current on-screen Y position of the pointer
	 */
	var pointerY(default, null) : Float;
	/**
	 * Gets the performance counter for total vertices
	 * @see http://doc.babylonjs.com/how_to/optimizing_your_scene#instrumentation
	 */
	var totalVerticesPerfCounter(default, null) : PerfCounter;
	/**
	 * Gets the performance counter for active indices
	 * @see http://doc.babylonjs.com/how_to/optimizing_your_scene#instrumentation
	 */
	var totalActiveIndicesPerfCounter(default, null) : PerfCounter;
	/**
	 * Gets the performance counter for active particles
	 * @see http://doc.babylonjs.com/how_to/optimizing_your_scene#instrumentation
	 */
	var activeParticlesPerfCounter(default, null) : PerfCounter;
	/**
	 * Gets the performance counter for active bones
	 * @see http://doc.babylonjs.com/how_to/optimizing_your_scene#instrumentation
	 */
	var activeBonesPerfCounter(default, null) : PerfCounter;
	/**
	 * @hidden 
	 */
	var interFramePerfCounter(default, null) : Null<PerfCounter>;
	/**
	 * @hidden 
	 */
	var lastFramePerfCounter(default, null) : Null<PerfCounter>;
	/**
	 * @hidden 
	 */
	var evaluateActiveMeshesDurationPerfCounter(default, null) : Null<PerfCounter>;
	/**
	 * @hidden 
	 */
	var renderDurationPerfCounter(default, null) : Null<PerfCounter>;
	/**
	 * @hidden 
	 */
	var particlesDurationPerfCounter(default, null) : Null<PerfCounter>;
	/**
	 * @hidden 
	 */
	var spriteDuractionPerfCounter(default, null) : Null<PerfCounter>;
	/**
	 * Returns a boolean indicating if the scene is still loading data
	 */
	var isLoading(default, null) : Bool;
	/**
	 * Gets all animatable attached to the scene
	 */
	var animatables(default, null) : Array<Animatable>;
	/**
	 * Return a unique id as a string which can serve as an identifier for the scene
	 */
	var uid(default, null) : String;
	private var _activeMeshCandidateProvider : Dynamic;
	private var _activeMeshesFrozen : Dynamic;
	/**
	 * Gets or sets if audio support is enabled
	 * @see http://doc.babylonjs.com/how_to/playing_sounds_and_music
	 */
	var audioEnabled : Bool;
	/**
	 * Gets or sets if audio will be output to headphones
	 * @see http://doc.babylonjs.com/how_to/playing_sounds_and_music
	 */
	var headphone : Bool;
	/**
	 * Gets if the scene is already disposed
	 */
	var isDisposed(default, null) : Bool;
	private var _tempPickingRay : Dynamic;
	private var _cachedRayForTransform : Dynamic;

	/**
	 * Sets the step Id used by deterministic lock step
	 * @see http://doc.babylonjs.com/babylon101/animations#deterministic-lockstep
	 */
	function setStepId(newStepId:Float) : Void;
	/**
	 * Gets the step Id used by deterministic lock step
	 * @see http://doc.babylonjs.com/babylon101/animations#deterministic-lockstep
	 * @returns the step Id
	 */
	function getStepId() : Float;
	/**
	 * Gets the internal step used by deterministic lock step
	 * @see http://doc.babylonjs.com/babylon101/animations#deterministic-lockstep
	 * @returns the internal step
	 */
	function getInternalStep() : Float;
	/**
	 * Represents a scene to be rendered by the engine.
	 * @see http://doc.babylonjs.com/features/scene
	 */
	function new(engine:Engine) : Void;
	/**
	 * Gets the cached material (ie. the latest rendered one)
	 * @returns the cached material
	 */
	function getCachedMaterial() : Null<Material>;
	/**
	 * Gets the cached effect (ie. the latest rendered one)
	 * @returns the cached effect
	 */
	function getCachedEffect() : Null<Effect>;
	/**
	 * Gets the cached visibility state (ie. the latest rendered one)
	 * @returns the cached visibility state
	 */
	function getCachedVisibility() : Null<Float>;
	/**
	 * Gets a boolean indicating if the current material / effect / visibility must be bind again
	 * @returns true if one parameter is not cached
	 */
	function isCachedMaterialInvalid(material:Material, effect:Effect, ?visibility:Float) : Bool;
	/**
	 * Gets the bounding box renderer associated with the scene
	 * @returns a BoundingBoxRenderer
	 */
	function getBoundingBoxRenderer() : BoundingBoxRenderer;
	/**
	 * Gets the outline renderer associated with the scene
	 * @returns a OutlineRenderer
	 */
	function getOutlineRenderer() : OutlineRenderer;
	/**
	 * Gets the engine associated with the scene
	 * @returns an Engine
	 */
	function getEngine() : Engine;
	/**
	 * Gets the total number of vertices rendered per frame
	 * @returns the total number of vertices rendered per frame
	 */
	function getTotalVertices() : Float;
	/**
	 * Gets the total number of active indices rendered per frame (You can deduce the number of rendered triangles by dividing this number by 3)
	 * @returns the total number of active indices rendered per frame
	 */
	function getActiveIndices() : Float;
	/**
	 * Gets the total number of active particles rendered per frame
	 * @returns the total number of active particles rendered per frame
	 */
	function getActiveParticles() : Float;
	/**
	 * Gets the total number of active bones rendered per frame
	 * @returns the total number of active bones rendered per frame
	 */
	function getActiveBones() : Float;
	/**
	 * @hidden 
	 */
	function getInterFramePerfCounter() : Float;
	/**
	 * @hidden 
	 */
	function getLastFrameDuration() : Float;
	/**
	 * @hidden 
	 */
	function getEvaluateActiveMeshesDuration() : Float;
	/**
	 * Gets the array of active meshes
	 * @returns an array of AbstractMesh
	 */
	function getActiveMeshes() : SmartArray<AbstractMesh>;
	/**
	 * @hidden 
	 */
	function getRenderTargetsDuration() : Float;
	/**
	 * @hidden 
	 */
	function getRenderDuration() : Float;
	/**
	 * @hidden 
	 */
	function getParticlesDuration() : Float;
	/**
	 * @hidden 
	 */
	function getSpritesDuration() : Float;
	/**
	 * Gets the animation ratio (which is 1.0 is the scene renders at 60fps and 2 if the scene renders at 30fps, etc.)
	 * @returns a number
	 */
	function getAnimationRatio() : Float;
	/**
	 * Gets an unique Id for the current frame
	 * @returns a number
	 */
	function getRenderId() : Float;
	/**
	 * Call this function if you want to manually increment the render Id
	 */
	function incrementRenderId() : Void;
	private function _updatePointerPosition(evt:Dynamic) : Dynamic;
	private function _createUbo() : Dynamic;
	private function _createAlternateUbo() : Dynamic;
	/**
	 * Use this method to simulate a pointer move on a mesh
	 * The pickResult parameter can be obtained from a scene.pick or scene.pickWithRay
	 * @returns the current scene
	 */
	function simulatePointerMove(pickResult:PickingInfo, ?pointerEventInit:js.html.PointerEventInit) : Scene;
	private function _processPointerMove(pickResult:Dynamic, evt:Dynamic) : Dynamic;
	/**
	 * Use this method to simulate a pointer down on a mesh
	 * The pickResult parameter can be obtained from a scene.pick or scene.pickWithRay
	 * @returns the current scene
	 */
	function simulatePointerDown(pickResult:PickingInfo, ?pointerEventInit:js.html.PointerEventInit) : Scene;
	private function _processPointerDown(pickResult:Dynamic, evt:Dynamic) : Dynamic;
	/**
	 * Use this method to simulate a pointer up on a mesh
	 * The pickResult parameter can be obtained from a scene.pick or scene.pickWithRay
	 * @returns the current scene
	 */
	function simulatePointerUp(pickResult:PickingInfo, ?pointerEventInit:js.html.PointerEventInit) : Scene;
	private function _processPointerUp(pickResult:Dynamic, evt:Dynamic, clickInfo:Dynamic) : Dynamic;
	/**
	 * Attach events to the canvas (To handle actionManagers triggers and raise onPointerMove, onPointerDown and onPointerUp
	 */
	function attachControl(?attachUp:Bool, ?attachDown:Bool, ?attachMove:Bool) : Void;
	/**
	 * Detaches all event handlers
	 */
	function detachControl() : Void;
	/**
	 * This function will check if the scene can be rendered (textures are loaded, shaders are compiled)
	 * Delay loaded resources are not taking in account
	 * @return true if all required resources are ready
	 */
	function isReady() : Bool;
	/**
	 * Resets all cached information relative to material (including effect and visibility) 
	 */
	function resetCachedMaterial() : Void;
	/**
	 * Registers a function to be called before every frame render
	 */
	function registerBeforeRender(func:Void->Void) : Void;
	/**
	 * Unregisters a function called before every frame render
	 */
	function unregisterBeforeRender(func:Void->Void) : Void;
	/**
	 * Registers a function to be called after every frame render
	 */
	function registerAfterRender(func:Void->Void) : Void;
	/**
	 * Unregisters a function called after every frame render
	 */
	function unregisterAfterRender(func:Void->Void) : Void;
	private function _executeOnceBeforeRender(func:Dynamic) : Dynamic;
	/**
	 * The provided function will run before render once and will be disposed afterwards.
	 * A timeout delay can be provided so that the function will be executed in N ms.
	 * The timeout is using the browser's native setTimeout so time percision cannot be guaranteed.
	 */
	function executeOnceBeforeRender(func:Void->Void, ?timeout:Float) : Void;
	/**
	 * @hidden 
	 */
	function _addPendingData(data:Dynamic) : Void;
	/**
	 * @hidden 
	 */
	function _removePendingData(data:Dynamic) : Void;
	/**
	 * Returns the number of items waiting to be loaded
	 * @returns the number of items waiting to be loaded
	 */
	function getWaitingItemsCount() : Float;
	/**
	 * Registers a function to be executed when the scene is ready
	 */
	function executeWhenReady(func:Void->Void) : Void;
	/**
	 * Returns a promise that resolves when the scene is ready
	 * @returns A promise that resolves when the scene is ready
	 */
	function whenReadyAsync() : js.Promise<Void>;
	/**
	 * @hidden 
	 */
	function _checkIsReady() : Void;
	/**
	 * Will start the animation sequence of a given target
	 * @returns the animatable object created for this animation
	 */
	function beginWeightedAnimation(target:Dynamic, from:Float, to:Float, ?weight:Float, ?loop:Bool, ?speedRatio:Float, ?onAnimationEnd:Void->Void, ?animatable:Animatable) : Animatable;
	/**
	 * Will start the animation sequence of a given target
	 * @returns the animatable object created for this animation
	 */
	function beginAnimation(target:Dynamic, from:Float, to:Float, ?loop:Bool, ?speedRatio:Float, ?onAnimationEnd:Void->Void, ?animatable:Animatable, ?stopCurrent:Bool) : Animatable;
	/**
	 * Begin a new animation on a given node
	 * @returns the list of created animatables
	 */
	function beginDirectAnimation(target:Dynamic, animations:Array<Animation>, from:Float, to:Float, ?loop:Bool, ?speedRatio:Float, ?onAnimationEnd:Void->Void) : Animatable;
	/**
	 * Begin a new animation on a given node and its hierarchy
	 * @returns the list of animatables created for all nodes
	 */
	function beginDirectHierarchyAnimation(target:Node, directDescendantsOnly:Bool, animations:Array<Animation>, from:Float, to:Float, ?loop:Bool, ?speedRatio:Float, ?onAnimationEnd:Void->Void) : Array<Animatable>;
	/**
	 * Gets the animatable associated with a specific target
	 * @returns the required animatable if found
	 */
	function getAnimatableByTarget(target:Dynamic) : Null<Animatable>;
	/**
	 * Gets all animatables associated with a given target
	 * @returns an array of Animatables
	 */
	function getAllAnimatablesByTarget(target:Dynamic) : Array<Animatable>;
	/**
	 * Will stop the animation of the given target
	 */
	function stopAnimation(target:Dynamic, ?animationName:String) : Void;
	/**
	 * Stops and removes all animations that have been applied to the scene
	 */
	function stopAllAnimations() : Void;
	private function _animate() : Dynamic;
	/**
	 * @hidden 
	 */
	function _registerTargetForLateAnimationBinding(runtimeAnimation:RuntimeAnimation, originalValue:Dynamic) : Void;
	private function _processLateAnimationBindingsForMatrices(holder:Dynamic) : Dynamic;
	private function _processLateAnimationBindingsForQuaternions(holder:Dynamic) : Dynamic;
	private function _processLateAnimationBindings() : Dynamic;
	/**
	 * @hidden 
	 */
	function _switchToAlternateCameraConfiguration(active:Bool) : Void;
	/**
	 * Gets the current view matrix
	 * @returns a Matrix
	 */
	function getViewMatrix() : Matrix;
	/**
	 * Gets the current projection matrix
	 * @returns a Matrix
	 */
	function getProjectionMatrix() : Matrix;
	/**
	 * Gets the current transform matrix
	 * @returns a Matrix made of View * Projection
	 */
	function getTransformMatrix() : Matrix;
	/**
	 * Sets the current transform matrix
	 */
	function setTransformMatrix(view:Matrix, projection:Matrix) : Void;
	/**
	 * @hidden 
	 */
	function _setAlternateTransformMatrix(view:Matrix, projection:Matrix) : Void;
	/**
	 * Gets the uniform buffer used to store scene data
	 * @returns a UniformBuffer
	 */
	function getSceneUniformBuffer() : UniformBuffer;
	/**
	 * Gets an unique (relatively to the current scene) Id
	 * @returns an unique number for the scene
	 */
	function getUniqueId() : Float;
	/**
	 * Add a mesh to the list of scene's meshes
	 */
	function addMesh(newMesh:AbstractMesh) : Void;
	/**
	 * Remove a mesh for the list of scene's meshes
	 * @returns the index where the mesh was in the mesh list
	 */
	function removeMesh(toRemove:AbstractMesh, ?recursive:Bool) : Float;
	/**
	 * Add a transform node to the list of scene's transform nodes
	 */
	function addTransformNode(newTransformNode:TransformNode) : Void;
	/**
	 * Remove a transform node for the list of scene's transform nodes
	 * @returns the index where the transform node was in the transform node list
	 */
	function removeTransformNode(toRemove:TransformNode) : Float;
	/**
	 * Remove a skeleton for the list of scene's skeletons
	 * @returns the index where the skeleton was in the skeleton list
	 */
	function removeSkeleton(toRemove:Skeleton) : Float;
	/**
	 * Remove a morph target for the list of scene's morph targets
	 * @returns the index where the morph target was in the morph target list
	 */
	function removeMorphTargetManager(toRemove:MorphTargetManager) : Float;
	/**
	 * Remove a light for the list of scene's lights
	 * @returns the index where the light was in the light list
	 */
	function removeLight(toRemove:Light) : Float;
	/**
	 * Remove a camera for the list of scene's cameras
	 * @returns the index where the camera was in the camera list
	 */
	function removeCamera(toRemove:Camera) : Float;
	/**
	 * Remove a particle system for the list of scene's particle systems
	 * @returns the index where the particle system was in the particle system list
	 */
	function removeParticleSystem(toRemove:IParticleSystem) : Float;
	/**
	 * Remove a animation for the list of scene's animations
	 * @returns the index where the animation was in the animation list
	 */
	function removeAnimation(toRemove:Animation) : Float;
	/**
	 * Removes the given animation group from this scene.
	 * @returns The index of the removed animation group
	 */
	function removeAnimationGroup(toRemove:AnimationGroup) : Float;
	/**
	 * Removes the given multi-material from this scene.
	 * @returns The index of the removed multi-material
	 */
	function removeMultiMaterial(toRemove:MultiMaterial) : Float;
	/**
	 * Removes the given material from this scene.
	 * @returns The index of the removed material
	 */
	function removeMaterial(toRemove:Material) : Float;
	/**
	 * Removes the given lens flare system from this scene.
	 * @returns The index of the removed lens flare system
	 */
	function removeLensFlareSystem(toRemove:LensFlareSystem) : Float;
	/**
	 * Removes the given action manager from this scene.
	 * @returns The index of the removed action manager
	 */
	function removeActionManager(toRemove:ActionManager) : Float;
	/**
	 * Removes the given effect layer from this scene.
	 * @returns the index of the removed effect layer
	 */
	function removeEffectLayer(toRemove:EffectLayer) : Float;
	/**
	 * Removes the given texture from this scene.
	 * @returns The index of the removed texture
	 */
	function removeTexture(toRemove:BaseTexture) : Float;
	/**
	 * Adds the given light to this scene
	 */
	function addLight(newLight:Light) : Void;
	/**
	 * Sorts the list list based on light priorities
	 */
	function sortLightsByPriority() : Void;
	/**
	 * Adds the given camera to this scene
	 */
	function addCamera(newCamera:Camera) : Void;
	/**
	 * Adds the given skeleton to this scene
	 */
	function addSkeleton(newSkeleton:Skeleton) : Void;
	/**
	 * Adds the given particle system to this scene
	 */
	function addParticleSystem(newParticleSystem:IParticleSystem) : Void;
	/**
	 * Adds the given animation to this scene
	 */
	function addAnimation(newAnimation:Animation) : Void;
	/**
	 * Adds the given animation group to this scene.
	 */
	function addAnimationGroup(newAnimationGroup:AnimationGroup) : Void;
	/**
	 * Adds the given multi-material to this scene
	 */
	function addMultiMaterial(newMultiMaterial:MultiMaterial) : Void;
	/**
	 * Adds the given material to this scene
	 */
	function addMaterial(newMaterial:Material) : Void;
	/**
	 * Adds the given morph target to this scene
	 */
	function addMorphTargetManager(newMorphTargetManager:MorphTargetManager) : Void;
	/**
	 * Adds the given geometry to this scene
	 */
	function addGeometry(newGeometry:Geometry) : Void;
	/**
	 * Adds the given lens flare system to this scene
	 */
	function addLensFlareSystem(newLensFlareSystem:LensFlareSystem) : Void;
	/**
	 * Adds the given effect layer to this scene
	 */
	function addEffectLayer(newEffectLayer:EffectLayer) : Void;
	/**
	 * Adds the given action manager to this scene
	 */
	function addActionManager(newActionManager:ActionManager) : Void;
	/**
	 * Adds the given texture to this scene.
	 */
	function addTexture(newTexture:BaseTexture) : Void;
	/**
	 * Switch active camera
	 */
	function switchActiveCamera(newCamera:Camera, ?attachControl:Bool) : Void;
	/**
	 * sets the active camera of the scene using its ID
	 * @return the new active camera or null if none found.
	 */
	function setActiveCameraByID(id:String) : Null<Camera>;
	/**
	 * sets the active camera of the scene using its name
	 * @returns the new active camera or null if none found.
	 */
	function setActiveCameraByName(name:String) : Null<Camera>;
	/**
	 * get an animation group using its name
	 * @return the animation group or null if none found.
	 */
	function getAnimationGroupByName(name:String) : Null<AnimationGroup>;
	/**
	 * get a material using its id
	 * @return the material or null if none found.
	 */
	function getMaterialByID(id:String) : Null<Material>;
	/**
	 * Gets a material using its name
	 * @return the material or null if none found.
	 */
	function getMaterialByName(name:String) : Null<Material>;
	/**
	 * Gets a lens flare system using its name
	 * @returns the lens flare system or null if not found
	 */
	function getLensFlareSystemByName(name:String) : Null<LensFlareSystem>;
	/**
	 * Gets a lens flare system using its id
	 * @returns the lens flare system or null if not found
	 */
	function getLensFlareSystemByID(id:String) : Null<LensFlareSystem>;
	/**
	 * Gets a camera using its id
	 * @returns the camera or null if not found
	 */
	function getCameraByID(id:String) : Null<Camera>;
	/**
	 * Gets a camera using its unique id
	 * @returns the camera or null if not found
	 */
	function getCameraByUniqueID(uniqueId:Float) : Null<Camera>;
	/**
	 * Gets a camera using its name
	 * @return the camera or null if none found.
	 */
	function getCameraByName(name:String) : Null<Camera>;
	/**
	 * Gets a bone using its id
	 * @return the bone or null if not found
	 */
	function getBoneByID(id:String) : Null<Bone>;
	/**
	 * Gets a bone using its id
	 * @return the bone or null if not found
	 */
	function getBoneByName(name:String) : Null<Bone>;
	/**
	 * Gets a light node using its name
	 * @return the light or null if none found.
	 */
	function getLightByName(name:String) : Null<Light>;
	/**
	 * Gets a light node using its id
	 * @return the light or null if none found.
	 */
	function getLightByID(id:String) : Null<Light>;
	/**
	 * Gets a light node using its scene-generated unique ID
	 * @return the light or null if none found.
	 */
	function getLightByUniqueID(uniqueId:Float) : Null<Light>;
	/**
	 * Gets a particle system by id
	 * @return the corresponding system or null if none found
	 */
	function getParticleSystemByID(id:String) : Null<IParticleSystem>;
	/**
	 * Gets a geometry using its ID
	 * @return the geometry or null if none found.
	 */
	function getGeometryByID(id:String) : Null<Geometry>;
	/**
	 * Add a new geometry to this scene
	 * @return a boolean defining if the geometry was added or not
	 */
	function pushGeometry(geometry:Geometry, ?force:Bool) : Bool;
	/**
	 * Removes an existing geometry
	 * @return a boolean defining if the geometry was removed or not
	 */
	function removeGeometry(geometry:Geometry) : Bool;
	/**
	 * Gets the list of geometries attached to the scene
	 * @returns an array of Geometry
	 */
	function getGeometries() : Array<Geometry>;
	/**
	 * Gets the first added mesh found of a given ID
	 * @return the mesh found or null if not found at all
	 */
	function getMeshByID(id:String) : Null<AbstractMesh>;
	/**
	 * Gets a list of meshes using their id
	 * @returns a list of meshes
	 */
	function getMeshesByID(id:String) : Array<AbstractMesh>;
	/**
	 * Gets the first added transform node found of a given ID
	 * @return the found transform node or null if not found at all.
	 */
	function getTransformNodeByID(id:String) : Null<TransformNode>;
	/**
	 * Gets a list of transform nodes using their id
	 * @returns a list of transform nodes
	 */
	function getTransformNodesByID(id:String) : Array<TransformNode>;
	/**
	 * Gets a mesh with its auto-generated unique id
	 * @return the found mesh or null if not found at all.
	 */
	function getMeshByUniqueID(uniqueId:Float) : Null<AbstractMesh>;
	/**
	 * Gets a the last added mesh using a given id
	 * @return the found mesh or null if not found at all.
	 */
	function getLastMeshByID(id:String) : Null<AbstractMesh>;
	/**
	 * Gets a the last added node (Mesh, Camera, Light) using a given id
	 * @return the found node or null if not found at all
	 */
	function getLastEntryByID(id:String) : Null<Node>;
	/**
	 * Gets a node (Mesh, Camera, Light) using a given id
	 * @return the found node or null if not found at all
	 */
	function getNodeByID(id:String) : Null<Node>;
	/**
	 * Gets a node (Mesh, Camera, Light) using a given name
	 * @return the found node or null if not found at all.
	 */
	function getNodeByName(name:String) : Null<Node>;
	/**
	 * Gets a mesh using a given name
	 * @return the found mesh or null if not found at all.
	 */
	function getMeshByName(name:String) : Null<AbstractMesh>;
	/**
	 * Gets a transform node using a given name
	 * @return the found transform node or null if not found at all.
	 */
	function getTransformNodeByName(name:String) : Null<TransformNode>;
	/**
	 * Gets a sound using a given name
	 * @return the found sound or null if not found at all.
	 */
	function getSoundByName(name:String) : Null<Sound>;
	/**
	 * Gets a skeleton using a given id (if many are found, this function will pick the last one)
	 * @return the found skeleton or null if not found at all.
	 */
	function getLastSkeletonByID(id:String) : Null<Skeleton>;
	/**
	 * Gets a skeleton using a given id (if many are found, this function will pick the first one)
	 * @return the found skeleton or null if not found at all.
	 */
	function getSkeletonById(id:String) : Null<Skeleton>;
	/**
	 * Gets a skeleton using a given name
	 * @return the found skeleton or null if not found at all.
	 */
	function getSkeletonByName(name:String) : Null<Skeleton>;
	/**
	 * Gets a morph target manager  using a given id (if many are found, this function will pick the last one)
	 * @return the found morph target manager or null if not found at all.
	 */
	function getMorphTargetManagerById(id:Float) : Null<MorphTargetManager>;
	/**
	 * Gets a boolean indicating if the given mesh is active
	 * @returns true if the mesh is in the active list
	 */
	function isActiveMesh(mesh:AbstractMesh) : Bool;
	/**
	 * Return a the first highlight layer of the scene with a given name.
	 * @return The highlight layer if found otherwise null.
	 */
	function getHighlightLayerByName(name:String) : Null<HighlightLayer>;
	/**
	 * Return a the first highlight layer of the scene with a given name.
	 * @return The highlight layer if found otherwise null.
	 */
	function getGlowLayerByName(name:String) : Null<GlowLayer>;
	/**
	 * Add an externaly attached data from its key.
	 * This method call will fail and return false, if such key already exists.
	 * If you don't care and just want to get the data no matter what, use the more convenient getOrAddExternalDataWithFactory() method.
	 * @return true if no such key were already present and the data was added successfully, false otherwise
	 */
	function addExternalData<T:Dynamic>(key:String, data:T) : Bool;
	/**
	 * Get an externaly attached data from its key
	 * @return the associated data, if present (can be null), or undefined if not present
	 */
	function getExternalData<T:Dynamic>(key:String) : Null<T>;
	/**
	 * Get an externaly attached data from its key, create it using a factory if it's not already present
	 * @return the associated data, can be null if the factory returned null.
	 */
	function getOrAddExternalDataWithFactory<T:Dynamic>(key:String, factory:String->T) : T;
	/**
	 * Remove an externaly attached data from the Engine instance
	 * @return true if the data was successfully removed, false if it doesn't exist
	 */
	function removeExternalData(key:String) : Bool;
	private function _evaluateSubMesh(subMesh:Dynamic, mesh:Dynamic) : Dynamic;
	/**
	 * Clear the processed materials smart array preventing retention point in material dispose.
	 */
	function freeProcessedMaterials() : Void;
	/**
	 * Clear the active meshes smart array preventing retention point in mesh dispose.
	 */
	function freeActiveMeshes() : Void;
	/**
	 * Clear the info related to rendering groups preventing retention points during dispose.
	 */
	function freeRenderingGroups() : Void;
	/**
	 * @hidden 
	 */
	function _isInIntermediateRendering() : Bool;
	/**
	 * Defines the current active mesh candidate provider
	 */
	function setActiveMeshCandidateProvider(provider:IActiveMeshCandidateProvider) : Void;
	/**
	 * Gets the current active mesh candidate provider
	 * @returns the current active mesh candidate provider
	 */
	function getActiveMeshCandidateProvider() : IActiveMeshCandidateProvider;
	/**
	 * Use this function to stop evaluating active meshes. The current list will be keep alive between frames
	 * @returns the current scene
	 */
	function freezeActiveMeshes() : Scene;
	/**
	 * Use this function to restart evaluating active meshes on every frame
	 * @returns the current scene
	 */
	function unfreezeActiveMeshes() : Scene;
	private function _evaluateActiveMeshes() : Dynamic;
	private function _activeMesh(sourceMesh:Dynamic, mesh:Dynamic) : Dynamic;
	/**
	 * Update the transform matrix to update from the current active camera
	 */
	function updateTransformMatrix(?force:Bool) : Void;
	/**
	 * Defines an alternate camera (used mostly in VR-like scenario where two cameras can render the same scene from a slightly different point of view)
	 */
	function updateAlternateTransformMatrix(alternateCamera:Camera) : Void;
	private function _renderForCamera(camera:Dynamic, ?rigParent:Dynamic) : Dynamic;
	private function _processSubCameras(camera:Dynamic) : Dynamic;
	private function _checkIntersections() : Dynamic;
	/**
	 * Render the scene
	 */
	function render() : Void;
	private function _updateAudioParameters() : Dynamic;
	private function _disableAudio() : Dynamic;
	private function _enableAudio() : Dynamic;
	private function _switchAudioModeForHeadphones() : Dynamic;
	private function _switchAudioModeForNormalSpeakers() : Dynamic;
	/**
	 * Creates a depth renderer a given camera which contains a depth map which can be used for post processing.
	 * @returns the created depth renderer
	 */
	function enableDepthRenderer(?camera:Null<Camera>) : DepthRenderer;
	/**
	 * Disables a depth renderer for a given camera
	 */
	function disableDepthRenderer(?camera:Null<Camera>) : Void;
	/**
	 * Enables a GeometryBufferRender and associates it with the scene
	 * @returns the GeometryBufferRenderer
	 */
	function enableGeometryBufferRenderer(?ratio:Float) : Null<GeometryBufferRenderer>;
	/**
	 * Disables the GeometryBufferRender associated with the scene
	 */
	function disableGeometryBufferRenderer() : Void;
	/**
	 * Freeze all materials
	 * A frozen material will not be updatable but should be faster to render
	 */
	function freezeMaterials() : Void;
	/**
	 * Unfreeze all materials
	 * A frozen material will not be updatable but should be faster to render
	 */
	function unfreezeMaterials() : Void;
	/**
	 * Releases all held ressources
	 */
	function dispose() : Void;
	/**
	 * Releases sounds & soundtracks
	 */
	function disposeSounds() : Void;
	/**
	 * Get the world extend vectors with an optional filter
	 * 
	 * @returns {{ min: Vector3; max: Vector3 }} min and max vectors
	 */
	function getWorldExtends(?filterPredicate:AbstractMesh->Bool) : { var min : Vector3; var max : Vector3; };
	/**
	 * Creates or updates the octree used to boost selection (picking)
	 * @see http://doc.babylonjs.com/how_to/optimizing_your_scene_with_octrees
	 * @returns an octree of AbstractMesh
	 */
	function createOrUpdateSelectionOctree(?maxCapacity:Float, ?maxDepth:Float) : Octree<AbstractMesh>;
	/**
	 * Creates a ray that can be used to pick in the scene
	 * @returns a Ray
	 */
	function createPickingRay(x:Float, y:Float, world:Matrix, camera:Null<Camera>, ?cameraViewSpace:Bool) : Ray;
	/**
	 * Creates a ray that can be used to pick in the scene
	 * @returns the current scene
	 */
	function createPickingRayToRef(x:Float, y:Float, world:Matrix, result:Ray, camera:Null<Camera>, ?cameraViewSpace:Bool) : Scene;
	/**
	 * Creates a ray that can be used to pick in the scene
	 * @returns a Ray
	 */
	function createPickingRayInCameraSpace(x:Float, y:Float, ?camera:Camera) : Ray;
	/**
	 * Creates a ray that can be used to pick in the scene
	 * @returns the current scene
	 */
	function createPickingRayInCameraSpaceToRef(x:Float, y:Float, result:Ray, ?camera:Camera) : Scene;
	private function _internalPick(rayFunction:Dynamic, ?predicate:Dynamic, ?fastCheck:Dynamic) : Dynamic;
	private function _internalMultiPick(rayFunction:Dynamic, ?predicate:Dynamic) : Dynamic;
	private function _internalPickSprites(ray:Dynamic, ?predicate:Dynamic, ?fastCheck:Dynamic, ?camera:Dynamic) : Dynamic;
	/**
	 * Launch a ray to try to pick a mesh in the scene
	 * @returns a PickingInfo
	 */
	function pick(x:Float, y:Float, ?predicate:AbstractMesh->Bool, ?fastCheck:Bool, ?camera:Null<Camera>) : Null<PickingInfo>;
	/**
	 * Launch a ray to try to pick a sprite in the scene
	 * @returns a PickingInfo
	 */
	function pickSprite(x:Float, y:Float, ?predicate:Sprite->Bool, ?fastCheck:Bool, ?camera:Camera) : Null<PickingInfo>;
	/**
	 * Use the given ray to pick a mesh in the scene
	 * @returns a PickingInfo
	 */
	function pickWithRay(ray:Ray, predicate:AbstractMesh->Bool, ?fastCheck:Bool) : Null<PickingInfo>;
	/**
	 * Launch a ray to try to pick a mesh in the scene
	 * @returns an array of PickingInfo
	 */
	function multiPick(x:Float, y:Float, ?predicate:AbstractMesh->Bool, ?camera:Camera) : Null<Array<PickingInfo>>;
	/**
	 * Launch a ray to try to pick a mesh in the scene
	 * @returns an array of PickingInfo
	 */
	function multiPickWithRay(ray:Ray, predicate:AbstractMesh->Bool) : Null<Array<PickingInfo>>;
	/**
	 * Force the value of meshUnderPointer
	 */
	function setPointerOverMesh(mesh:Null<AbstractMesh>) : Void;
	/**
	 * Gets the mesh under the pointer
	 * @returns a Mesh or null if no mesh is under the pointer
	 */
	function getPointerOverMesh() : Null<AbstractMesh>;
	/**
	 * Force the sprite under the pointer
	 */
	function setPointerOverSprite(sprite:Null<Sprite>) : Void;
	/**
	 * Gets the sprite under the pointer
	 * @returns a Sprite or null if no sprite is under the pointer
	 */
	function getPointerOverSprite() : Null<Sprite>;
	/**
	 * Gets the current physics engine
	 * @returns a PhysicsEngine or null if none attached
	 */
	function getPhysicsEngine() : Null<PhysicsEngine>;
	/**
	 * Enables physics to the current scene
	 * @return a boolean indicating if the physics engine was initialized
	 */
	function enablePhysics(?gravity:Null<Vector3>, ?plugin:IPhysicsEnginePlugin) : Bool;
	/**
	 * Disables and disposes the physics engine associated with the scene
	 */
	function disablePhysicsEngine() : Void;
	/**
	 * Gets a boolean indicating if there is an active physics engine
	 * @returns a boolean indicating if there is an active physics engine
	 */
	function isPhysicsEnabled() : Bool;
	/**
	 * Deletes a physics compound impostor
	 */
	function deleteCompoundImpostor(compound:Dynamic) : Void;
	/**
	 * @hidden 
	 */
	function _rebuildGeometries() : Void;
	/**
	 * @hidden 
	 */
	function _rebuildTextures() : Void;
	/**
	 * Creates a default light for the scene.
	 */
	function createDefaultLight(?replace:Bool) : Void;
	/**
	 * Creates a default camera for the scene.
	 */
	function createDefaultCamera(?createArcRotateCamera:Bool, ?replace:Bool, ?attachCameraControls:Bool) : Void;
	/**
	 * Creates a default camera and a default light
	 */
	function createDefaultCameraOrLight(?createArcRotateCamera:Bool, ?replace:Bool, ?attachCameraControls:Bool) : Void;
	/**
	 * Creates a new sky box
	 * @see http://doc.babylonjs.com/babylon101/environment#skybox
	 * @returns a new mesh holding the sky box
	 */
	function createDefaultSkybox(?environmentTexture:BaseTexture, ?pbr:Bool, ?scale:Float, ?blur:Float, ?setGlobalEnvTexture:Bool) : Null<Mesh>;
	/**
	 * Creates a new environment
	 * @see http://doc.babylonjs.com/babylon101/environment#skybox
	 * @returns the new EnvironmentHelper
	 */
	function createDefaultEnvironment(options:Partial<IEnvironmentHelperOptions>) : Null<EnvironmentHelper>;
	/**
	 * Creates a new VREXperienceHelper
	 * @see http://doc.babylonjs.com/how_to/webvr_helper
	 * @returns a new VREXperienceHelper
	 */
	function createDefaultVRExperience(?webVROptions:VRExperienceHelperOptions) : VRExperienceHelper;
	private function _getByTags(list:Dynamic, tagsQuery:Dynamic, ?forEach:Dynamic) : Dynamic;
	/**
	 * Get a list of meshes by tags
	 * @returns an array of Mesh
	 */
	function getMeshesByTags(tagsQuery:String, ?forEach:AbstractMesh->Void) : Array<Mesh>;
	/**
	 * Get a list of cameras by tags
	 * @returns an array of Camera
	 */
	function getCamerasByTags(tagsQuery:String, ?forEach:Camera->Void) : Array<Camera>;
	/**
	 * Get a list of lights by tags
	 * @returns an array of Light
	 */
	function getLightsByTags(tagsQuery:String, ?forEach:Light->Void) : Array<Light>;
	/**
	 * Get a list of materials by tags
	 * @returns an array of Material
	 */
	function getMaterialByTags(tagsQuery:String, ?forEach:Material->Void) : Array<Material>;
	/**
	 * Overrides the default sort function applied in the renderging group to prepare the meshes.
	 * This allowed control for front to back rendering or reversly depending of the special needs.
	 */
	function setRenderingOrder(renderingGroupId:Float, ?opaqueSortCompareFn:Null<SubMesh->SubMesh->Float>, ?alphaTestSortCompareFn:Null<SubMesh->SubMesh->Float>, ?transparentSortCompareFn:Null<SubMesh->SubMesh->Float>) : Void;
	/**
	 * Specifies whether or not the stencil and depth buffer are cleared between two rendering groups.
	 */
	function setRenderingAutoClearDepthStencil(renderingGroupId:Float, autoClearDepthStencil:Bool, ?depth:Bool, ?stencil:Bool) : Void;
	/**
	 * Will flag all materials as dirty to trigger new shader compilation
	 */
	function markAllMaterialsAsDirty(flag:Float, ?predicate:Material->Bool) : Void;
	/**
	 * @hidden 
	 */
	function _loadFile(url:String, onSuccess:haxe.extern.EitherType<String, js.html.ArrayBuffer>->String->Void, ?onProgress:Dynamic->Void, ?useDatabase:Bool, ?useArrayBuffer:Bool, ?onError:js.html.XMLHttpRequest->Dynamic->Void) : IFileRequest;
	/**
	 * @hidden 
	 */
	function _loadFileAsync(url:String, ?useDatabase:Bool, ?useArrayBuffer:Bool) : js.Promise<haxe.extern.EitherType<String, js.html.ArrayBuffer>>;
}