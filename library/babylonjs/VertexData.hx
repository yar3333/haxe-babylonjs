package babylonjs;

/**
 * This class contains the various kinds of data on every vertex of a mesh used in determining its shape and appearance
 */
@:native("BABYLON.VertexData")
extern class VertexData
{
	/**
	 * An array of the x, y, z position of each vertex  [...., x, y, z, .....]
	 */
	var positions : Null<FloatArray>;
	/**
	 * An array of the x, y, z normal vector of each vertex  [...., x, y, z, .....]
	 */
	var normals : Null<FloatArray>;
	/**
	 * An array of the x, y, z tangent vector of each vertex  [...., x, y, z, .....]
	 */
	var tangents : Null<FloatArray>;
	/**
	 * An array of u,v which maps a texture image onto each vertex  [...., u, v, .....]
	 */
	var uvs : Null<FloatArray>;
	/**
	 * A second array of u,v which maps a texture image onto each vertex  [...., u, v, .....]
	 */
	var uvs2 : Null<FloatArray>;
	/**
	 * A third array of u,v which maps a texture image onto each vertex  [...., u, v, .....]
	 */
	var uvs3 : Null<FloatArray>;
	/**
	 * A fourth array of u,v which maps a texture image onto each vertex  [...., u, v, .....]
	 */
	var uvs4 : Null<FloatArray>;
	/**
	 * A fifth array of u,v which maps a texture image onto each vertex  [...., u, v, .....]
	 */
	var uvs5 : Null<FloatArray>;
	/**
	 * A sixth array of u,v which maps a texture image onto each vertex  [...., u, v, .....]
	 */
	var uvs6 : Null<FloatArray>;
	/**
	 * An array of the r, g, b, a, color of each vertex  [...., r, g, b, a, .....]
	 */
	var colors : Null<FloatArray>;
	/**
	 * An array containing the list of indices to the array of matrices produced by bones, each vertex have up to 4 indices (8 if the matricesIndicesExtra is set).
	 */
	var matricesIndices : Null<FloatArray>;
	/**
	 * An array containing the list of weights defining the weight of each indexed matrix in the final computation
	 */
	var matricesWeights : Null<FloatArray>;
	/**
	 * An array extending the number of possible indices
	 */
	var matricesIndicesExtra : Null<FloatArray>;
	/**
	 * An array extending the number of possible weights when the number of indices is extended
	 */
	var matricesWeightsExtra : Null<FloatArray>;
	/**
	 * An array of i, j, k the three vertex indices required for each triangular facet  [...., i, j, k .....]
	 */
	var indices : Null<IndicesArray>;

	/**
	 * Uses the passed data array to set the set the values for the specified kind of data
	 */
	function set(data:FloatArray, kind:String) : Void;
	/**
	 * Associates the vertexData to the passed Mesh.
	 * Sets it as updatable or not (default `false`)
	 * @returns the VertexData
	 */
	function applyToMesh(mesh:Mesh, ?updatable:Bool) : VertexData;
	/**
	 * Associates the vertexData to the passed Geometry.
	 * Sets it as updatable or not (default `false`)
	 * @returns VertexData
	 */
	function applyToGeometry(geometry:Geometry, ?updatable:Bool) : VertexData;
	/**
	 * Updates the associated mesh
	 * @returns VertexData
	 */
	function updateMesh(mesh:Mesh, ?updateExtends:Bool, ?makeItUnique:Bool) : VertexData;
	/**
	 * Updates the associated geometry
	 * @returns VertexData.
	 */
	function updateGeometry(geometry:Geometry, ?updateExtends:Bool, ?makeItUnique:Bool) : VertexData;
	private function _applyTo(meshOrGeometry:Dynamic, ?updatable:Dynamic) : Dynamic;
	private function _update(meshOrGeometry:Dynamic, ?updateExtends:Dynamic, ?makeItUnique:Dynamic) : Dynamic;
	/**
	 * Transforms each position and each normal of the vertexData according to the passed Matrix
	 * @returns the VertexData
	 */
	function transform(matrix:Matrix) : VertexData;
	/**
	 * Merges the passed VertexData into the current one
	 * @returns the modified VertexData
	 */
	function merge(other:VertexData) : VertexData;
	private function _mergeElement(source:Dynamic, other:Dynamic) : Dynamic;
	private function _validate() : Dynamic;
	/**
	 * Serializes the VertexData
	 * @returns a serialized object
	 */
	function serialize() : Dynamic;
	/**
	 * Extracts the vertexData from a mesh
	 * @returns the object VertexData associated to the passed mesh
	 */
	static function ExtractFromMesh(mesh:Mesh, ?copyWhenShared:Bool, ?forceCopy:Bool) : VertexData;
	/**
	 * Extracts the vertexData from the geometry
	 * @returns the object VertexData associated to the passed mesh
	 */
	static function ExtractFromGeometry(geometry:Geometry, ?copyWhenShared:Bool, ?forceCopy:Bool) : VertexData;
	private static function _ExtractFrom(meshOrGeometry:Dynamic, ?copyWhenShared:Dynamic, ?forceCopy:Dynamic) : Dynamic;
	/**
	 * Creates the VertexData for a Ribbon
	 * @returns the VertexData of the ribbon
	 */
	static function CreateRibbon(options:{ var pathArray : Array<Array<Vector3>>; @:optional var closeArray : Bool; @:optional var closePath : Bool; @:optional var offset : Float; @:optional var sideOrientation : Float; @:optional var frontUVs : Vector4; @:optional var backUVs : Vector4; @:optional var invertUV : Bool; @:optional var uvs : Array<Vector2>; @:optional var colors : Array<Color4>; }) : VertexData;
	/**
	 * Creates the VertexData for a box
	 * @returns the VertexData of the box
	 */
	static function CreateBox(options:{ @:optional var size : Float; @:optional var width : Float; @:optional var height : Float; @:optional var depth : Float; @:optional var faceUV : Array<Vector4>; @:optional var faceColors : Array<Color4>; @:optional var sideOrientation : Float; @:optional var frontUVs : Vector4; @:optional var backUVs : Vector4; }) : VertexData;
	/**
	 * Creates the VertexData for an ellipsoid, defaults to a sphere
	 * @returns the VertexData of the ellipsoid
	 */
	static function CreateSphere(options:{ @:optional var segments : Float; @:optional var diameter : Float; @:optional var diameterX : Float; @:optional var diameterY : Float; @:optional var diameterZ : Float; @:optional var arc : Float; @:optional var slice : Float; @:optional var sideOrientation : Float; @:optional var frontUVs : Vector4; @:optional var backUVs : Vector4; }) : VertexData;
	/**
	 * Creates the VertexData for a cylinder, cone or prism
	 * @returns the VertexData of the cylinder, cone or prism
	 */
	static function CreateCylinder(options:{ @:optional var height : Float; @:optional var diameterTop : Float; @:optional var diameterBottom : Float; @:optional var diameter : Float; @:optional var tessellation : Float; @:optional var subdivisions : Float; @:optional var arc : Float; @:optional var faceColors : Array<Color4>; @:optional var faceUV : Array<Vector4>; @:optional var hasRings : Bool; @:optional var enclose : Bool; @:optional var sideOrientation : Float; @:optional var frontUVs : Vector4; @:optional var backUVs : Vector4; }) : VertexData;
	/**
	 * Creates the VertexData for a torus
	 * @returns the VertexData of the torus
	 */
	static function CreateTorus(options:{ @:optional var diameter : Float; @:optional var thickness : Float; @:optional var tessellation : Float; @:optional var sideOrientation : Float; @:optional var frontUVs : Vector4; @:optional var backUVs : Vector4; }) : VertexData;
	/**
	 * Creates the VertexData of the LineSystem
	 * @returns the VertexData of the LineSystem
	 */
	static function CreateLineSystem(options:{ var lines : Array<Array<Vector3>>; @:optional var colors : Null<Array<Array<Color4>>>; }) : VertexData;
	/**
	 * Create the VertexData for a DashedLines
	 * @returns the VertexData for the DashedLines
	 */
	static function CreateDashedLines(options:{ var points : Array<Vector3>; @:optional var dashSize : Float; @:optional var gapSize : Float; @:optional var dashNb : Float; }) : VertexData;
	/**
	 * Creates the VertexData for a Ground
	 * @returns the VertexData of the Ground
	 */
	static function CreateGround(options:{ @:optional var width : Float; @:optional var height : Float; @:optional var subdivisions : Float; @:optional var subdivisionsX : Float; @:optional var subdivisionsY : Float; }) : VertexData;
	/**
	 * Creates the VertexData for a TiledGround by subdividing the ground into tiles
	 * @returns the VertexData of the TiledGround
	 */
	static function CreateTiledGround(options:{ var xmin : Float; var zmin : Float; var xmax : Float; var zmax : Float; @:optional var subdivisions : { var w : Float; var h : Float; }; @:optional var precision : { var w : Float; var h : Float; }; }) : VertexData;
	/**
	 * Creates the VertexData of the Ground designed from a heightmap
	 * @returns the VertexData of the Ground designed from a heightmap
	 */
	static function CreateGroundFromHeightMap(options:{ var width : Float; var height : Float; var subdivisions : Float; var minHeight : Float; var maxHeight : Float; var colorFilter : Color3; var buffer : js.html.Uint8Array; var bufferWidth : Float; var bufferHeight : Float; }) : VertexData;
	/**
	 * Creates the VertexData for a Plane
	 * @returns the VertexData of the box
	 */
	static function CreatePlane(options:{ @:optional var size : Float; @:optional var width : Float; @:optional var height : Float; @:optional var sideOrientation : Float; @:optional var frontUVs : Vector4; @:optional var backUVs : Vector4; }) : VertexData;
	/**
	 * Creates the VertexData of the Disc or regular Polygon
	 * @returns the VertexData of the box
	 */
	static function CreateDisc(options:{ @:optional var radius : Float; @:optional var tessellation : Float; @:optional var arc : Float; @:optional var sideOrientation : Float; @:optional var frontUVs : Vector4; @:optional var backUVs : Vector4; }) : VertexData;
	/**
	 * Creates the VertexData for an irregular Polygon in the XoZ plane using a mesh built by polygonTriangulation.build()
	 * All parameters are provided by MeshBuilder.CreatePolygon as needed
	 * @returns the VertexData of the Polygon
	 */
	static function CreatePolygon(polygon:Mesh, sideOrientation:Float, ?fUV:Array<Vector4>, ?fColors:Array<Color4>, ?frontUVs:Vector4, ?backUVs:Vector4) : VertexData;
	/**
	 * Creates the VertexData of the IcoSphere
	 * @returns the VertexData of the IcoSphere
	 */
	static function CreateIcoSphere(options:{ @:optional var radius : Float; @:optional var radiusX : Float; @:optional var radiusY : Float; @:optional var radiusZ : Float; @:optional var flat : Bool; @:optional var subdivisions : Float; @:optional var sideOrientation : Float; @:optional var frontUVs : Vector4; @:optional var backUVs : Vector4; }) : VertexData;
	/**
	 * Creates the VertexData for a Polyhedron
	 * @returns the VertexData of the Polyhedron
	 */
	static function CreatePolyhedron(options:{ @:optional var type : Float; @:optional var size : Float; @:optional var sizeX : Float; @:optional var sizeY : Float; @:optional var sizeZ : Float; @:optional var custom : Dynamic; @:optional var faceUV : Array<Vector4>; @:optional var faceColors : Array<Color4>; @:optional var flat : Bool; @:optional var sideOrientation : Float; @:optional var frontUVs : Vector4; @:optional var backUVs : Vector4; }) : VertexData;
	/**
	 * Creates the VertexData for a TorusKnot
	 * @returns the VertexData of the Torus Knot
	 */
	static function CreateTorusKnot(options:{ @:optional var radius : Float; @:optional var tube : Float; @:optional var radialSegments : Float; @:optional var tubularSegments : Float; @:optional var p : Float; @:optional var q : Float; @:optional var sideOrientation : Float; @:optional var frontUVs : Vector4; @:optional var backUVs : Vector4; }) : VertexData;
	/**
	 * Compute normals for given positions and indices
	 */
	static function ComputeNormals(positions:Dynamic, indices:Dynamic, normals:Dynamic, ?options:{ @:optional var facetNormals : Dynamic; @:optional var facetPositions : Dynamic; @:optional var facetPartitioning : Dynamic; @:optional var ratio : Float; @:optional var bInfo : Dynamic; @:optional var bbSize : Vector3; @:optional var subDiv : Dynamic; @:optional var useRightHandedSystem : Bool; @:optional var depthSort : Bool; @:optional var distanceTo : Vector3; @:optional var depthSortedFacets : Dynamic; }) : Void;
	private static function _ComputeSides(sideOrientation:Dynamic, positions:Dynamic, indices:Dynamic, normals:Dynamic, uvs:Dynamic, ?frontUVs:Dynamic, ?backUVs:Dynamic) : Dynamic;
	/**
	 * Applies VertexData created from the imported parameters to the geometry
	 */
	static function ImportVertexData(parsedVertexData:Dynamic, geometry:Geometry) : Void;
}