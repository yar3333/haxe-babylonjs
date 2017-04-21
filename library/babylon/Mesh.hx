package babylon;

extern class Mesh extends AbstractMesh implements IGetSetVerticesData
{
	static var _FRONTSIDE : Float;
	static var _BACKSIDE : Float;
	static var _DOUBLESIDE : Float;
	static var _DEFAULTSIDE : Float;
	static var _NO_CAP : Float;
	static var _CAP_START : Float;
	static var _CAP_END : Float;
	static var _CAP_ALL : Float;
	/**
	 * Mesh side orientation : usually the external or front surface
	 */
	static var FRONTSIDE : Float;
	/**
	 * Mesh side orientation : usually the internal or back surface
	 */
	static var BACKSIDE : Float;
	/**
	 * Mesh side orientation : both internal and external or front and back surfaces
	 */
	static var DOUBLESIDE : Float;
	/**
	 * Mesh side orientation : by default, `FRONTSIDE`
	 */
	static var DEFAULTSIDE : Float;
	/**
	 * Mesh cap setting : no cap
	 */
	static var NO_CAP : Float;
	/**
	 * Mesh cap setting : one cap at the beginning of the mesh
	 */
	static var CAP_START : Float;
	/**
	 * Mesh cap setting : one cap at the end of the mesh
	 */
	static var CAP_END : Float;
	/**
	 * Mesh cap setting : two caps, one at the beginning  and one at the end of the mesh
	 */
	static var CAP_ALL : Float;
	/**
	 * An event triggered before rendering the mesh
	 * @type {BABYLON.Observable}
	 */
	var onBeforeRenderObservable : Observable<Mesh>;
	/**
	* An event triggered after rendering the mesh
	* @type {BABYLON.Observable}
	*/
	var onAfterRenderObservable : Observable<Mesh>;
	/**
	* An event triggered before drawing the mesh
	* @type {BABYLON.Observable}
	*/
	var onBeforeDrawObservable : Observable<Mesh>;
	private var _onBeforeDrawObserver : Dynamic/*UNKNOW_TYPE*/;
	var onBeforeDraw : Void->Void;
	var delayLoadState : Float;
	var instances : Array<InstancedMesh>;
	var delayLoadingFile : String;
	var _binaryInfo : Dynamic;
	private var _LODLevels : Dynamic/*UNKNOW_TYPE*/;
	var onLODLevelSelection : Float->Mesh->Mesh->Void;
	var _geometry : Geometry;
	var _delayInfo : Dynamic;
	var _delayLoadingFunction : Dynamic->Mesh->Void;
	var _visibleInstances : Dynamic;
	private var _renderIdForInstances : Dynamic/*UNKNOW_TYPE*/;
	private var _batchCache : Dynamic/*UNKNOW_TYPE*/;
	private var _instancesBufferSize : Dynamic/*UNKNOW_TYPE*/;
	private var _instancesBuffer : Dynamic/*UNKNOW_TYPE*/;
	private var _instancesData : Dynamic/*UNKNOW_TYPE*/;
	private var _overridenInstanceCount : Dynamic/*UNKNOW_TYPE*/;
	var _shouldGenerateFlatShading : Bool;
	private var _preActivateId : Dynamic/*UNKNOW_TYPE*/;
	private var _sideOrientation : Dynamic/*UNKNOW_TYPE*/;
	private var _areNormalsFrozen : Dynamic/*UNKNOW_TYPE*/;
	private var _sourcePositions : Dynamic/*UNKNOW_TYPE*/;
	private var _sourceNormals : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * @constructor
	 * @param {string} name The value used by scene.getMeshByName() to do a lookup.
	 * @param {Scene} scene The scene to add this mesh to.
	 * @param {Node} parent The parent of this mesh, if it has one
	 * @param {Mesh} source An optional Mesh from which geometry is shared, cloned.
	 * @param {boolean} doNotCloneChildren When cloning, skip cloning child meshes of source, default False.
	 *                  When false, achieved by calling a clone(), also passing False.
	 *                  This will make creation of children, recursive.
	 */
	function new(name:String, scene:Scene, ?parent:Node, ?source:Mesh, ?doNotCloneChildren:Bool, ?clonePhysicsImpostor:Bool) : Void;
	/**
	 * @param {boolean} fullDetails - support for multiple levels of logging within scene loading
	 */
	function toString(?fullDetails:Bool) : String;
	var hasLODLevels : Bool;
	private function _sortLODLevels();
	/**
	 * Add a mesh as LOD level triggered at the given distance.
	 * tuto : http://doc.babylonjs.com/tutorials/How_to_use_LOD
	 * @param {number} distance The distance from the center of the object to show this level
	 * @param {Mesh} mesh The mesh to be added as LOD level
	 * @return {Mesh} This mesh (for chaining)
	 */
	function addLODLevel(distance:Float, mesh:Mesh) : Mesh;
	/**
	 * Returns the LOD level mesh at the passed distance or null if not found.
	 * It is related to the method `addLODLevel(distance, mesh)`.
	 * tuto : http://doc.babylonjs.com/tutorials/How_to_use_LOD
	 */
	function getLODLevelAtDistance(distance:Float) : Mesh;
	/**
	 * Remove a mesh from the LOD array
	 * tuto : http://doc.babylonjs.com/tutorials/How_to_use_LOD
	 * @param {Mesh} mesh The mesh to be removed.
	 * @return {Mesh} This mesh (for chaining)
	 */
	function removeLODLevel(mesh:Mesh) : Mesh;
	/**
	 * Returns the registered LOD mesh distant from the parameter `camera` position if any, else returns the current mesh.
	 * tuto : http://doc.babylonjs.com/tutorials/How_to_use_LOD
	 */
	function getLOD(camera:Camera, ?boundingSphere:BoundingSphere) : AbstractMesh;
	/**
	 * Returns the mesh internal Geometry object.
	 */
	var geometry : Geometry;
	/**
	 * Returns a positive integer : the total number of vertices within the mesh geometry or zero if the mesh has no geometry.
	 */
	function getTotalVertices() : Float;
	/**
	 * Returns an array of integers or floats, or a Float32Array, depending on the requested `kind` (positions, indices, normals, etc).
	 * If `copywhenShared` is true (default false) and if the mesh geometry is shared among some other meshes, the returned array is a copy of the internal one.
	 * Returns null if the mesh has no geometry or no vertex buffer.
	 * Possible `kind` values :
	 * - BABYLON.VertexBuffer.PositionKind
	 * - BABYLON.VertexBuffer.UVKind
	 * - BABYLON.VertexBuffer.UV2Kind
	 * - BABYLON.VertexBuffer.UV3Kind
	 * - BABYLON.VertexBuffer.UV4Kind
	 * - BABYLON.VertexBuffer.UV5Kind
	 * - BABYLON.VertexBuffer.UV6Kind
	 * - BABYLON.VertexBuffer.ColorKind
	 * - BABYLON.VertexBuffer.MatricesIndicesKind
	 * - BABYLON.VertexBuffer.MatricesIndicesExtraKind
	 * - BABYLON.VertexBuffer.MatricesWeightsKind
	 * - BABYLON.VertexBuffer.MatricesWeightsExtraKind
	 */
	function getVerticesData(kind:String, ?copyWhenShared:Bool) : haxe.extern.EitherType<Array<Float>, Float32Array>;
	/**
	 * Returns the mesh VertexBuffer object from the requested `kind` : positions, indices, normals, etc.
	 * Returns `undefined` if the mesh has no geometry.
	 * Possible `kind` values :
	 * - BABYLON.VertexBuffer.PositionKind
	 * - BABYLON.VertexBuffer.UVKind
	 * - BABYLON.VertexBuffer.UV2Kind
	 * - BABYLON.VertexBuffer.UV3Kind
	 * - BABYLON.VertexBuffer.UV4Kind
	 * - BABYLON.VertexBuffer.UV5Kind
	 * - BABYLON.VertexBuffer.UV6Kind
	 * - BABYLON.VertexBuffer.ColorKind
	 * - BABYLON.VertexBuffer.MatricesIndicesKind
	 * - BABYLON.VertexBuffer.MatricesIndicesExtraKind
	 * - BABYLON.VertexBuffer.MatricesWeightsKind
	 * - BABYLON.VertexBuffer.MatricesWeightsExtraKind
	 */
	function getVertexBuffer(kind:Dynamic) : VertexBuffer;
	/**
	 * Returns a boolean depending on the existence of the Vertex Data for the requested `kind`.
	 * Possible `kind` values :
	 * - BABYLON.VertexBuffer.PositionKind
	 * - BABYLON.VertexBuffer.UVKind
	 * - BABYLON.VertexBuffer.UV2Kind
	 * - BABYLON.VertexBuffer.UV3Kind
	 * - BABYLON.VertexBuffer.UV4Kind
	 * - BABYLON.VertexBuffer.UV5Kind
	 * - BABYLON.VertexBuffer.UV6Kind
	 * - BABYLON.VertexBuffer.ColorKind
	 * - BABYLON.VertexBuffer.MatricesIndicesKind
	 * - BABYLON.VertexBuffer.MatricesIndicesExtraKind
	 * - BABYLON.VertexBuffer.MatricesWeightsKind
	 * - BABYLON.VertexBuffer.MatricesWeightsExtraKind
	 */
	function isVerticesDataPresent(kind:String) : Bool;
	/**
	 * Returns a string : the list of existing `kinds` of Vertex Data for this mesh.
	 * Possible `kind` values :
	 * - BABYLON.VertexBuffer.PositionKind
	 * - BABYLON.VertexBuffer.UVKind
	 * - BABYLON.VertexBuffer.UV2Kind
	 * - BABYLON.VertexBuffer.UV3Kind
	 * - BABYLON.VertexBuffer.UV4Kind
	 * - BABYLON.VertexBuffer.UV5Kind
	 * - BABYLON.VertexBuffer.UV6Kind
	 * - BABYLON.VertexBuffer.ColorKind
	 * - BABYLON.VertexBuffer.MatricesIndicesKind
	 * - BABYLON.VertexBuffer.MatricesIndicesExtraKind
	 * - BABYLON.VertexBuffer.MatricesWeightsKind
	 * - BABYLON.VertexBuffer.MatricesWeightsExtraKind
	 */
	function getVerticesDataKinds() : Array<String>;
	/**
	 * Returns a positive integer : the total number of indices in this mesh geometry.
	 * Returns zero if the mesh has no geometry.
	 */
	function getTotalIndices() : Float;
	/**
	 * Returns an array of integers or a Int32Array populated with the mesh indices.
	 * If the parameter `copyWhenShared` is true (default false) and and if the mesh geometry is shared among some other meshes, the returned array is a copy of the internal one.
	 * Returns an empty array if the mesh has no geometry.
	 */
	function getIndices(?copyWhenShared:Bool) : haxe.extern.EitherType<Array<Float>, Int32Array>;
	var isBlocked : Bool;
	/**
	 * Boolean : true once the mesh is ready after all the delayed process (loading, etc) are complete.
	 */
	function isReady() : Bool;
	/**
	 * Boolean : true if the mesh has been disposed.
	 */
	function isDisposed() : Bool;
	/**
	 * Sets the mesh side orientation : BABYLON.Mesh.FRONTSIDE, BABYLON.Mesh.BACKSIDE, BABYLON.Mesh.DOUBLESIDE or BABYLON.Mesh.DEFAULTSIDE
	 * tuto : http://doc.babylonjs.com/tutorials/Discover_Basic_Elements#side-orientation
	 */
	var sideOrientation : Float;
	/**
	 * Boolean : true if the normals aren't to be recomputed on next mesh `positions` array update.
	 * This property is pertinent only for updatable parametric shapes.
	 */
	var areNormalsFrozen : Bool;
	/**
	 * This function affects parametric shapes on vertex position update only : ribbons, tubes, etc.
	 * It has no effect at all on other shapes.
	 * It prevents the mesh normals from being recomputed on next `positions` array update.
	 */
	function freezeNormals() : Void;
	/**
	 * This function affects parametric shapes on vertex position update only : ribbons, tubes, etc.
	 * It has no effect at all on other shapes.
	 * It reactivates the mesh normals computation if it was previously frozen.
	 */
	function unfreezeNormals() : Void;
	/**
	 * Overrides instance count. Only applicable when custom instanced InterleavedVertexBuffer are used rather than InstancedMeshs
	 */
	var overridenInstanceCount : Float;
	function _preActivate() : Void;
	function _preActivateForIntermediateRendering(renderId:Float) : Void;
	function _registerInstanceForRenderId(instance:InstancedMesh, renderId:Float) : Void;
	/**
	 * This method recomputes and sets a new BoundingInfo to the mesh unless it is locked.
	 * This means the mesh underlying bounding box and sphere are recomputed.
	 */
	function refreshBoundingInfo() : Void;
	function _createGlobalSubMesh() : SubMesh;
	function subdivide(count:Float) : Void;
	/**
	 * Sets the vertex data of the mesh geometry for the requested `kind`.
	 * If the mesh has no geometry, a new Geometry object is set to the mesh and then passed this vertex data.
	 * The `data` are either a numeric array either a Float32Array.
	 * The parameter `updatable` is passed as is to the underlying Geometry object constructor (if initianilly none) or updater.
	 * The parameter `stride` is an optional positive integer, it is usually automatically deducted from the `kind` (3 for positions or normals, 2 for UV, etc).
	 * Note that a new underlying VertexBuffer object is created each call.
	 * If the `kind` is the `PositionKind`, the mesh BoundingInfo is renewed, so the bounding box and sphere, and the mesh World Matrix is recomputed.
	 *
	 * Possible `kind` values :
	 * - BABYLON.VertexBuffer.PositionKind
	 * - BABYLON.VertexBuffer.UVKind
	 * - BABYLON.VertexBuffer.UV2Kind
	 * - BABYLON.VertexBuffer.UV3Kind
	 * - BABYLON.VertexBuffer.UV4Kind
	 * - BABYLON.VertexBuffer.UV5Kind
	 * - BABYLON.VertexBuffer.UV6Kind
	 * - BABYLON.VertexBuffer.ColorKind
	 * - BABYLON.VertexBuffer.MatricesIndicesKind
	 * - BABYLON.VertexBuffer.MatricesIndicesExtraKind
	 * - BABYLON.VertexBuffer.MatricesWeightsKind
	 * - BABYLON.VertexBuffer.MatricesWeightsExtraKind
	 */
	function setVerticesData(kind:String, data:haxe.extern.EitherType<Array<Float>, Float32Array>, ?updatable:Bool, ?stride:Float) : Void;
	function setVerticesBuffer(buffer:VertexBuffer) : Void;
	/**
	 * Updates the existing vertex data of the mesh geometry for the requested `kind`.
	 * If the mesh has no geometry, it is simply returned as it is.
	 * The `data` are either a numeric array either a Float32Array.
	 * No new underlying VertexBuffer object is created.
	 * If the `kind` is the `PositionKind` and if `updateExtends` is true, the mesh BoundingInfo is renewed, so the bounding box and sphere, and the mesh World Matrix is recomputed.
	 * If the parameter `makeItUnique` is true, a new global geometry is created from this positions and is set to the mesh.
	 *
	 * Possible `kind` values :
	 * - BABYLON.VertexBuffer.PositionKind
	 * - BABYLON.VertexBuffer.UVKind
	 * - BABYLON.VertexBuffer.UV2Kind
	 * - BABYLON.VertexBuffer.UV3Kind
	 * - BABYLON.VertexBuffer.UV4Kind
	 * - BABYLON.VertexBuffer.UV5Kind
	 * - BABYLON.VertexBuffer.UV6Kind
	 * - BABYLON.VertexBuffer.ColorKind
	 * - BABYLON.VertexBuffer.MatricesIndicesKind
	 * - BABYLON.VertexBuffer.MatricesIndicesExtraKind
	 * - BABYLON.VertexBuffer.MatricesWeightsKind
	 * - BABYLON.VertexBuffer.MatricesWeightsExtraKind
	 */
	function updateVerticesData(kind:String, data:haxe.extern.EitherType<Array<Float>, Float32Array>, ?updateExtends:Bool, ?makeItUnique:Bool) : Void;
	/**
	 * Deprecated since BabylonJS v2.3
	 */
	function updateVerticesDataDirectly(kind:String, data:Float32Array, ?offset:Float, ?makeItUnique:Bool) : Void;
	/**
	 * This method updates the vertex positions of an updatable mesh according to the `positionFunction` returned values.
	 * tuto : http://doc.babylonjs.com/tutorials/How_to_dynamically_morph_a_mesh#other-shapes-updatemeshpositions
	 * The parameter `positionFunction` is a simple JS function what is passed the mesh `positions` array. It doesn't need to return anything.
	 * The parameter `computeNormals` is a boolean (default true) to enable/disable the mesh normal recomputation after the vertex position update.
	 */
	function updateMeshPositions(positionFunction:Dynamic, ?computeNormals:Bool) : Void;
	function makeGeometryUnique() : Void;
	/**
	 * Sets the mesh indices.
	 * Expects an array populated with integers or a Int32Array.
	 * If the mesh has no geometry, a new Geometry object is created and set to the mesh.
	 * This method creates a new index buffer each call.
	 */
	function setIndices(indices:haxe.extern.EitherType<Array<Float>, Int32Array>, ?totalVertices:Float) : Void;
	/**
	 * Invert the geometry to move from a right handed system to a left handed one.
	 */
	function toLeftHanded() : Void;
	function _bind(subMesh:SubMesh, effect:Effect, fillMode:Float) : Void;
	function _draw(subMesh:SubMesh, fillMode:Float, ?instancesCount:Float) : Void;
	/**
	 * Registers for this mesh a javascript function called just before the rendering process.
	 * This function is passed the current mesh and doesn't return anything.
	 */
	function registerBeforeRender(func:AbstractMesh->Void) : Void;
	/**
	 * Disposes a previously registered javascript function called before the rendering.
	 * This function is passed the current mesh and doesn't return anything.
	 */
	function unregisterBeforeRender(func:AbstractMesh->Void) : Void;
	/**
	 * Registers for this mesh a javascript function called just after the rendering is complete.
	 * This function is passed the current mesh and doesn't return anything.
	 */
	function registerAfterRender(func:AbstractMesh->Void) : Void;
	/**
	 * Disposes a previously registered javascript function called after the rendering.
	 * This function is passed the current mesh and doesn't return anything.
	 */
	function unregisterAfterRender(func:AbstractMesh->Void) : Void;
	function _getInstancesRenderList(subMeshId:Float) : _InstancesBatch;
	function _renderWithInstances(subMesh:SubMesh, fillMode:Float, batch:_InstancesBatch, effect:Effect, engine:Engine) : Void;
	function _processRendering(subMesh:SubMesh, effect:Effect, fillMode:Float, batch:_InstancesBatch, hardwareInstancedRendering:Bool, onBeforeDraw: Bool->Matrix->Material->Void, ?effectiveMaterial:Material) : Void;
	/**
	 * Triggers the draw call for the mesh.
	 * Usually, you don't need to call this method by your own because the mesh rendering is handled by the scene rendering manager.
	 */
	function render(subMesh:SubMesh, enableAlphaMode:Bool) : Void;
	private function _onBeforeDraw(isInstance, world, effectiveMaterial);
	/**
	 * Returns an array populated with ParticleSystem objects whose the mesh is the emitter.
	 */
	function getEmittedParticleSystems() : Array<ParticleSystem>;
	/**
	 * Returns an array populated with ParticleSystem objects whose the mesh or its children are the emitter.
	 */
	function getHierarchyEmittedParticleSystems() : Array<ParticleSystem>;
	function _checkDelayState() : Void;
	private function _queueLoad(mesh, scene);
	/**
	 * Boolean, true is the mesh in the frustum defined by the Plane objects from the `frustumPlanes` array parameter.
	 */
	function isInFrustum(frustumPlanes:Array<Plane>) : Bool;
	/**
	 * Sets the mesh material by the material or multiMaterial `id` property.
	 * The material `id` is a string identifying the material or the multiMaterial.
	 * This method returns nothing.
	 */
	function setMaterialByID(id:String) : Void;
	/**
	 * Returns as a new array populated with the mesh material and/or skeleton, if any.
	 */
	function getAnimatables() : Array<IAnimatable>;
	/**
	 * Modifies the mesh geometry according to the passed transformation matrix.
	 * This method returns nothing but it really modifies the mesh even if it's originally not set as updatable.
	 * The mesh normals are modified accordingly the same transformation.
	 * tuto : http://doc.babylonjs.com/tutorials/How_Rotations_and_Translations_Work#baking-transform
	 * Note that, under the hood, this method sets a new VertexBuffer each call.
	 */
	function bakeTransformIntoVertices(transform:Matrix) : Void;
	/**
	 * Modifies the mesh geometry according to its own current World Matrix.
	 * The mesh World Matrix is then reset.
	 * This method returns nothing but really modifies the mesh even if it's originally not set as updatable.
	 * tuto : tuto : http://doc.babylonjs.com/tutorials/How_Rotations_and_Translations_Work#baking-transform
	 * Note that, under the hood, this method sets a new VertexBuffer each call.
	 */
	function bakeCurrentTransformIntoVertices() : Void;
	function _resetPointsArrayCache() : Void;
	function _generatePointsArray() : Bool;
	/**
	 * Returns a new Mesh object generated from the current mesh properties.
	 * This method must not get confused with createInstance().
	 * The parameter `name` is a string, the name given to the new mesh.
	 * The optional parameter `newParent` can be any Node object (default `null`).
	 * The optional parameter `doNotCloneChildren` (default `false`) allows/denies the recursive cloning of the original mesh children if any.
	 * The parameter `clonePhysicsImpostor` (default `true`)  allows/denies the cloning in the same time of the original mesh `body` used by the physics engine, if any.
	 */
	function clone(name:String, ?newParent:Node, ?doNotCloneChildren:Bool, ?clonePhysicsImpostor:Bool) : Mesh;
	/**
	 * Disposes the mesh.
	 * This also frees the memory allocated under the hood to all the buffers used by WebGL.
	 */
	function dispose(?doNotRecurse:Bool) : Void;
	/**
	 * Modifies the mesh geometry according to a displacement map.
	 * A displacement map is a colored image. Each pixel color value (actually a gradient computed from red, green, blue values) will give the displacement to apply to each mesh vertex.
	 * The mesh must be set as updatable. Its internal geometry is directly modified, no new buffer are allocated.
	 * This method returns nothing.
	 * The parameter `url` is a string, the URL from the image file is to be downloaded.
	 * The parameters `minHeight` and `maxHeight` are the lower and upper limits of the displacement.
	 * The parameter `onSuccess` is an optional Javascript function to be called just after the mesh is modified. It is passed the modified mesh and must return nothing.
	 */
	function applyDisplacementMap(url:String, minHeight:Float, maxHeight:Float, ?onSuccess:Mesh->Void) : Void;
	/**
	 * Modifies the mesh geometry according to a displacementMap buffer.
	 * A displacement map is a colored image. Each pixel color value (actually a gradient computed from red, green, blue values) will give the displacement to apply to each mesh vertex.
	 * The mesh must be set as updatable. Its internal geometry is directly modified, no new buffer are allocated.
	 * This method returns nothing.
	 * The parameter `buffer` is a `Uint8Array` buffer containing series of `Uint8` lower than 255, the red, green, blue and alpha values of each successive pixel.
	 * The parameters `heightMapWidth` and `heightMapHeight` are positive integers to set the width and height of the buffer image.
	 * The parameters `minHeight` and `maxHeight` are the lower and upper limits of the displacement.
	 */
	function applyDisplacementMapFromBuffer(buffer:Uint8Array, heightMapWidth:Float, heightMapHeight:Float, minHeight:Float, maxHeight:Float) : Void;
	/**
	 * Modify the mesh to get a flat shading rendering.
	 * This means each mesh facet will then have its own normals. Usually new vertices are added in the mesh geometry to get this result.
	 * This method returns nothing.
	 * Warning : the mesh is really modified even if not set originally as updatable and, under the hood, a new VertexBuffer is allocated.
	 */
	function convertToFlatShadedMesh() : Void;
	/**
	 * This method removes all the mesh indices and add new vertices (duplication) in order to unfold facets into buffers.
	 * In other words, more vertices, no more indices and a single bigger VBO.
	 * This method returns nothing.
	 * The mesh is really modified even if not set originally as updatable. Under the hood, a new VertexBuffer is allocated.
	 *
	 */
	function convertToUnIndexedMesh() : Void;
	/**
	 * Inverses facet orientations and inverts also the normals with `flipNormals` (default `false`) if true.
	 * This method returns nothing.
	 * Warning : the mesh is really modified even if not set originally as updatable. A new VertexBuffer is created under the hood each call.
	 */
	function flipFaces(?flipNormals:Bool) : Void;
	/**
	 * Creates a new InstancedMesh object from the mesh model.
	 * An instance shares the same properties and the same material than its model.
	 * Only these properties of each instance can then be set individually :
	 * - position
	 * - rotation
	 * - rotationQuaternion
	 * - setPivotMatrix
	 * - scaling
	 * tuto : http://doc.babylonjs.com/tutorials/How_to_use_Instances
	 * Warning : this method is not supported for Line mesh and LineSystem
	 */
	function createInstance(name:String) : InstancedMesh;
	/**
	 * Synchronises all the mesh instance submeshes to the current mesh submeshes, if any.
	 * After this call, all the mesh instances have the same submeshes than the current mesh.
	 * This method returns nothing.
	 */
	function synchronizeInstances() : Void;
	/**
	 * Simplify the mesh according to the given array of settings.
	 * Function will return immediately and will simplify async. It returns nothing.
	 * @param settings a collection of simplification settings.
	 * @param parallelProcessing should all levels calculate parallel or one after the other.
	 * @param type the type of simplification to run.
	 * @param successCallback optional success callback to be called after the simplification finished processing all settings.
	 */
	function simplify(settings:Array<ISimplificationSettings>, ?parallelProcessing:Bool, ?simplificationType:SimplificationType, ?successCallback:Mesh->Float->Void) : Void;
	/**
	 * Optimization of the mesh's indices, in case a mesh has duplicated vertices.
	 * The function will only reorder the indices and will not remove unused vertices to avoid problems with submeshes.
	 * This should be used together with the simplification to avoid disappearing triangles.
	 * @param successCallback an optional success callback to be called after the optimization finished.
	 */
	function optimizeIndices(successCallback:Mesh->Void) : Void;
	/**
	 * Returns a new Mesh object what is a deep copy of the passed mesh.
	 * The parameter `parsedMesh` is the mesh to be copied.
	 * The parameter `rootUrl` is a string, it's the root URL to prefix the `delayLoadingFile` property with
	 */
	static function Parse(parsedMesh:Dynamic, scene:Scene, rootUrl:String) : Mesh;
	/**
	 * Creates a ribbon mesh.
	 * Please consider using the same method from the MeshBuilder class instead.
	 * The ribbon is a parametric shape :  http://doc.babylonjs.com/tutorials/Parametric_Shapes.  It has no predefined shape. Its final shape will depend on the input parameters.
	 *
	 * Please read this full tutorial to understand how to design a ribbon : http://doc.babylonjs.com/tutorials/Ribbon_Tutorial
	 * The parameter `pathArray` is a required array of paths, what are each an array of successive Vector3. The pathArray parameter depicts the ribbon geometry.
	 * The parameter `closeArray` (boolean, default false) creates a seam between the first and the last paths of the path array.
	 * The parameter `closePath` (boolean, default false) creates a seam between the first and the last points of each path of the path array.
	 * The parameter `offset` (positive integer, default : rounded half size of the pathArray length), is taken in account only if the `pathArray` is containing a single path.
	 * It's the offset to join together the points from the same path. Ex : offset = 10 means the point 1 is joined to the point 11.
	 * The optional parameter `instance` is an instance of an existing Ribbon object to be updated with the passed `pathArray` parameter : http://doc.babylonjs.com/tutorials/How_to_dynamically_morph_a_mesh#ribbon
	 * You can also set the mesh side orientation with the values : BABYLON.Mesh.FRONTSIDE (default), BABYLON.Mesh.BACKSIDE or BABYLON.Mesh.DOUBLESIDE
	 * Detail here : http://doc.babylonjs.com/tutorials/02._Discover_Basic_Elements#side-orientation
	 * The mesh can be set to updatable with the boolean parameter `updatable` (default false) if its internal geometry is supposed to change once created.
	 */
	static function CreateRibbon(name:String, pathArray:Array<Array<Vector3>>, closeArray:Bool, closePath:Bool, offset:Float, scene:Scene, ?updatable:Bool, ?sideOrientation:Float, ?instance:Mesh) : Mesh;
	/**
	 * Creates a plane polygonal mesh.  By default, this is a disc.
	 * Please consider using the same method from the MeshBuilder class instead.
	 * The parameter `radius` sets the radius size (float) of the polygon (default 0.5).
	 * The parameter `tessellation` sets the number of polygon sides (positive integer, default 64). So a tessellation valued to 3 will build a triangle, to 4 a square, etc.
	 * You can also set the mesh side orientation with the values : BABYLON.Mesh.FRONTSIDE (default), BABYLON.Mesh.BACKSIDE or BABYLON.Mesh.DOUBLESIDE
	 * Detail here : http://doc.babylonjs.com/tutorials/02._Discover_Basic_Elements#side-orientation
	 * The mesh can be set to updatable with the boolean parameter `updatable` (default false) if its internal geometry is supposed to change once created.
	 */
	static function CreateDisc(name:String, radius:Float, tessellation:Float, scene:Scene, ?updatable:Bool, ?sideOrientation:Float) : Mesh;
	/**
	 * Creates a box mesh.
	 * Please consider using the same method from the MeshBuilder class instead.
	 * The parameter `size` sets the size (float) of each box side (default 1).
	 * You can also set the mesh side orientation with the values : BABYLON.Mesh.FRONTSIDE (default), BABYLON.Mesh.BACKSIDE or BABYLON.Mesh.DOUBLESIDE
	 * Detail here : http://doc.babylonjs.com/tutorials/02._Discover_Basic_Elements#side-orientation
	 * The mesh can be set to updatable with the boolean parameter `updatable` (default false) if its internal geometry is supposed to change once created.
	 */
	static function CreateBox(name:String, size:Float, scene:Scene, ?updatable:Bool, ?sideOrientation:Float) : Mesh;
	/**
	 * Creates a sphere mesh.
	 * Please consider using the same method from the MeshBuilder class instead.
	 * The parameter `diameter` sets the diameter size (float) of the sphere (default 1).
	 * The parameter `segments` sets the sphere number of horizontal stripes (positive integer, default 32).
	 * You can also set the mesh side orientation with the values : BABYLON.Mesh.FRONTSIDE (default), BABYLON.Mesh.BACKSIDE or BABYLON.Mesh.DOUBLESIDE
	 * Detail here : http://doc.babylonjs.com/tutorials/02._Discover_Basic_Elements#side-orientation
	 * The mesh can be set to updatable with the boolean parameter `updatable` (default false) if its internal geometry is supposed to change once created.
	 */
	static function CreateSphere(name:String, segments:Float, diameter:Float, ?scene:Scene, ?updatable:Bool, ?sideOrientation:Float) : Mesh;
	/**
	 * Creates a cylinder or a cone mesh.
	 * Please consider using the same method from the MeshBuilder class instead.
	 * The parameter `height` sets the height size (float) of the cylinder/cone (float, default 2).
	 * The parameter `diameter` sets the diameter of the top and bottom cap at once (float, default 1).
	 * The parameters `diameterTop` and `diameterBottom` overwrite the parameter `diameter` and set respectively the top cap and bottom cap diameter (floats, default 1). The parameter "diameterBottom" can't be zero.
	 * The parameter `tessellation` sets the number of cylinder sides (positive integer, default 24). Set it to 3 to get a prism for instance.
	 * The parameter `subdivisions` sets the number of rings along the cylinder height (positive integer, default 1).
	 * You can also set the mesh side orientation with the values : BABYLON.Mesh.FRONTSIDE (default), BABYLON.Mesh.BACKSIDE or BABYLON.Mesh.DOUBLESIDE
	 * Detail here : http://doc.babylonjs.com/tutorials/02._Discover_Basic_Elements#side-orientation
	 * The mesh can be set to updatable with the boolean parameter `updatable` (default false) if its internal geometry is supposed to change once created.
	 */
	static function CreateCylinder(name:String, height:Float, diameterTop:Float, diameterBottom:Float, tessellation:Float, subdivisions:Dynamic, scene:Scene, ?updatable:Dynamic, ?sideOrientation:Float) : Mesh;
	/**
	 * Creates a torus mesh.
	 * Please consider using the same method from the MeshBuilder class instead.
	 * The parameter `diameter` sets the diameter size (float) of the torus (default 1).
	 * The parameter `thickness` sets the diameter size of the tube of the torus (float, default 0.5).
	 * The parameter `tessellation` sets the number of torus sides (postive integer, default 16).
	 * You can also set the mesh side orientation with the values : BABYLON.Mesh.FRONTSIDE (default), BABYLON.Mesh.BACKSIDE or BABYLON.Mesh.DOUBLESIDE
	 * Detail here : http://doc.babylonjs.com/tutorials/02._Discover_Basic_Elements#side-orientation
	 * The mesh can be set to updatable with the boolean parameter `updatable` (default false) if its internal geometry is supposed to change once created.
	 */
	static function CreateTorus(name:String, diameter:Float, thickness:Float, tessellation:Float, scene:Scene, ?updatable:Bool, ?sideOrientation:Float) : Mesh;
	/**
	 * Creates a torus knot mesh.
	 * Please consider using the same method from the MeshBuilder class instead.
	 * The parameter `radius` sets the global radius size (float) of the torus knot (default 2).
	 * The parameter `radialSegments` sets the number of sides on each tube segments (positive integer, default 32).
	 * The parameter `tubularSegments` sets the number of tubes to decompose the knot into (positive integer, default 32).
	 * The parameters `p` and `q` are the number of windings on each axis (positive integers, default 2 and 3).
	 * You can also set the mesh side orientation with the values : BABYLON.Mesh.FRONTSIDE (default), BABYLON.Mesh.BACKSIDE or BABYLON.Mesh.DOUBLESIDE
	 * Detail here : http://doc.babylonjs.com/tutorials/02._Discover_Basic_Elements#side-orientation
	 * The mesh can be set to updatable with the boolean parameter `updatable` (default false) if its internal geometry is supposed to change once created.
	 */
	static function CreateTorusKnot(name:String, radius:Float, tube:Float, radialSegments:Float, tubularSegments:Float, p:Float, q:Float, scene:Scene, ?updatable:Bool, ?sideOrientation:Float) : Mesh;
	/**
	 * Creates a line mesh.
	 * Please consider using the same method from the MeshBuilder class instead.
	 * A line mesh is considered as a parametric shape since it has no predefined original shape. Its shape is determined by the passed array of points as an input parameter.
	 * Like every other parametric shape, it is dynamically updatable by passing an existing instance of LineMesh to this static function.
	 * The parameter `points` is an array successive Vector3.
	 * The optional parameter `instance` is an instance of an existing LineMesh object to be updated with the passed `points` parameter : http://doc.babylonjs.com/tutorials/How_to_dynamically_morph_a_mesh#lines-and-dashedlines
	 * When updating an instance, remember that only point positions can change, not the number of points.
	 * The mesh can be set to updatable with the boolean parameter `updatable` (default false) if its internal geometry is supposed to change once created.
	 */
	static function CreateLines(name:String, points:Array<Vector3>, scene:Scene, ?updatable:Bool, ?instance:LinesMesh) : LinesMesh;
	/**
	 * Creates a dashed line mesh.
	 * Please consider using the same method from the MeshBuilder class instead.
	 * A dashed line mesh is considered as a parametric shape since it has no predefined original shape. Its shape is determined by the passed array of points as an input parameter.
	 * Like every other parametric shape, it is dynamically updatable by passing an existing instance of LineMesh to this static function.
	 * The parameter `points` is an array successive Vector3.
	 * The parameter `dashNb` is the intended total number of dashes (positive integer, default 200).
	 * The parameter `dashSize` is the size of the dashes relatively the dash number (positive float, default 3).
	 * The parameter `gapSize` is the size of the gap between two successive dashes relatively the dash number (positive float, default 1).
	 * The optional parameter `instance` is an instance of an existing LineMesh object to be updated with the passed `points` parameter : http://doc.babylonjs.com/tutorials/How_to_dynamically_morph_a_mesh#lines-and-dashedlines
	 * When updating an instance, remember that only point positions can change, not the number of points.
	 * The mesh can be set to updatable with the boolean parameter `updatable` (default false) if its internal geometry is supposed to change once created.
	 */
	static function CreateDashedLines(name:String, points:Array<Vector3>, dashSize:Float, gapSize:Float, dashNb:Float, scene:Scene, ?updatable:Bool, ?instance:LinesMesh) : LinesMesh;
	/**
	 * Creates an extruded shape mesh.
	 * The extrusion is a parametric shape :  http://doc.babylonjs.com/tutorials/Parametric_Shapes.  It has no predefined shape. Its final shape will depend on the input parameters.
	 * Please consider using the same method from the MeshBuilder class instead.
	 *
	 * Please read this full tutorial to understand how to design an extruded shape : http://doc.babylonjs.com/tutorials/Parametric_Shapes#extrusion
	 * The parameter `shape` is a required array of successive Vector3. This array depicts the shape to be extruded in its local space : the shape must be designed in the xOy plane and will be
	 * extruded along the Z axis.
	 * The parameter `path` is a required array of successive Vector3. This is the axis curve the shape is extruded along.
	 * The parameter `rotation` (float, default 0 radians) is the angle value to rotate the shape each step (each path point), from the former step (so rotation added each step) along the curve.
	 * The parameter `scale` (float, default 1) is the value to scale the shape.
	 * The parameter `cap` sets the way the extruded shape is capped. Possible values : BABYLON.Mesh.NO_CAP (default), BABYLON.Mesh.CAP_START, BABYLON.Mesh.CAP_END, BABYLON.Mesh.CAP_ALL
	 * The optional parameter `instance` is an instance of an existing ExtrudedShape object to be updated with the passed `shape`, `path`, `scale` or `rotation` parameters : http://doc.babylonjs.com/tutorials/How_to_dynamically_morph_a_mesh#extruded-shape
	 * Remember you can only change the shape or path point positions, not their number when updating an extruded shape.
	 * You can also set the mesh side orientation with the values : BABYLON.Mesh.FRONTSIDE (default), BABYLON.Mesh.BACKSIDE or BABYLON.Mesh.DOUBLESIDE
	 * Detail here : http://doc.babylonjs.com/tutorials/02._Discover_Basic_Elements#side-orientation
	 * The mesh can be set to updatable with the boolean parameter `updatable` (default false) if its internal geometry is supposed to change once created.
	 */
	static function ExtrudeShape(name:String, shape:Array<Vector3>, path:Array<Vector3>, scale:Float, rotation:Float, cap:Float, scene:Scene, ?updatable:Bool, ?sideOrientation:Float, ?instance:Mesh) : Mesh;
	/**
	 * Creates an custom extruded shape mesh.
	 * The custom extrusion is a parametric shape :  http://doc.babylonjs.com/tutorials/Parametric_Shapes.  It has no predefined shape. Its final shape will depend on the input parameters.
	 * Please consider using the same method from the MeshBuilder class instead.
	 *
	 * Please read this full tutorial to understand how to design a custom extruded shape : http://doc.babylonjs.com/tutorials/Parametric_Shapes#extrusion
	 * The parameter `shape` is a required array of successive Vector3. This array depicts the shape to be extruded in its local space : the shape must be designed in the xOy plane and will be
	 * extruded along the Z axis.
	 * The parameter `path` is a required array of successive Vector3. This is the axis curve the shape is extruded along.
	 * The parameter `rotationFunction` (JS function) is a custom Javascript function called on each path point. This function is passed the position i of the point in the path
	 * and the distance of this point from the begining of the path :
	 * ```javascript
	 * var rotationFunction = function(i, distance) {
	 *     // do things
	 *     return rotationValue; }
	 * ```
	 * It must returns a float value that will be the rotation in radians applied to the shape on each path point.
	 * The parameter `scaleFunction` (JS function) is a custom Javascript function called on each path point. This function is passed the position i of the point in the path
	 * and the distance of this point from the begining of the path :
	 * ```javascript
	 * var scaleFunction = function(i, distance) {
	 *     // do things
	 *    return scaleValue;}
	 * ```
	 * It must returns a float value that will be the scale value applied to the shape on each path point.
	 * The parameter `ribbonClosePath` (boolean, default false) forces the extrusion underlying ribbon to close all the paths in its `pathArray`.
	 * The parameter `ribbonCloseArray` (boolean, default false) forces the extrusion underlying ribbon to close its `pathArray`.
	 * The parameter `cap` sets the way the extruded shape is capped. Possible values : BABYLON.Mesh.NO_CAP (default), BABYLON.Mesh.CAP_START, BABYLON.Mesh.CAP_END, BABYLON.Mesh.CAP_ALL
	 * The optional parameter `instance` is an instance of an existing ExtrudedShape object to be updated with the passed `shape`, `path`, `scale` or `rotation` parameters : http://doc.babylonjs.com/tutorials/How_to_dynamically_morph_a_mesh#extruded-shape
	 * Remember you can only change the shape or path point positions, not their number when updating an extruded shape.
	 * You can also set the mesh side orientation with the values : BABYLON.Mesh.FRONTSIDE (default), BABYLON.Mesh.BACKSIDE or BABYLON.Mesh.DOUBLESIDE
	 * Detail here : http://doc.babylonjs.com/tutorials/02._Discover_Basic_Elements#side-orientation
	 * The mesh can be set to updatable with the boolean parameter `updatable` (default false) if its internal geometry is supposed to change once created.
	 */
	static function ExtrudeShapeCustom(name:String, shape:Array<Vector3>, path:Array<Vector3>, scaleFunction:Dynamic, rotationFunction:Dynamic, ribbonCloseArray:Bool, ribbonClosePath:Bool, cap:Float, scene:Scene, ?updatable:Bool, ?sideOrientation:Float, ?instance:Mesh) : Mesh;
	/**
	 * Creates lathe mesh.
	 * The lathe is a shape with a symetry axis : a 2D model shape is rotated around this axis to design the lathe.
	 * Please consider using the same method from the MeshBuilder class instead.
	 * The parameter `shape` is a required array of successive Vector3. This array depicts the shape to be rotated in its local space : the shape must be designed in the xOy plane and will be
	 * rotated around the Y axis. It's usually a 2D shape, so the Vector3 z coordinates are often set to zero.
	 * The parameter `radius` (positive float, default 1) is the radius value of the lathe.
	 * The parameter `tessellation` (positive integer, default 64) is the side number of the lathe.
	 * You can also set the mesh side orientation with the values : BABYLON.Mesh.FRONTSIDE (default), BABYLON.Mesh.BACKSIDE or BABYLON.Mesh.DOUBLESIDE
	 * Detail here : http://doc.babylonjs.com/tutorials/02._Discover_Basic_Elements#side-orientation
	 * The mesh can be set to updatable with the boolean parameter `updatable` (default false) if its internal geometry is supposed to change once created.
	 */
	static function CreateLathe(name:String, shape:Array<Vector3>, radius:Float, tessellation:Float, scene:Scene, ?updatable:Bool, ?sideOrientation:Float) : Mesh;
	/**
	 * Creates a plane mesh.
	 * Please consider using the same method from the MeshBuilder class instead.
	 * The parameter `size` sets the size (float) of both sides of the plane at once (default 1).
	 * You can also set the mesh side orientation with the values : BABYLON.Mesh.FRONTSIDE (default), BABYLON.Mesh.BACKSIDE or BABYLON.Mesh.DOUBLESIDE
	 * Detail here : http://doc.babylonjs.com/tutorials/02._Discover_Basic_Elements#side-orientation
	 * The mesh can be set to updatable with the boolean parameter `updatable` (default false) if its internal geometry is supposed to change once created.
	 */
	static function CreatePlane(name:String, size:Float, scene:Scene, ?updatable:Bool, ?sideOrientation:Float) : Mesh;
	/**
	 * Creates a ground mesh.
	 * Please consider using the same method from the MeshBuilder class instead.
	 * The parameters `width` and `height` (floats, default 1) set the width and height sizes of the ground.
	 * The parameter `subdivisions` (positive integer) sets the number of subdivisions per side.
	 * The mesh can be set to updatable with the boolean parameter `updatable` (default false) if its internal geometry is supposed to change once created.
	 */
	static function CreateGround(name:String, width:Float, height:Float, subdivisions:Float, scene:Scene, ?updatable:Bool) : Mesh;
	/**
	 * Creates a tiled ground mesh.
	 * Please consider using the same method from the MeshBuilder class instead.
	 * The parameters `xmin` and `xmax` (floats, default -1 and 1) set the ground minimum and maximum X coordinates.
	 * The parameters `zmin` and `zmax` (floats, default -1 and 1) set the ground minimum and maximum Z coordinates.
	 * The parameter `subdivisions` is a javascript object `{w: positive integer, h: positive integer}` (default `{w: 6, h: 6}`). `w` and `h` are the
	 * numbers of subdivisions on the ground width and height. Each subdivision is called a tile.
	 * The parameter `precision` is a javascript object `{w: positive integer, h: positive integer}` (default `{w: 2, h: 2}`). `w` and `h` are the
	 * numbers of subdivisions on the ground width and height of each tile.
	 * The mesh can be set to updatable with the boolean parameter `updatable` (default false) if its internal geometry is supposed to change once created.
	 */
	static function CreateTiledGround(name:String, xmin:Float, zmin:Float, xmax:Float, zmax:Float, subdivisions:
	{
		w : Float,
		h : Float
	}, precision:
	{
		w : Float,
		h : Float
	}, scene:Scene, ?updatable:Bool) : Mesh;
	/**
	 * Creates a ground mesh from a height map.
	 * tuto : http://doc.babylonjs.com/tutorials/14._Height_Map
	 * Please consider using the same method from the MeshBuilder class instead.
	 * The parameter `url` sets the URL of the height map image resource.
	 * The parameters `width` and `height` (positive floats, default 10) set the ground width and height sizes.
	 * The parameter `subdivisions` (positive integer, default 1) sets the number of subdivision per side.
	 * The parameter `minHeight` (float, default 0) is the minimum altitude on the ground.
	 * The parameter `maxHeight` (float, default 1) is the maximum altitude on the ground.
	 * The parameter `onReady` is a javascript callback function that will be called  once the mesh is just built (the height map download can last some time).
	 * This function is passed the newly built mesh :
	 * ```javascript
	 * function(mesh) { // do things
	 *     return; }
	 * ```
	 * The mesh can be set to updatable with the boolean parameter `updatable` (default false) if its internal geometry is supposed to change once created.
	 */
	static function CreateGroundFromHeightMap(name:String, url:String, width:Float, height:Float, subdivisions:Float, minHeight:Float, maxHeight:Float, scene:Scene, ?updatable:Bool, ?onReady:GroundMesh->Void) : GroundMesh;
	/**
	 * Creates a tube mesh.
	 * The tube is a parametric shape :  http://doc.babylonjs.com/tutorials/Parametric_Shapes.  It has no predefined shape. Its final shape will depend on the input parameters.
	 * Please consider using the same method from the MeshBuilder class instead.
	 * The parameter `path` is a required array of successive Vector3. It is the curve used as the axis of the tube.
	 * The parameter `radius` (positive float, default 1) sets the tube radius size.
	 * The parameter `tessellation` (positive float, default 64) is the number of sides on the tubular surface.
	 * The parameter `radiusFunction` (javascript function, default null) is a vanilla javascript function. If it is not null, it overwrittes the parameter `radius`.
	 * This function is called on each point of the tube path and is passed the index `i` of the i-th point and the distance of this point from the first point of the path.
	 * It must return a radius value (positive float) :
	 * ```javascript
	 * radiusFunction = function(i, distance) {
	 *     // do things
	 *     return radius; }
	 * ```
	 * The parameter `cap` sets the way the extruded shape is capped. Possible values : BABYLON.Mesh.NO_CAP (default), BABYLON.Mesh.CAP_START, BABYLON.Mesh.CAP_END, BABYLON.Mesh.CAP_ALL
	 * The optional parameter `instance` is an instance of an existing Tube object to be updated with the passed `pathArray` parameter : http://doc.babylonjs.com/tutorials/How_to_dynamically_morph_a_mesh#tube
	 * You can also set the mesh side orientation with the values : BABYLON.Mesh.FRONTSIDE (default), BABYLON.Mesh.BACKSIDE or BABYLON.Mesh.DOUBLESIDE
	 * Detail here : http://doc.babylonjs.com/tutorials/02._Discover_Basic_Elements#side-orientation
	 * The mesh can be set to updatable with the boolean parameter `updatable` (default false) if its internal geometry is supposed to change once created.
	 */
	static function CreateTube(name:String, path:Array<Vector3>, radius:Float, tessellation:Float, radiusFunction:Float->Float->Float, cap:Float, scene:Scene, ?updatable:Bool, ?sideOrientation:Float, ?instance:Mesh) : Mesh;
	/**
	 * Creates a polyhedron mesh.
	 * Please consider using the same method from the MeshBuilder class instead.
	 * The parameter `type` (positive integer, max 14, default 0) sets the polyhedron type to build among the 15 embbeded types. Please refer to the type sheet in the tutorial
	 *  to choose the wanted type.
	 * The parameter `size` (positive float, default 1) sets the polygon size.
	 * You can overwrite the `size` on each dimension bu using the parameters `sizeX`, `sizeY` or `sizeZ` (positive floats, default to `size` value).
	 * You can build other polyhedron types than the 15 embbeded ones by setting the parameter `custom` (`polyhedronObject`, default null). If you set the parameter `custom`, this overwrittes the parameter `type`.
	 * A `polyhedronObject` is a formatted javascript object. You'll find a full file with pre-set polyhedra here : https://github.com/BabylonJS/Extensions/tree/master/Polyhedron
	 * You can set the color and the UV of each side of the polyhedron with the parameters `faceColors` (Color4, default `(1, 1, 1, 1)`) and faceUV (Vector4, default `(0, 0, 1, 1)`).
	 * To understand how to set `faceUV` or `faceColors`, please read this by considering the right number of faces of your polyhedron, instead of only 6 for the box : http://doc.babylonjs.com/tutorials/CreateBox_Per_Face_Textures_And_Colors
	 * The parameter `flat` (boolean, default true). If set to false, it gives the polyhedron a single global face, so less vertices and shared normals. In this case, `faceColors` and `faceUV` are ignored.
	 * You can also set the mesh side orientation with the values : BABYLON.Mesh.FRONTSIDE (default), BABYLON.Mesh.BACKSIDE or BABYLON.Mesh.DOUBLESIDE
	 * Detail here : http://doc.babylonjs.com/tutorials/02._Discover_Basic_Elements#side-orientation
	 * The mesh can be set to updatable with the boolean parameter `updatable` (default false) if its internal geometry is supposed to change once created.
	 */
	static function CreatePolyhedron(name:String, options:
	{
		@:optional var type : Float;
		@:optional var size : Float;
		@:optional var sizeX : Float;
		@:optional var sizeY : Float;
		@:optional var sizeZ : Float;
		@:optional var custom : Dynamic;
		@:optional var faceUV : Array<Vector4>;
		@:optional var faceColors : Array<Color4>;
		@:optional var updatable : Bool;
		@:optional var sideOrientation : Float;
	}, scene:Scene) : Mesh;
	/**
	 * Creates a sphere based upon an icosahedron with 20 triangular faces which can be subdivided.
	 * Please consider using the same method from the MeshBuilder class instead.
	 * The parameter `radius` sets the radius size (float) of the icosphere (default 1).
	 * You can set some different icosphere dimensions, for instance to build an ellipsoid, by using the parameters `radiusX`, `radiusY` and `radiusZ` (all by default have the same value than `radius`).
	 * The parameter `subdivisions` sets the number of subdivisions (postive integer, default 4). The more subdivisions, the more faces on the icosphere whatever its size.
	 * The parameter `flat` (boolean, default true) gives each side its own normals. Set it to false to get a smooth continuous light reflection on the surface.
	 * You can also set the mesh side orientation with the values : BABYLON.Mesh.FRONTSIDE (default), BABYLON.Mesh.BACKSIDE or BABYLON.Mesh.DOUBLESIDE
	 * Detail here : http://doc.babylonjs.com/tutorials/02._Discover_Basic_Elements#side-orientation
	 * The mesh can be set to updatable with the boolean parameter `updatable` (default false) if its internal geometry is supposed to change once created.
	 */
	static function CreateIcoSphere(name:String, options:
	{
		@:optional var radius : Float;
		@:optional var flat : Bool;
		@:optional var subdivisions : Float;
		@:optional var sideOrientation : Float;
		@:optional var updatable : Bool;
	}, scene:Scene) : Mesh;
	/**
	 * Creates a decal mesh.
	 * Please consider using the same method from the MeshBuilder class instead.
	 * A decal is a mesh usually applied as a model onto the surface of another mesh. So don't forget the parameter `sourceMesh` depicting the decal.
	 * The parameter `position` (Vector3, default `(0, 0, 0)`) sets the position of the decal in World coordinates.
	 * The parameter `normal` (Vector3, default Vector3.Up) sets the normal of the mesh where the decal is applied onto in World coordinates.
	 * The parameter `size` (Vector3, default `(1, 1, 1)`) sets the decal scaling.
	 * The parameter `angle` (float in radian, default 0) sets the angle to rotate the decal.
	 */
	static function CreateDecal(name:String, sourceMesh:AbstractMesh, position:Vector3, normal:Vector3, size:Vector3, angle:Float) : Mesh;
	/**
	 * @returns original positions used for CPU skinning.  Useful for integrating Morphing with skeletons in same mesh.
	 */
	function setPositionsForCPUSkinning() : Float32Array;
	/**
	 * @returns original normals used for CPU skinning.  Useful for integrating Morphing with skeletons in same mesh.
	 */
	function setNormalsForCPUSkinning() : Float32Array;
	/**
	 * Update the vertex buffers by applying transformation from the bones
	 * @param {skeleton} skeleton to apply
	 */
	function applySkeleton(skeleton:Skeleton) : Mesh;
	/**
	 * Returns an object `{min:` Vector3`, max:` Vector3`}`
	 * This min and max Vector3 are the minimum and maximum vectors of each mesh bounding box from the passed array, in the World system
	 */
	static function MinMax(meshes:Array<AbstractMesh>) :
	{
		min : Vector3,
		max : Vector3
	};
	/**
	 * Returns a Vector3, the center of the `{min:` Vector3`, max:` Vector3`}` or the center of MinMax vector3 computed from a mesh array.
	 */
	static function Center(meshesOrMinMaxVector:Dynamic) : Vector3;
	/**
	 * Merge the array of meshes into a single mesh for performance reasons.
	 * @param {Array<Mesh>} meshes - The vertices source.  They should all be of the same material.  Entries can empty
	 * @param {boolean} disposeSource - When true (default), dispose of the vertices from the source meshes
	 * @param {boolean} allow32BitsIndices - When the sum of the vertices > 64k, this must be set to true.
	 * @param {Mesh} meshSubclass - When set, vertices inserted into this Mesh.  Meshes can then be merged into a Mesh sub-class.
	 */
	static function MergeMeshes(meshes:Array<Mesh>, ?disposeSource:Bool, ?allow32BitsIndices:Bool, ?meshSubclass:Mesh) : Mesh;
}