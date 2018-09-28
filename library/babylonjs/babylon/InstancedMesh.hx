package babylonjs.babylon;

/**
 * Creates an instance based on a source mesh.
 */
@:native("BABYLON.InstancedMesh")
extern class InstancedMesh extends AbstractMesh
{
	private var _sourceMesh : Dynamic;
	private var _currentLOD : Dynamic;
	//var receiveShadows(default, null) : Bool;
	//var material(default, null) : Null<Material>;
	//var visibility(default, null) : Float;
	//var skeleton(default, null) : Null<Skeleton>;
	//var renderingGroupId : Float;
	var sourceMesh(default, null) : Mesh;
	//var _positions(default, null) : Null<Array<Vector3>>;

	/**
	 * Creates an instance based on a source mesh.
	 */
	@:overload(function(name:String, source:Mesh): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Returns the string "InstancedMesh".
	 */
	override function getClassName() : String;
	/**
	 * Returns the total number of vertices (integer).
	 */
	@:overload(function(): Float{})
	override function getTotalVertices() : Int;
	/**
	 * Is this node ready to be used/rendered
	 * @return {boolean} is it ready
	 */
	override function isReady(?completeCheck:Bool) : Bool;
	/**
	 * Returns a float array or a Float32Array of the requested kind of data : positons, normals, uvs, etc.
	 */
	@:overload(function(kind:String,?copyWhenShared:Bool): Null<FloatArray>{})
	override function getVerticesData(kind:String, ?copyWhenShared:Bool, ?forceCopy:Bool) : Null<FloatArray>;
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
	 * 
	 * Returns the Mesh.
	 */
	@:overload(function(kind:String, data:FloatArray,?updatable:Bool,?stride:Float): Mesh{})
	override function setVerticesData(kind:String, data:FloatArray, updatable:Bool) : Void;
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
	 * 
	 * Returns the Mesh.
	 */
	@:overload(function(kind:String, data:FloatArray,?updateExtends:Bool,?makeItUnique:Bool): Mesh{})
	override function updateVerticesData(kind:String, data:FloatArray, ?updateExtends:Bool, ?makeItUnique:Bool) : Void;
	/**
	 * Sets the mesh indices.
	 * Expects an array populated with integers or a typed array (Int32Array, Uint32Array, Uint16Array).
	 * If the mesh has no geometry, a new Geometry object is created and set to the mesh.
	 * This method creates a new index buffer each call.
	 * Returns the Mesh.
	 */
	@:overload(function(indices:IndicesArray,?totalVertices:Null<Float>): Mesh{})
	override function setIndices(indices:IndicesArray, totalVertices:Null<Float>, ?updatable:Bool) : Void;
	/**
	 * Boolean : True if the mesh owns the requested kind of data.
	 */
	override function isVerticesDataPresent(kind:String) : Bool;
	/**
	 * Returns an array of indices (IndicesArray).
	 */
	@:overload(function(): Null<IndicesArray>{})
	override function getIndices(?copyWhenShared:Bool) : Null<IndicesArray>;
	/**
	 * Sets a new updated BoundingInfo to the mesh.
	 * Returns the mesh.
	 */
	function refreshBoundingInfo() : InstancedMesh;
	@:overload(function(): InstancedMesh{})
	override function _preActivate() : Void;
	@:overload(function(renderId:Float): InstancedMesh{})
	override function _activate(renderId:Float) : Void;
	/**
	 * Returns the current associated LOD AbstractMesh.
	 */
	override function getLOD(camera:Camera) : AbstractMesh;
	function _syncSubMeshes() : InstancedMesh;
	override function _generatePointsArray() : Bool;
	/**
	 * Creates a new InstancedMesh from the current mesh.
	 * - name (string) : the cloned mesh name
	 * - newParent (optional Node) : the optional Node to parent the clone to.
	 * - doNotCloneChildren (optional boolean, default `false`) : if `true` the model children aren't cloned.
	 * 
	 * Returns the clone.
	 */
	@:overload(function(name:String, newParent:Node,?doNotCloneChildren:Bool): InstancedMesh{})
	override function clone(name:String, newParent:Node, ?doNotCloneChildren:Bool) : Null<TransformNode>;
	/**
	 * Disposes the InstancedMesh.
	 * Returns nothing.
	 */
	override function dispose(?doNotRecurse:Bool, ?disposeMaterialAndTextures:Bool) : Void;
}