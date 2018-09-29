package babylonjs;

/**
 * Class used to store all common mesh properties
 */
@:native("BABYLON.AbstractMesh")
extern class AbstractMesh extends TransformNode
	implements IDisposable
	implements ICullable
	implements IGetSetVerticesData
{
	/**
	 * No occlusion 
	 */
	static var OCCLUSION_TYPE_NONE : Int;
	/**
	 * Occlusion set to optimisitic 
	 */
	static var OCCLUSION_TYPE_OPTIMISTIC : Int;
	/**
	 * Occlusion set to strict 
	 */
	static var OCCLUSION_TYPE_STRICT : Int;
	/**
	 * Use an accurante occlusion algorithm 
	 */
	static var OCCLUSION_ALGORITHM_TYPE_ACCURATE : Int;
	/**
	 * Use a conservative occlusion algorithm 
	 */
	static var OCCLUSION_ALGORITHM_TYPE_CONSERVATIVE : Int;
	/**
	 * No billboard
	 */
	static var BILLBOARDMODE_NONE(default, null) : Int;
	/**
	 * Billboard on X axis 
	 */
	static var BILLBOARDMODE_X(default, null) : Int;
	/**
	 * Billboard on Y axis 
	 */
	static var BILLBOARDMODE_Y(default, null) : Int;
	/**
	 * Billboard on Z axis 
	 */
	static var BILLBOARDMODE_Z(default, null) : Int;
	/**
	 * Billboard on all axes 
	 */
	static var BILLBOARDMODE_ALL(default, null) : Int;
	private var _facetPositions : Dynamic;
	private var _facetNormals : Dynamic;
	private var _facetPartitioning : Dynamic;
	private var _facetNb : Dynamic;
	private var _partitioningSubdivisions : Dynamic;
	private var _partitioningBBoxRatio : Dynamic;
	private var _facetDataEnabled : Dynamic;
	private var _facetParameters : Dynamic;
	private var _bbSize : Dynamic;
	private var _subDiv : Dynamic;
	private var _facetDepthSort : Dynamic;
	private var _facetDepthSortEnabled : Dynamic;
	private var _depthSortedIndices : Dynamic;
	private var _depthSortedFacets : Dynamic;
	private var _facetDepthSortFunction : Dynamic;
	private var _facetDepthSortFrom : Dynamic;
	private var _facetDepthSortOrigin : Dynamic;
	private var _invertedMatrix : Dynamic;
	/**
	 * Gets the number of facets in the mesh
	 * @see http://doc.babylonjs.com/how_to/how_to_use_facetdata#what-is-a-mesh-facet
	 */
	var facetNb(default, null) : Int;
	/**
	 * Gets or set the number (integer) of subdivisions per axis in the partioning space
	 * @see http://doc.babylonjs.com/how_to/how_to_use_facetdata#tweaking-the-partitioning
	 */
	var partitioningSubdivisions : Int;
	/**
	 * The ratio (float) to apply to the bouding box size to set to the partioning space.
	 * Ex : 1.01 (default) the partioning space is 1% bigger than the bounding box
	 * @see http://doc.babylonjs.com/how_to/how_to_use_facetdata#tweaking-the-partitioning
	 */
	var partitioningBBoxRatio : Float;
	/**
	 * Gets or sets a boolean indicating that the facets must be depth sorted on next call to `updateFacetData()`.
	 * Works only for updatable meshes.
	 * Doesn't work with multi-materials
	 * @see http://doc.babylonjs.com/how_to/how_to_use_facetdata#facet-depth-sort
	 */
	var mustDepthSortFacets : Bool;
	/**
	 * The location (Vector3) where the facet depth sort must be computed from.
	 * By default, the active camera position.
	 * Used only when facet depth sort is enabled
	 * @see http://doc.babylonjs.com/how_to/how_to_use_facetdata#facet-depth-sort
	 */
	var facetDepthSortFrom : Vector3;
	/**
	 * gets a boolean indicating if facetData is enabled
	 * @see http://doc.babylonjs.com/how_to/how_to_use_facetdata#what-is-a-mesh-facet
	 */
	var isFacetDataEnabled(default, null) : Bool;
	/**
	 * An event triggered when this mesh collides with another one
	 */
	var onCollideObservable : Observable<AbstractMesh>;
	private var _onCollideObserver : Dynamic;
	/**
	 * Set a function to call when this mesh collides with another one 
	 */
	var onCollide : Void->Void;
	/**
	 * An event triggered when the collision's position changes
	 */
	var onCollisionPositionChangeObservable : Observable<Vector3>;
	private var _onCollisionPositionChangeObserver : Dynamic;
	/**
	 * Set a function to call when the collision's position changes 
	 */
	var onCollisionPositionChange : Void->Void;
	/**
	 * An event triggered when material is changed
	 */
	var onMaterialChangedObservable : Observable<AbstractMesh>;
	/**
	 * Gets or sets the orientation for POV movement & rotation
	 */
	var definedFacingForward : Bool;
	/**
	 * This property determines the type of occlusion query algorithm to run in WebGl, you can use:
	 * * AbstractMesh.OCCLUSION_ALGORITHM_TYPE_ACCURATE which is mapped to GL_ANY_SAMPLES_PASSED.
	 * * AbstractMesh.OCCLUSION_ALGORITHM_TYPE_CONSERVATIVE (Default Value) which is mapped to GL_ANY_SAMPLES_PASSED_CONSERVATIVE which is a false positive algorithm that is faster than GL_ANY_SAMPLES_PASSED but less accurate.
	 * @see http://doc.babylonjs.com/features/occlusionquery
	 */
	var occlusionQueryAlgorithmType : Int;
	/**
	 * This property is responsible for starting the occlusion query within the Mesh or not, this property is also used to determine what should happen when the occlusionRetryCount is reached. It has supports 3 values:
	 * * OCCLUSION_TYPE_NONE (Default Value): this option means no occlusion query whith the Mesh.
	 * * OCCLUSION_TYPE_OPTIMISTIC: this option is means use occlusion query and if occlusionRetryCount is reached and the query is broken show the mesh.
	 * * OCCLUSION_TYPE_STRICT: this option is means use occlusion query and if occlusionRetryCount is reached and the query is broken restore the last state of the mesh occlusion if the mesh was visible then show the mesh if was hidden then hide don't show.
	 * @see http://doc.babylonjs.com/features/occlusionquery
	 */
	var occlusionType : Int;
	/**
	 * This number indicates the number of allowed retries before stop the occlusion query, this is useful if the occlusion query is taking long time before to the query result is retireved, the query result indicates if the object is visible within the scene or not and based on that Babylon.Js engine decideds to show or hide the object.
	 * The default value is -1 which means don't break the query and wait till the result
	 * @see http://doc.babylonjs.com/features/occlusionquery
	 */
	var occlusionRetryCount : Int;
	private var _occlusionInternalRetryCounter : Dynamic;
	private var _isOccluded : Bool;
	/**
	 * Gets or sets whether the mesh is occluded or not, it is used also to set the intial state of the mesh to be occluded or not
	 * @see http://doc.babylonjs.com/features/occlusionquery
	 */
	var isOccluded : Bool;
	private var _isOcclusionQueryInProgress : Dynamic;
	/**
	 * Flag to check the progress status of the query
	 * @see http://doc.babylonjs.com/features/occlusionquery
	 */
	var isOcclusionQueryInProgress(default, null) : Bool;
	private var _occlusionQuery : Dynamic;
	private var _visibility : Dynamic;
	/**
	 * Gets or sets mesh visibility between 0 and 1 (default is 1)
	 * Gets or sets mesh visibility between 0 and 1 (default is 1)
	 */
	var visibility : Float;
	/**
	 * Gets or sets the alpha index used to sort transparent meshes
	 * @see http://doc.babylonjs.com/resources/transparency_and_how_meshes_are_rendered#alpha-index
	 */
	var alphaIndex : Float;
	/**
	 * Gets or sets a boolean indicating if the mesh is visible (renderable). Default is true
	 */
	var isVisible : Bool;
	/**
	 * Gets or sets a boolean indicating if the mesh can be picked (by scene.pick for instance or through actions). Default is true
	 */
	var isPickable : Bool;
	/**
	 * Gets or sets a boolean indicating if the bounding box must be rendered as well (false by default)
	 */
	var showBoundingBox : Bool;
	/**
	 * Gets or sets a boolean indicating that bounding boxes of subMeshes must be rendered as well (false by default) 
	 */
	var showSubMeshesBoundingBox : Bool;
	/**
	 * Gets or sets a boolean indicating if the mesh must be considered as a ray blocker for lens flares (false by default)
	 * @see http://doc.babylonjs.com/how_to/how_to_use_lens_flares
	 */
	var isBlocker : Bool;
	/**
	 * Gets or sets a boolean indicating that pointer move events must be supported on this mesh (false by default)
	 */
	var enablePointerMoveEvents : Bool;
	/**
	 * Specifies the rendering group id for this mesh (0 by default)
	 * @see http://doc.babylonjs.com/resources/transparency_and_how_meshes_are_rendered#rendering-groups
	 */
	var renderingGroupId : Int;
	private var _material : Dynamic;
	/**
	 * Gets or sets current material 
	 */
	var material : Null<Material>;
	private var _receiveShadows : Dynamic;
	/**
	 * Gets or sets a boolean indicating that this mesh can receive realtime shadows
	 * @see http://doc.babylonjs.com/babylon101/shadows
	 */
	var receiveShadows : Bool;
	/**
	 * Gets or sets a boolean indicating if the outline must be rendered as well
	 * @see https://www.babylonjs-playground.com/#10WJ5S#3
	 */
	var renderOutline : Bool;
	/**
	 * Defines color to use when rendering outline 
	 */
	var outlineColor : Color3;
	/**
	 * Define width to use when rendering outline 
	 */
	var outlineWidth : Float;
	/**
	 * Gets or sets a boolean indicating if the overlay must be rendered as well
	 * @see https://www.babylonjs-playground.com/#10WJ5S#2
	 */
	var renderOverlay : Bool;
	/**
	 * Defines color to use when rendering overlay 
	 */
	var overlayColor : Color3;
	/**
	 * Defines alpha to use when rendering overlay 
	 */
	var overlayAlpha : Float;
	private var _hasVertexAlpha : Dynamic;
	/**
	 * Gets or sets a boolean indicating that this mesh contains vertex color data with alpha values 
	 */
	var hasVertexAlpha : Bool;
	private var _useVertexColors : Dynamic;
	/**
	 * Gets or sets a boolean indicating that this mesh needs to use vertex color data to render (if this kind of vertex data is available in the geometry) 
	 */
	var useVertexColors : Bool;
	private var _computeBonesUsingShaders : Dynamic;
	/**
	 * Gets or sets a boolean indicating that bone animations must be computed by the CPU (false by default)
	 */
	var computeBonesUsingShaders : Bool;
	private var _numBoneInfluencers : Dynamic;
	/**
	 * Gets or sets the number of allowed bone influences per vertex (4 by default) 
	 */
	var numBoneInfluencers : Int;
	private var _applyFog : Dynamic;
	/**
	 * Gets or sets a boolean indicating that this mesh will allow fog to be rendered on it (true by default) 
	 */
	var applyFog : Bool;
	/**
	 * Gets or sets a boolean indicating that internal octree (if available) can be used to boost submeshes selection (true by default) 
	 */
	var useOctreeForRenderingSelection : Bool;
	/**
	 * Gets or sets a boolean indicating that internal octree (if available) can be used to boost submeshes picking (true by default) 
	 */
	var useOctreeForPicking : Bool;
	/**
	 * Gets or sets a boolean indicating that internal octree (if available) can be used to boost submeshes collision (true by default) 
	 */
	var useOctreeForCollisions : Bool;
	private var _layerMask : Dynamic;
	/**
	 * Gets or sets the current layer mask (default is 0x0FFFFFFF)
	 * @see http://doc.babylonjs.com/how_to/layermasks_and_multi-cam_textures
	 */
	var layerMask : Int;
	/**
	 * True if the mesh must be rendered in any case (this will shortcut the frustum clipping phase)
	 */
	var alwaysSelectAsActiveMesh : Bool;
	/**
	 * Gets or sets the current action manager
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions
	 */
	var actionManager : Null<ActionManager>;
	/**
	 * Gets or sets impostor used for physic simulation
	 * @see http://doc.babylonjs.com/features/physics_engine
	 */
	var physicsImpostor : Null<PhysicsImpostor>;
	private var _checkCollisions : Dynamic;
	private var _collisionMask : Dynamic;
	private var _collisionGroup : Dynamic;
	/**
	 * Gets or sets the ellipsoid used to impersonate this mesh when using collision engine (default is (0.5, 1, 0.5))
	 * @see http://doc.babylonjs.com/babylon101/cameras,_mesh_collisions_and_gravity
	 */
	var ellipsoid : Vector3;
	/**
	 * Gets or sets the ellipsoid offset used to impersonate this mesh when using collision engine (default is (0, 0, 0))
	 * @see http://doc.babylonjs.com/babylon101/cameras,_mesh_collisions_and_gravity
	 */
	var ellipsoidOffset : Vector3;
	private var _collider : Dynamic;
	private var _oldPositionForCollisions : Dynamic;
	private var _diffPositionForCollisions : Dynamic;
	/**
	 * Gets or sets a collision mask used to mask collisions (default is -1).
	 * A collision between A and B will happen if A.collisionGroup & b.collisionMask !== 0
	 */
	var collisionMask : Float;
	/**
	 * Gets or sets the current collision group mask (-1 by default).
	 * A collision between A and B will happen if A.collisionGroup & b.collisionMask !== 0
	 */
	var collisionGroup : Float;
	/**
	 * Defines edge width used when edgesRenderer is enabled
	 * @see https://www.babylonjs-playground.com/#10OJSG#13
	 */
	var edgesWidth : Float;
	/**
	 * Defines edge color used when edgesRenderer is enabled
	 * @see https://www.babylonjs-playground.com/#10OJSG#13
	 */
	var edgesColor : Color4;
	/**
	 * @hidden 
	 */
	var _edgesRenderer : Null<EdgesRenderer>;
	private var _collisionsTransformMatrix : Dynamic;
	private var _collisionsScalingMatrix : Dynamic;
	/**
	 * @hidden 
	 */
	var _masterMesh : Null<AbstractMesh>;
	/**
	 * @hidden 
	 */
	var _boundingInfo : Null<BoundingInfo>;
	/**
	 * @hidden 
	 */
	var _renderId : Float;
	/**
	 * Gets or sets the list of subMeshes
	 * @see http://doc.babylonjs.com/how_to/multi_materials
	 */
	var subMeshes : Array<SubMesh>;
	/**
	 * @hidden 
	 */
	var _submeshesOctree : Octree<SubMesh>;
	/**
	 * @hidden 
	 */
	var _intersectionsInProgress : Array<AbstractMesh>;
	/**
	 * @hidden 
	 */
	var _unIndexed : Bool;
	/**
	 * @hidden 
	 */
	var _lightSources : Array<Light>;
	/**
	 * @hidden 
	 */
	var _positions(default, null) : Null<Array<Vector3>>;
	/**
	 * @hidden 
	 */
	var _waitingActions : Dynamic;
	/**
	 * @hidden 
	 */
	var _waitingFreezeWorldMatrix : Null<Bool>;
	private var _skeleton : Dynamic;
	/**
	 * @hidden 
	 */
	var _bonesTransformMatrices : Null<js.html.Float32Array>;
	/**
	 * Gets or sets a skeleton to apply skining transformations
	 * @see http://doc.babylonjs.com/how_to/how_to_use_bones_and_skeletons
	 */
	var skeleton : Null<Skeleton>;
	/**
	 * Gets or sets a Vector3 depicting the mesh scaling along each local axis X, Y, Z.  Default is (1.0, 1.0, 1.0)
	 */
	//var scaling : Vector3;
	/**
	 * Returns true if the mesh is blocked. Implemented by child classes
	 */
	var isBlocked(default, null) : Bool;
	/**
	 * Gets a boolean indicating if this mesh has skinning data and an attached skeleton 
	 */
	var useBones(default, null) : Bool;
	/**
	 * Gets or sets a boolean indicating that this mesh can be used in the collision engine
	 * @see http://doc.babylonjs.com/babylon101/cameras,_mesh_collisions_and_gravity
	 */
	var checkCollisions : Bool;
	/**
	 * Gets Collider object used to compute collisions (not physics)
	 * @see http://doc.babylonjs.com/babylon101/cameras,_mesh_collisions_and_gravity
	 */
	var collider(default, null) : Collider;
	private var _onCollisionPositionChange : Dynamic;

	/**
	 * @hidden 
	 */
	override function _updateNonUniformScalingState(value:Bool) : Bool;
	/**
	 * Class used to store all common mesh properties
	 */
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Returns the string "AbstractMesh"
	 * @returns "AbstractMesh"
	 */
	override function getClassName() : String;
	/**
	 * Gets a string representation of the current mesh
	 * @returns a string representation of the current mesh
	 */
	function toString(?fullDetails:Bool) : String;
	/**
	 * @hidden 
	 */
	function _rebuild() : Void;
	/**
	 * @hidden 
	 */
	function _resyncLightSources() : Void;
	/**
	 * @hidden 
	 */
	function _resyncLighSource(light:Light) : Void;
	/**
	 * @hidden 
	 */
	function _unBindEffect() : Void;
	/**
	 * @hidden 
	 */
	function _removeLightSource(light:Light) : Void;
	private function _markSubMeshesAsDirty(func:Dynamic) : Dynamic;
	/**
	 * @hidden 
	 */
	function _markSubMeshesAsLightDirty() : Void;
	/**
	 * @hidden 
	 */
	function _markSubMeshesAsAttributesDirty() : Void;
	/**
	 * @hidden 
	 */
	function _markSubMeshesAsMiscDirty() : Void;
	/**
	 * Disables the mesh edge rendering mode
	 * @returns the currentAbstractMesh
	 */
	function disableEdgesRendering() : AbstractMesh;
	/**
	 * Enables the edge rendering mode on the mesh.
	 * This mode makes the mesh edges visible
	 * @returns the currentAbstractMesh
	 * @see https://www.babylonjs-playground.com/#19O9TU#0
	 */
	function enableEdgesRendering(?epsilon:Float, ?checkVerticesInsteadOfIndices:Bool) : AbstractMesh;
	/**
	 * Returns the mesh itself by default. Implemented by child classes
	 * @returns the currentAbstractMesh
	 */
	function getLOD(camera:Camera) : AbstractMesh;
	/**
	 * Returns 0 by default. Implemented by child classes
	 * @returns an integer
	 */
	function getTotalVertices() : Int;
	/**
	 * Returns null by default. Implemented by child classes
	 * @returns null
	 */
	@:overload(function(): Null<IndicesArray>{})
	function getIndices(?copyWhenShared:Bool) : Null<IndicesArray>;
	/**
	 * Returns the array of the requested vertex data kind. Implemented by child classes
	 * @returns null
	 */
	@:overload(function(kind:String): Null<FloatArray>{})
	function getVerticesData(kind:String, ?copyWhenShared:Bool, ?forceCopy:Bool) : Null<FloatArray>;
	/**
	 * Sets the vertex data of the mesh geometry for the requested `kind`.
	 * If the mesh has no geometry, a new Geometry object is set to the mesh and then passed this vertex data.
	 * Note that a new underlying VertexBuffer object is created each call.
	 * If the `kind` is the `PositionKind`, the mesh BoundingInfo is renewed, so the bounding box and sphere, and the mesh World Matrix is recomputed.
	 * @returns the current mesh
	 */
	@:overload(function(kind:String, data:FloatArray,?updatable:Bool,?stride:Float): AbstractMesh{})
	function setVerticesData(kind:String, data:FloatArray, updatable:Bool) : Void;
	/**
	 * Updates the existing vertex data of the mesh geometry for the requested `kind`.
	 * If the mesh has no geometry, it is simply returned as it is.
	 * @returns the current mesh
	 */
	@:overload(function(kind:String, data:FloatArray,?updateExtends:Bool,?makeItUnique:Bool): AbstractMesh{})
	function updateVerticesData(kind:String, data:FloatArray, ?updateExtends:Bool, ?makeItUnique:Bool) : Void;
	/**
	 * Sets the mesh indices,
	 * If the mesh has no geometry, a new Geometry object is created and set to the mesh.
	 * @returns the current mesh
	 */
	@:overload(function(indices:IndicesArray, totalVertices:Null<Float>): AbstractMesh{})
	function setIndices(indices:IndicesArray, totalVertices:Null<Float>, ?updatable:Bool) : Void;
	/**
	 * Gets a boolean indicating if specific vertex data is present
	 * @returns true is data kind is present
	 */
	function isVerticesDataPresent(kind:String) : Bool;
	/**
	 * Returns the mesh BoundingInfo object or creates a new one and returns if it was undefined
	 * @returns a BoundingInfo
	 */
	function getBoundingInfo() : BoundingInfo;
	/**
	 * Uniformly scales the mesh to fit inside of a unit cube (1 X 1 X 1 units)
	 * @returns the current mesh
	 */
	function normalizeToUnitCube(?includeDescendants:Bool) : AbstractMesh;
	/**
	 * Overwrite the current bounding info
	 * @returns the current mesh
	 */
	function setBoundingInfo(boundingInfo:BoundingInfo) : AbstractMesh;
	/**
	 * @hidden 
	 */
	function _preActivate() : Void;
	/**
	 * @hidden 
	 */
	function _preActivateForIntermediateRendering(renderId:Float) : Void;
	/**
	 * @hidden 
	 */
	function _activate(renderId:Float) : Void;
	/**
	 * Gets the current world matrix
	 * @returns a Matrix
	 */
	override function getWorldMatrix() : Matrix;
	/**
	 * @hidden 
	 */
	override function _getWorldMatrixDeterminant() : Float;
	/**
	 * Perform relative position change from the point of view of behind the front of the mesh.
	 * This is performed taking into account the meshes current rotation, so you do not have to care.
	 * Supports definition of mesh facing forward or backward
	 * @returns the current mesh
	 */
	function movePOV(amountRight:Float, amountUp:Float, amountForward:Float) : AbstractMesh;
	/**
	 * Calculate relative position change from the point of view of behind the front of the mesh.
	 * This is performed taking into account the meshes current rotation, so you do not have to care.
	 * Supports definition of mesh facing forward or backward
	 * @returns the new displacement vector
	 */
	function calcMovePOV(amountRight:Float, amountUp:Float, amountForward:Float) : Vector3;
	/**
	 * Perform relative rotation change from the point of view of behind the front of the mesh.
	 * Supports definition of mesh facing forward or backward
	 * @returns the current mesh
	 */
	function rotatePOV(flipBack:Float, twirlClockwise:Float, tiltRight:Float) : AbstractMesh;
	/**
	 * Calculate relative rotation change from the point of view of behind the front of the mesh.
	 * Supports definition of mesh facing forward or backward.
	 * @returns the new rotation vector
	 */
	function calcRotatePOV(flipBack:Float, twirlClockwise:Float, tiltRight:Float) : Vector3;
	/**
	 * Return the minimum and maximum world vectors of the entire hierarchy under current mesh
	 * @returns the new bounding vectors
	 */
	function getHierarchyBoundingVectors(?includeDescendants:Bool) : { var min : Vector3; var max : Vector3; };
	/**
	 * @hidden 
	 */
	function _updateBoundingInfo() : AbstractMesh;
	/**
	 * @hidden 
	 */
	function _updateSubMeshesBoundingInfo(matrix:Matrix) : AbstractMesh;
	/**
	 * @hidden 
	 */
	override function _afterComputeWorldMatrix() : Void;
	/**
	 * Returns `true` if the mesh is within the frustum defined by the passed array of planes.
	 * A mesh is in the frustum if its bounding box intersects the frustum
	 * @returns true if the mesh is in the frustum planes
	 */
	function isInFrustum(frustumPlanes:Array<Plane>) : Bool;
	/**
	 * Returns `true` if the mesh is completely in the frustum defined be the passed array of planes.
	 * A mesh is completely in the frustum if its bounding box it completely inside the frustum.
	 * @returns true if the mesh is completely in the frustum planes
	 */
	function isCompletelyInFrustum(frustumPlanes:Array<Plane>) : Bool;
	/**
	 * True if the mesh intersects another mesh or a SolidParticle object
	 * @returns true if there is an intersection
	 */
	function intersectsMesh(mesh:haxe.extern.EitherType<AbstractMesh, SolidParticle>, ?precise:Bool, ?includeDescendants:Bool) : Bool;
	/**
	 * Returns true if the passed point (Vector3) is inside the mesh bounding box
	 * @returns true if there is an intersection
	 */
	function intersectsPoint(point:Vector3) : Bool;
	/**
	 * Gets the current physics impostor
	 * @see http://doc.babylonjs.com/features/physics_engine
	 * @returns a physics impostor or null
	 */
	function getPhysicsImpostor() : Null<PhysicsImpostor>;
	/**
	 * Gets the position of the current mesh in camera space
	 * @returns a position
	 */
	function getPositionInCameraSpace(?camera:Null<Camera>) : Vector3;
	/**
	 * Returns the distance from the mesh to the active camera
	 * @returns the distance
	 */
	function getDistanceToCamera(?camera:Null<Camera>) : Float;
	/**
	 * Apply a physic impulse to the mesh
	 * @returns the current mesh
	 * @see http://doc.babylonjs.com/how_to/using_the_physics_engine
	 */
	function applyImpulse(force:Vector3, contactPoint:Vector3) : AbstractMesh;
	/**
	 * Creates a physic joint between two meshes
	 * @returns the current mesh
	 * @see https://www.babylonjs-playground.com/#0BS5U0#0
	 */
	function setPhysicsLinkWith(otherMesh:Mesh, pivot1:Vector3, pivot2:Vector3, ?options:Dynamic) : AbstractMesh;
	/**
	 * Move the mesh using collision engine
	 * @see http://doc.babylonjs.com/babylon101/cameras,_mesh_collisions_and_gravity
	 * @returns the current mesh
	 */
	function moveWithCollisions(displacement:Vector3) : AbstractMesh;
	/**
	 * This function will create an octree to help to select the right submeshes for rendering, picking and collision computations.
	 * Please note that you must have a decent number of submeshes to get performance improvements when using an octree
	 * @returns the new octree
	 * @see https://www.babylonjs-playground.com/#NA4OQ#12
	 * @see http://doc.babylonjs.com/how_to/optimizing_your_scene_with_octrees
	 */
	function createOrUpdateSubmeshesOctree(?maxCapacity:Float, ?maxDepth:Float) : Octree<SubMesh>;
	/**
	 * @hidden 
	 */
	function _collideForSubMesh(subMesh:SubMesh, transformMatrix:Matrix, collider:Collider) : AbstractMesh;
	/**
	 * @hidden 
	 */
	function _processCollisionsForSubMeshes(collider:Collider, transformMatrix:Matrix) : AbstractMesh;
	/**
	 * @hidden 
	 */
	function _checkCollision(collider:Collider) : AbstractMesh;
	/**
	 * @hidden 
	 */
	function _generatePointsArray() : Bool;
	/**
	 * Checks if the passed Ray intersects with the mesh
	 * @returns the picking info
	 * @see http://doc.babylonjs.com/babylon101/intersect_collisions_-_mesh
	 */
	function intersects(ray:Ray, ?fastCheck:Bool) : PickingInfo;
	/**
	 * Clones the current mesh
	 * @returns the new mesh
	 */
	@:overload(function(name:String, newParent:Node,?doNotCloneChildren:Bool): Null<AbstractMesh>{})
	override function clone(name:String, newParent:Node, ?doNotCloneChildren:Bool) : Null<TransformNode>;
	/**
	 * Disposes all the submeshes of the current meshnp
	 * @returns the current mesh
	 */
	function releaseSubMeshes() : AbstractMesh;
	/**
	 * Releases resources associated with this abstract mesh.
	 */
	@:overload(function(doNotRecurse:Bool, ?disposeMaterialAndTextures:Bool):Void{})
	override function dispose() : Void;
	/**
	 * Adds the passed mesh as a child to the current mesh
	 * @returns the current mesh
	 */
	function addChild(mesh:AbstractMesh) : AbstractMesh;
	/**
	 * Removes the passed mesh from the current mesh children list
	 * @returns the current mesh
	 */
	function removeChild(mesh:AbstractMesh) : AbstractMesh;
	/**
	 * @hidden 
	 */
	private function _initFacetData() : Dynamic;
	/**
	 * Updates the mesh facetData arrays and the internal partitioning when the mesh is morphed or updated.
	 * This method can be called within the render loop.
	 * You don't need to call this method by yourself in the render loop when you update/morph a mesh with the methods CreateXXX() as they automatically manage this computation
	 * @returns the current mesh
	 * @see http://doc.babylonjs.com/how_to/how_to_use_facetdata
	 */
	function updateFacetData() : AbstractMesh;
	/**
	 * Returns the facetLocalNormals array.
	 * The normals are expressed in the mesh local spac
	 * @returns an array of Vector3
	 * @see http://doc.babylonjs.com/how_to/how_to_use_facetdata
	 */
	function getFacetLocalNormals() : Array<Vector3>;
	/**
	 * Returns the facetLocalPositions array.
	 * The facet positions are expressed in the mesh local space
	 * @returns an array of Vector3
	 * @see http://doc.babylonjs.com/how_to/how_to_use_facetdata
	 */
	function getFacetLocalPositions() : Array<Vector3>;
	/**
	 * Returns the facetLocalPartioning array
	 * @returns an array of array of numbers
	 * @see http://doc.babylonjs.com/how_to/how_to_use_facetdata
	 */
	function getFacetLocalPartitioning() : Array<Array<Float>>;
	/**
	 * Returns the i-th facet position in the world system.
	 * This method allocates a new Vector3 per call
	 * @returns a new Vector3
	 * @see http://doc.babylonjs.com/how_to/how_to_use_facetdata
	 */
	function getFacetPosition(i:Int) : Vector3;
	/**
	 * Sets the reference Vector3 with the i-th facet position in the world system
	 * @returns the current mesh
	 * @see http://doc.babylonjs.com/how_to/how_to_use_facetdata
	 */
	function getFacetPositionToRef(i:Int, ref:Vector3) : AbstractMesh;
	/**
	 * Returns the i-th facet normal in the world system.
	 * This method allocates a new Vector3 per call
	 * @returns a new Vector3
	 * @see http://doc.babylonjs.com/how_to/how_to_use_facetdata
	 */
	function getFacetNormal(i:Int) : Vector3;
	/**
	 * Sets the reference Vector3 with the i-th facet normal in the world system
	 * @returns the current mesh
	 * @see http://doc.babylonjs.com/how_to/how_to_use_facetdata
	 */
	function getFacetNormalToRef(i:Int, ref:Vector3) : AbstractMesh;
	/**
	 * Returns the facets (in an array) in the same partitioning block than the one the passed coordinates are located (expressed in the mesh local system)
	 * @returns the array of facet indexes
	 * @see http://doc.babylonjs.com/how_to/how_to_use_facetdata
	 */
	function getFacetsAtLocalCoordinates(x:Float, y:Float, z:Float) : Null<Array<Float>>;
	/**
	 * Returns the closest mesh facet index at (x,y,z) World coordinates, null if not found
	 * @returns the face index if found (or null instead)
	 * @see http://doc.babylonjs.com/how_to/how_to_use_facetdata
	 */
	function getClosestFacetAtCoordinates(x:Float, y:Float, z:Float, ?projected:Vector3, ?checkFace:Bool, ?facing:Bool) : Null<Float>;
	/**
	 * Returns the closest mesh facet index at (x,y,z) local coordinates, null if not found
	 * @returns the face index if found (or null instead)
	 * @see http://doc.babylonjs.com/how_to/how_to_use_facetdata
	 */
	function getClosestFacetAtLocalCoordinates(x:Float, y:Float, z:Float, ?projected:Vector3, ?checkFace:Bool, ?facing:Bool) : Null<Float>;
	/**
	 * Returns the object "parameter" set with all the expected parameters for facetData computation by ComputeNormals()
	 * @returns the parameters
	 * @see http://doc.babylonjs.com/how_to/how_to_use_facetdata
	 */
	function getFacetDataParameters() : Dynamic;
	/**
	 * Disables the feature FacetData and frees the related memory
	 * @returns the current mesh
	 * @see http://doc.babylonjs.com/how_to/how_to_use_facetdata
	 */
	function disableFacetData() : AbstractMesh;
	/**
	 * Updates the AbstractMesh indices array
	 * @returns the current mesh
	 */
	function updateIndices(indices:IndicesArray) : AbstractMesh;
	/**
	 * Creates new normals data for the mesh
	 * @returns the current mesh
	 */
	function createNormals(updatable:Bool) : AbstractMesh;
	/**
	 * Align the mesh with a normal
	 * @returns the current mesh
	 */
	function alignWithNormal(normal:Vector3, ?upDirection:Vector3) : AbstractMesh;
	/**
	 * @hidden 
	 */
	function _checkOcclusionQuery() : Void;
}