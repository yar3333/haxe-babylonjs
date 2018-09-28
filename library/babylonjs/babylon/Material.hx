package babylonjs.babylon;

/**
 * Base class for the main features of a material in Babylon.js
 */
@:native("BABYLON.Material")
extern class Material
	implements IAnimatable
{
	private static var _TriangleFillMode : Dynamic;
	private static var _WireFrameFillMode : Dynamic;
	private static var _PointFillMode : Dynamic;
	private static var _PointListDrawMode : Dynamic;
	private static var _LineListDrawMode : Dynamic;
	private static var _LineLoopDrawMode : Dynamic;
	private static var _LineStripDrawMode : Dynamic;
	private static var _TriangleStripDrawMode : Dynamic;
	private static var _TriangleFanDrawMode : Dynamic;
	/**
	 * Returns the triangle fill mode
	 */
	static var TriangleFillMode(default, null) : Float;
	/**
	 * Returns the wireframe mode
	 */
	static var WireFrameFillMode(default, null) : Float;
	/**
	 * Returns the point fill mode
	 */
	static var PointFillMode(default, null) : Float;
	/**
	 * Returns the point list draw mode
	 */
	static var PointListDrawMode(default, null) : Float;
	/**
	 * Returns the line list draw mode
	 */
	static var LineListDrawMode(default, null) : Float;
	/**
	 * Returns the line loop draw mode
	 */
	static var LineLoopDrawMode(default, null) : Float;
	/**
	 * Returns the line strip draw mode
	 */
	static var LineStripDrawMode(default, null) : Float;
	/**
	 * Returns the triangle strip draw mode
	 */
	static var TriangleStripDrawMode(default, null) : Float;
	/**
	 * Returns the triangle fan draw mode
	 */
	static var TriangleFanDrawMode(default, null) : Float;
	/**
	 * Stores the clock-wise side orientation
	 */
	private static var _ClockWiseSideOrientation : Dynamic;
	/**
	 * Stores the counter clock-wise side orientation
	 */
	private static var _CounterClockWiseSideOrientation : Dynamic;
	/**
	 * Returns the clock-wise side orientation
	 */
	static var ClockWiseSideOrientation(default, null) : Float;
	/**
	 * Returns the counter clock-wise side orientation
	 */
	static var CounterClockWiseSideOrientation(default, null) : Float;
	/**
	 * The dirty texture flag value
	 */
	private static var _TextureDirtyFlag : Dynamic;
	/**
	 * The dirty light flag value
	 */
	private static var _LightDirtyFlag : Dynamic;
	/**
	 * The dirty fresnel flag value
	 */
	private static var _FresnelDirtyFlag : Dynamic;
	/**
	 * The dirty attribute flag value
	 */
	private static var _AttributesDirtyFlag : Dynamic;
	/**
	 * The dirty misc flag value
	 */
	private static var _MiscDirtyFlag : Dynamic;
	/**
	 * Returns the dirty texture flag value
	 */
	static var TextureDirtyFlag(default, null) : Float;
	/**
	 * Returns the dirty light flag value
	 */
	static var LightDirtyFlag(default, null) : Float;
	/**
	 * Returns the dirty fresnel flag value
	 */
	static var FresnelDirtyFlag(default, null) : Float;
	/**
	 * Returns the dirty attributes flag value
	 */
	static var AttributesDirtyFlag(default, null) : Float;
	/**
	 * Returns the dirty misc flag value
	 */
	static var MiscDirtyFlag(default, null) : Float;
	/**
	 * The ID of the material
	 */
	var id : String;
	/**
	 * The name of the material
	 */
	var name : String;
	/**
	 * Specifies if the ready state should be checked on each call
	 */
	var checkReadyOnEveryCall : Bool;
	/**
	 * Specifies if the ready state should be checked once
	 */
	var checkReadyOnlyOnce : Bool;
	/**
	 * The state of the material
	 */
	var state : String;
	/**
	 * The alpha value of the material
	 */
	private var _alpha : Float;
	/**
	 * Gets the alpha value of the material
	 * Sets the alpha value of the material
	 */
	var alpha : Float;
	/**
	 * Specifies if back face culling is enabled
	 */
	private var _backFaceCulling : Bool;
	/**
	 * Gets the back-face culling state
	 * Sets the back-face culling state
	 */
	var backFaceCulling : Bool;
	/**
	 * Stores the value for side orientation
	 */
	var sideOrientation : Float;
	/**
	 * Callback triggered when the material is compiled
	 */
	var onCompiled : Effect->Void;
	/**
	 * Callback triggered when an error occurs
	 */
	var onError : Effect->String->Void;
	/**
	 * Callback triggered to get the render target textures
	 */
	var getRenderTargetTextures : Void->SmartArray<RenderTargetTexture>;
	/**
	 * Specifies if the material should be serialized
	 */
	var doNotSerialize : Bool;
	/**
	 * Specifies if the effect should be stored on sub meshes
	 */
	var storeEffectOnSubMeshes : Bool;
	/**
	 * Stores the animations for the material
	 */
	var animations : Array<Animation>;
	/**
	 * An event triggered when the material is disposed
	 */
	var onDisposeObservable : Observable<Material>;
	/**
	 * An observer which watches for dispose events
	 */
	private var _onDisposeObserver : Dynamic;
	/**
	 * Called during a dispose event
	 */
	var onDispose : Void->Void;
	/**
	 * An event triggered when the material is bound
	 */
	var onBindObservable : Observable<AbstractMesh>;
	/**
	 * An observer which watches for bind events
	 */
	private var _onBindObserver : Dynamic;
	/**
	 * Called during a bind event
	 */
	var onBind : AbstractMesh->Void;
	/**
	 * An event triggered when the material is unbound
	 */
	var onUnBindObservable : Observable<Material>;
	/**
	 * Stores the value of the alpha mode
	 */
	private var _alphaMode : Dynamic;
	/**
	 * Gets the value of the alpha mode
	 * Sets the value of the alpha mode.
	 * 
	 * | Value | Type | Description |
	 * | --- | --- | --- |
	 * | 0 | ALPHA_DISABLE |   |
	 * | 1 | ALPHA_ADD |   |
	 * | 2 | ALPHA_COMBINE |   |
	 * | 3 | ALPHA_SUBTRACT |   |
	 * | 4 | ALPHA_MULTIPLY |   |
	 * | 5 | ALPHA_MAXIMIZED |   |
	 * | 6 | ALPHA_ONEONE |   |
	 * | 7 | ALPHA_PREMULTIPLIED |   |
	 * | 8 | ALPHA_PREMULTIPLIED_PORTERDUFF |   |
	 * | 9 | ALPHA_INTERPOLATE |   |
	 * | 10 | ALPHA_SCREENMODE |   |
	 */
	var alphaMode : Float;
	/**
	 * Stores the state of the need depth pre-pass value
	 */
	private var _needDepthPrePass : Dynamic;
	/**
	 * Gets the depth pre-pass value
	 * Sets the need depth pre-pass value
	 */
	var needDepthPrePass : Bool;
	/**
	 * Specifies if depth writing should be disabled
	 */
	var disableDepthWrite : Bool;
	/**
	 * Specifies if depth writing should be forced
	 */
	var forceDepthWrite : Bool;
	/**
	 * Specifies if there should be a separate pass for culling
	 */
	var separateCullingPass : Bool;
	/**
	 * Stores the state specifing if fog should be enabled
	 */
	private var _fogEnabled : Dynamic;
	/**
	 * Gets the value of the fog enabled state
	 * Sets the state for enabling fog
	 */
	var fogEnabled : Bool;
	/**
	 * Stores the size of points
	 */
	var pointSize : Float;
	/**
	 * Stores the z offset value
	 */
	var zOffset : Float;
	/**
	 * Gets a value specifying if wireframe mode is enabled
	 * Sets the state of wireframe mode
	 */
	var wireframe : Bool;
	/**
	 * Gets the value specifying if point clouds are enabled
	 * Sets the state of point cloud mode
	 */
	var pointsCloud : Bool;
	/**
	 * Gets the material fill mode
	 * Sets the material fill mode
	 */
	var fillMode : Float;
	/**
	 * Stores the effects for the material
	 */
	var _effect : Null<Effect>;
	/**
	 * Specifies if the material was previously ready
	 */
	var _wasPreviouslyReady : Bool;
	/**
	 * Specifies if uniform buffers should be used
	 */
	private var _useUBO : Dynamic;
	/**
	 * Stores a reference to the scene
	 */
	private var _scene : Dynamic;
	/**
	 * Stores the fill mode state
	 */
	private var _fillMode : Dynamic;
	/**
	 * Specifies if the depth write state should be cached
	 */
	private var _cachedDepthWriteState : Dynamic;
	/**
	 * Stores the uniform buffer
	 */
	private var _uniformBuffer : UniformBuffer;
	/**
	 * Specifies if updates for the material been locked
	 */
	var isFrozen(default, null) : Bool;

	/**
	 * Base class for the main features of a material in Babylon.js
	 */
	function new(name:String, scene:Scene, ?doNotAdd:Bool) : Void;
	/**
	 * Returns a string representation of the current material
	 * @returns a string with material information
	 */
	function toString(?fullDetails:Bool) : String;
	/**
	 * Gets the class name of the material
	 * @returns a string with the class name of the material
	 */
	function getClassName() : String;
	/**
	 * Locks updates for the material
	 */
	function freeze() : Void;
	/**
	 * Unlocks updates for the material
	 */
	function unfreeze() : Void;
	/**
	 * Specifies if the material is ready to be used
	 * @returns a boolean indicating if the material is ready to be used
	 */
	function isReady(?mesh:AbstractMesh, ?useInstances:Bool) : Bool;
	/**
	 * Specifies that the submesh is ready to be used
	 * @returns a boolean indicating that the submesh is ready or not
	 */
	function isReadyForSubMesh(mesh:AbstractMesh, subMesh:BaseSubMesh, ?useInstances:Bool) : Bool;
	/**
	 * Returns the material effect
	 * @returns the effect associated with the material
	 */
	function getEffect() : Null<Effect>;
	/**
	 * Returns the current scene
	 * @returns a Scene
	 */
	function getScene() : Scene;
	/**
	 * Specifies if the material will require alpha blending
	 * @returns a boolean specifying if alpha blending is needed
	 */
	function needAlphaBlending() : Bool;
	/**
	 * Specifies if the mesh will require alpha blending
	 * @returns a boolean specifying if alpha blending is needed for the mesh
	 */
	function needAlphaBlendingForMesh(mesh:AbstractMesh) : Bool;
	/**
	 * Specifies if this material should be rendered in alpha test mode
	 * @returns a boolean specifying if an alpha test is needed.
	 */
	function needAlphaTesting() : Bool;
	/**
	 * Gets the texture used for the alpha test
	 * @returns the texture to use for alpha testing
	 */
	function getAlphaTestTexture() : Null<BaseTexture>;
	/**
	 * Marks the material to indicate that it needs to be re-calculated
	 */
	function markDirty() : Void;
	/**
	 * @hidden 
	 */
	function _preBind(?effect:Effect, ?overrideOrientation:Null<Float>) : Bool;
	/**
	 * Binds the material to the mesh
	 */
	function bind(world:Matrix, ?mesh:Mesh) : Void;
	/**
	 * Binds the submesh to the material
	 */
	function bindForSubMesh(world:Matrix, mesh:Mesh, subMesh:SubMesh) : Void;
	/**
	 * Binds the world matrix to the material
	 */
	function bindOnlyWorldMatrix(world:Matrix) : Void;
	/**
	 * Binds the scene's uniform buffer to the effect.
	 */
	function bindSceneUniformBuffer(effect:Effect, sceneUbo:UniformBuffer) : Void;
	/**
	 * Binds the view matrix to the effect
	 */
	function bindView(effect:Effect) : Void;
	/**
	 * Binds the view projection matrix to the effect
	 */
	function bindViewProjection(effect:Effect) : Void;
	/**
	 * Specifies if material alpha testing should be turned on for the mesh
	 */
	function _shouldTurnAlphaTestOn(mesh:AbstractMesh) : Bool;
	/**
	 * Processes to execute after binding the material to a mesh
	 */
	function _afterBind(?mesh:Mesh) : Void;
	/**
	 * Unbinds the material from the mesh
	 */
	function unbind() : Void;
	/**
	 * Gets the active textures from the material
	 * @returns an array of textures
	 */
	function getActiveTextures() : Array<BaseTexture>;
	/**
	 * Specifies if the material uses a texture
	 * @returns a boolean specifying if the material uses the texture
	 */
	function hasTexture(texture:BaseTexture) : Bool;
	/**
	 * Makes a duplicate of the material, and gives it a new name
	 * @returns the cloned material
	 */
	function clone(name:String) : Null<Material>;
	/**
	 * Gets the meshes bound to the material
	 * @returns an array of meshes bound to the material
	 */
	function getBindedMeshes() : Array<AbstractMesh>;
	/**
	 * Force shader compilation
	 */
	function forceCompilation(mesh:AbstractMesh, ?onCompiled:Material->Void, ?options:Partial<{ var clipPlane : Bool; }>) : Void;
	/**
	 * Force shader compilation
	 * @returns a promise that resolves when the compilation completes
	 */
	function forceCompilationAsync(mesh:AbstractMesh, ?options:Partial<{ var clipPlane : Bool; }>) : js.Promise<Void>;
	/**
	 * Marks a define in the material to indicate that it needs to be re-computed
	 */
	function markAsDirty(flag:Float) : Void;
	/**
	 * Marks all submeshes of a material to indicate that their material defines need to be re-calculated
	 */
	function _markAllSubMeshesAsDirty(func:MaterialDefines->Void) : Void;
	/**
	 * Indicates that image processing needs to be re-calculated for all submeshes
	 */
	function _markAllSubMeshesAsImageProcessingDirty() : Void;
	/**
	 * Indicates that textures need to be re-calculated for all submeshes
	 */
	function _markAllSubMeshesAsTexturesDirty() : Void;
	/**
	 * Indicates that fresnel needs to be re-calculated for all submeshes
	 */
	function _markAllSubMeshesAsFresnelDirty() : Void;
	/**
	 * Indicates that fresnel and misc need to be re-calculated for all submeshes
	 */
	function _markAllSubMeshesAsFresnelAndMiscDirty() : Void;
	/**
	 * Indicates that lights need to be re-calculated for all submeshes
	 */
	function _markAllSubMeshesAsLightsDirty() : Void;
	/**
	 * Indicates that attributes need to be re-calculated for all submeshes
	 */
	function _markAllSubMeshesAsAttributesDirty() : Void;
	/**
	 * Indicates that misc needs to be re-calculated for all submeshes
	 */
	function _markAllSubMeshesAsMiscDirty() : Void;
	/**
	 * Indicates that textures and misc need to be re-calculated for all submeshes
	 */
	function _markAllSubMeshesAsTexturesAndMiscDirty() : Void;
	/**
	 * Disposes the material
	 */
	function dispose(?forceDisposeEffect:Bool, ?forceDisposeTextures:Bool) : Void;
	/**
	 * Serializes this material
	 * @returns the serialized material object
	 */
	function serialize() : Dynamic;
	/**
	 * Creates a MultiMaterial from parsed MultiMaterial data.
	 * @returns a new MultiMaterial
	 */
	static function ParseMultiMaterial(parsedMultiMaterial:Dynamic, scene:Scene) : MultiMaterial;
	/**
	 * Creates a material from parsed material data
	 * @returns a new material
	 */
	static function Parse(parsedMaterial:Dynamic, scene:Scene, rootUrl:String) : Dynamic;
}