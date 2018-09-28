package babylonjs.babylon;

/**
 * Class used to store geometry data (vertex buffers + index buffer)
 */
@:native("BABYLON.Geometry")
extern class Geometry
	implements IGetSetVerticesData
{
	/**
	 * Gets or sets the unique ID of the geometry
	 */
	var id : String;
	/**
	 * Gets the delay loading state of the geometry (none by default which means not delayed)
	 */
	var delayLoadState : Float;
	/**
	 * Gets the file containing the data to load when running in delay load state
	 */
	var delayLoadingFile : Null<String>;
	/**
	 * Callback called when the geometry is updated
	 */
	var onGeometryUpdated : Geometry->String->Void;
	private var _scene : Dynamic;
	private var _engine : Dynamic;
	private var _meshes : Dynamic;
	private var _totalVertices : Dynamic;
	private var _indices : Dynamic;
	private var _vertexBuffers : Dynamic;
	private var _isDisposed : Dynamic;
	private var _extend : Dynamic;
	private var _boundingBias : Dynamic;
	/**
	 * @hidden 
	 */
	var _delayInfo : Array<String>;
	private var _indexBuffer : Dynamic;
	private var _indexBufferIsUpdatable : Dynamic;
	/**
	 * @hidden 
	 */
	var _boundingInfo : Null<BoundingInfo>;
	/**
	 * @hidden 
	 */
	var _delayLoadingFunction : Null<Dynamic->Geometry->Void>;
	/**
	 * @hidden 
	 */
	var _softwareSkinningRenderId : Float;
	private var _vertexArrayObjects : Dynamic;
	private var _updatable : Dynamic;
	/**
	 * @hidden 
	 */
	var _positions : Null<Array<Vector3>>;
	/**
	 * Gets or sets the Bias Vector to apply on the bounding elements (box/sphere), the max extend is computed as v += v * bias.x + bias.y, the min is computed as v -= v * bias.x + bias.y
	 * Gets or sets the Bias Vector to apply on the bounding elements (box/sphere), the max extend is computed as v += v * bias.x + bias.y, the min is computed as v -= v * bias.x + bias.y
	 */
	var boundingBias : Vector2;
	/**
	 * Gets the current extend of the geometry
	 */
	var extend(default, null) : { var minimum : Vector3; var maximum : Vector3; };
	/**
	 * Gets a value indicating that the geometry should not be serialized
	 */
	var doNotSerialize(default, null) : Bool;

	/**
	 * Static function used to attach a new empty geometry to a mesh
	 * @returns the new {BABYLON.Geometry}
	 */
	static function CreateGeometryForMesh(mesh:Mesh) : Geometry;
	/**
	 * Class used to store geometry data (vertex buffers + index buffer)
	 */
	function new(id:String, scene:Scene, ?vertexData:VertexData, ?updatable:Bool, ?mesh:Null<Mesh>) : Void;
	/**
	 * Gets the hosting scene
	 * @returns the hosting {BABYLON.Scene}
	 */
	function getScene() : Scene;
	/**
	 * Gets the hosting engine
	 * @returns the hosting {BABYLON.Engine}
	 */
	function getEngine() : Engine;
	/**
	 * Defines if the geometry is ready to use
	 * @returns true if the geometry is ready to be used
	 */
	function isReady() : Bool;
	/**
	 * @hidden 
	 */
	function _rebuild() : Void;
	/**
	 * Affects all gemetry data in one call
	 */
	function setAllVerticesData(vertexData:VertexData, ?updatable:Bool) : Void;
	/**
	 * Set specific vertex data
	 */
	@:overload(function(kind:String, data:FloatArray,?updatable:Bool,?stride:Float): Void{})
	function setVerticesData(kind:String, data:FloatArray, updatable:Bool) : Void;
	/**
	 * Removes a specific vertex data
	 */
	function removeVerticesData(kind:String) : Void;
	/**
	 * Affect a vertex buffer to the geometry. the vertexBuffer.getKind() function is used to determine where to store the data
	 */
	function setVerticesBuffer(buffer:VertexBuffer, ?totalVertices:Null<Float>) : Void;
	/**
	 * Update a specific vertex buffer
	 * This function will directly update the underlying WebGLBuffer according to the passed numeric array or Float32Array
	 * It will do nothing if the buffer is not updatable
	 */
	function updateVerticesDataDirectly(kind:String, data:DataArray, offset:Float, ?useBytes:Bool) : Void;
	/**
	 * Update a specific vertex buffer
	 * This function will create a new buffer if the current one is not updatable
	 */
	@:overload(function(kind:String, data:FloatArray,?updateExtends:Bool): Void{})
	function updateVerticesData(kind:String, data:FloatArray, ?updateExtends:Bool, ?makeItUnique:Bool) : Void;
	private function _updateBoundingInfo(updateExtends:Dynamic, data:Dynamic) : Dynamic;
	/**
	 * @hidden 
	 */
	function _bind(effect:Null<Effect>, ?indexToBind:Null<WebGLBuffer>) : Void;
	/**
	 * Gets total number of vertices
	 * @returns the total number of vertices
	 */
	function getTotalVertices() : Float;
	/**
	 * Gets a specific vertex data attached to this geometry. Float data is constructed if the vertex buffer data cannot be returned directly.
	 * @returns a float array containing vertex data
	 */
	function getVerticesData(kind:String, ?copyWhenShared:Bool, ?forceCopy:Bool) : Null<FloatArray>;
	/**
	 * Returns a boolean defining if the vertex data for the requested `kind` is updatable
	 * @returns true if the vertex buffer with the specified kind is updatable
	 */
	function isVertexBufferUpdatable(kind:String) : Bool;
	/**
	 * Gets a specific vertex buffer
	 * @returns a {BABYLON.VertexBuffer}
	 */
	function getVertexBuffer(kind:String) : Null<VertexBuffer>;
	/**
	 * Returns all vertex buffers
	 * @return an object holding all vertex buffers indexed by kind
	 */
	function getVertexBuffers() : Null<Dynamic<VertexBuffer>>;
	/**
	 * Gets a boolean indicating if specific vertex buffer is present
	 * @returns true if data is present
	 */
	function isVerticesDataPresent(kind:String) : Bool;
	/**
	 * Gets a list of all attached data kinds (Position, normal, etc...)
	 * @returns a list of string containing all kinds
	 */
	function getVerticesDataKinds() : Array<String>;
	/**
	 * Update index buffer
	 */
	function updateIndices(indices:IndicesArray, ?offset:Float) : Void;
	/**
	 * Creates a new index buffer
	 */
	@:overload(function(indices:IndicesArray,?totalVertices:Null<Float>,?updatable:Bool): Void{})
	function setIndices(indices:IndicesArray, totalVertices:Null<Float>, ?updatable:Bool) : Void;
	/**
	 * Return the total number of indices
	 * @returns the total number of indices
	 */
	function getTotalIndices() : Float;
	/**
	 * Gets the index buffer array
	 * @returns the index buffer array
	 */
	function getIndices(?copyWhenShared:Bool) : Null<IndicesArray>;
	/**
	 * Gets the index buffer
	 * @return the index buffer
	 */
	function getIndexBuffer() : Null<WebGLBuffer>;
	/**
	 * @hidden 
	 */
	function _releaseVertexArrayObject(?effect:Null<Effect>) : Void;
	/**
	 * Release the associated resources for a specific mesh
	 */
	function releaseForMesh(mesh:Mesh, ?shouldDispose:Bool) : Void;
	/**
	 * Apply current geometry to a given mesh
	 */
	function applyToMesh(mesh:Mesh) : Void;
	private function _updateExtend(?data:Dynamic) : Dynamic;
	private function _applyToMesh(mesh:Dynamic) : Dynamic;
	private function notifyUpdate(?kind:Dynamic) : Dynamic;
	/**
	 * Load the geometry if it was flagged as delay loaded
	 */
	function load(scene:Scene, ?onLoaded:Void->Void) : Void;
	private function _queueLoad(scene:Dynamic, ?onLoaded:Dynamic) : Dynamic;
	/**
	 * Invert the geometry to move from a right handed system to a left handed one.
	 */
	function toLeftHanded() : Void;
	/**
	 * @hidden 
	 */
	function _resetPointsArrayCache() : Void;
	/**
	 * @hidden 
	 */
	function _generatePointsArray() : Bool;
	/**
	 * Gets a value indicating if the geometry is disposed
	 * @returns true if the geometry was disposed
	 */
	function isDisposed() : Bool;
	private function _disposeVertexArrayObjects() : Dynamic;
	/**
	 * Free all associated resources
	 */
	function dispose() : Void;
	/**
	 * Clone the current geometry into a new geometry
	 * @returns a new geometry object
	 */
	function copy(id:String) : Geometry;
	/**
	 * Serialize the current geometry info (and not the vertices data) into a JSON object
	 * @return a JSON representation of the current geometry data (without the vertices data)
	 */
	function serialize() : Dynamic;
	private function toNumberArray(origin:Dynamic) : Dynamic;
	/**
	 * Serialize all vertices data into a JSON oject
	 * @returns a JSON representation of the current geometry data
	 */
	function serializeVerticeData() : Dynamic;
	/**
	 * Extracts a clone of a mesh geometry
	 * @returns the new geometry object
	 */
	static function ExtractFromMesh(mesh:Mesh, id:String) : Null<Geometry>;
	/**
	 * You should now use Tools.RandomId(), this method is still here for legacy reasons.
	 * Implementation from http://stackoverflow.com/questions/105034/how-to-create-a-guid-uuid-in-javascript/2117523#answer-2117523
	 * Be aware Math.random() could cause collisions, but:
	 * "All but 6 of the 128 bits of the ID are randomly generated, which means that for any two ids, there's a 1 in 2^^122 (or 5.3x10^^36) chance they'll collide"
	 * @returns a string containing a new GUID
	 */
	static function RandomId() : String;
	/**
	 * @hidden 
	 */
	static function _ImportGeometry(parsedGeometry:Dynamic, mesh:Mesh) : Void;
	private static function _CleanMatricesWeights(parsedGeometry:Dynamic, mesh:Dynamic) : Dynamic;
	/**
	 * Create a new geometry from persisted data (Using .babylon file format)
	 * @returns the new geometry object
	 */
	static function Parse(parsedVertexData:Dynamic, scene:Scene, rootUrl:String) : Null<Geometry>;
}