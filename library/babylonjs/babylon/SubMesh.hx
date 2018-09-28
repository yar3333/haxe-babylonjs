package babylonjs.babylon;

@:native("BABYLON.SubMesh")
extern class SubMesh extends BaseSubMesh
	implements ICullable
{
	var materialIndex : Float;
	var verticesStart : Float;
	var verticesCount : Float;
	var indexStart : Float;
	var indexCount : Float;
	var linesIndexCount : Float;
	private var _mesh : Dynamic;
	private var _renderingMesh : Dynamic;
	private var _boundingInfo : Dynamic;
	private var _linesIndexBuffer : Dynamic;
	var _lastColliderWorldVertices : Null<Array<Vector3>>;
	var _trianglePlanes : Array<Plane>;
	var _lastColliderTransformMatrix : Matrix;
	var _renderId : Float;
	var _alphaIndex : Float;
	var _distanceToCamera : Float;
	var _id : Float;
	private var _currentMaterial : Dynamic;
	var IsGlobal(default, null) : Bool;

	static function AddToMesh(materialIndex:Float, verticesStart:Float, verticesCount:Float, indexStart:Float, indexCount:Float, mesh:AbstractMesh, ?renderingMesh:Mesh, ?createBoundingBox:Bool) : SubMesh;
	function new(materialIndex:Float, verticesStart:Float, verticesCount:Float, indexStart:Float, indexCount:Float, mesh:AbstractMesh, ?renderingMesh:Mesh, ?createBoundingBox:Bool) : Void;
	/**
	 * Returns the submesh BoudingInfo object.
	 */
	function getBoundingInfo() : BoundingInfo;
	/**
	 * Sets the submesh BoundingInfo.
	 * Return the SubMesh.
	 */
	function setBoundingInfo(boundingInfo:BoundingInfo) : SubMesh;
	/**
	 * Returns the mesh of the current submesh.
	 */
	function getMesh() : AbstractMesh;
	/**
	 * Returns the rendering mesh of the submesh.
	 */
	function getRenderingMesh() : Mesh;
	/**
	 * Returns the submesh material.
	 */
	function getMaterial() : Null<Material>;
	/**
	 * Sets a new updated BoundingInfo object to the submesh.
	 * Returns the SubMesh.
	 */
	function refreshBoundingInfo() : SubMesh;
	function _checkCollision(collider:Collider) : Bool;
	/**
	 * Updates the submesh BoundingInfo.
	 * Returns the Submesh.
	 */
	function updateBoundingInfo(world:Matrix) : SubMesh;
	/**
	 * True is the submesh bounding box intersects the frustum defined by the passed array of planes.
	 * Boolean returned.
	 */
	function isInFrustum(frustumPlanes:Array<Plane>) : Bool;
	/**
	 * True is the submesh bounding box is completely inside the frustum defined by the passed array of planes.
	 * Boolean returned.
	 */
	function isCompletelyInFrustum(frustumPlanes:Array<Plane>) : Bool;
	/**
	 * Renders the submesh.
	 * Returns it.
	 */
	function render(enableAlphaMode:Bool) : SubMesh;
	/**
	 * Returns a new Index Buffer.
	 * Type returned : WebGLBuffer.
	 */
	function getLinesIndexBuffer(indices:IndicesArray, engine:Engine) : WebGLBuffer;
	/**
	 * True is the passed Ray intersects the submesh bounding box.
	 * Boolean returned.
	 */
	function canIntersects(ray:Ray) : Bool;
	/**
	 * Returns an object IntersectionInfo.
	 */
	function intersects(ray:Ray, positions:Array<Vector3>, indices:IndicesArray, ?fastCheck:Bool) : Null<IntersectionInfo>;
	function _rebuild() : Void;
	/**
	 * Creates a new Submesh from the passed Mesh.
	 */
	function clone(newMesh:AbstractMesh, ?newRenderingMesh:Mesh) : SubMesh;
	/**
	 * Disposes the Submesh.
	 * Returns nothing.
	 */
	function dispose() : Void;
	/**
	 * Creates a new Submesh from the passed parameters :
	 * - materialIndex (integer) : the index of the main mesh material.
	 * - startIndex (integer) : the index where to start the copy in the mesh indices array.
	 * - indexCount (integer) : the number of indices to copy then from the startIndex.
	 * - mesh (Mesh) : the main mesh to create the submesh from.
	 * - renderingMesh (optional Mesh) : rendering mesh.
	 */
	static function CreateFromIndices(materialIndex:Float, startIndex:Float, indexCount:Float, mesh:AbstractMesh, ?renderingMesh:Mesh) : SubMesh;
}