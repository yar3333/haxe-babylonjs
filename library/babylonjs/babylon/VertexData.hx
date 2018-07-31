package babylon;

extern class VertexData
{
	positions: haxe.extern.EitherType<Array<Float>, Float32Array>;
	normals: haxe.extern.EitherType<Array<Float>, Float32Array>;
	uvs: haxe.extern.EitherType<Array<Float>, Float32Array>;
	uvs2: haxe.extern.EitherType<Array<Float>, Float32Array>;
	uvs3: haxe.extern.EitherType<Array<Float>, Float32Array>;
	uvs4: haxe.extern.EitherType<Array<Float>, Float32Array>;
	uvs5: haxe.extern.EitherType<Array<Float>, Float32Array>;
	uvs6: haxe.extern.EitherType<Array<Float>, Float32Array>;
	colors: haxe.extern.EitherType<Array<Float>, Float32Array>;
	matricesIndices: haxe.extern.EitherType<Array<Float>, Float32Array>;
	matricesWeights: haxe.extern.EitherType<Array<Float>, Float32Array>;
	matricesIndicesExtra: haxe.extern.EitherType<Array<Float>, Float32Array>;
	matricesWeightsExtra: haxe.extern.EitherType<Array<Float>, Float32Array>;
	indices: haxe.extern.EitherType<Array<Float>, Int32Array>;
	function set(data:haxe.extern.EitherType<Array<Float>, Float32Array>, kind:String) : Void;
	function applyToMesh(mesh:Mesh, ?updatable:Bool) : Void;
	function applyToGeometry(geometry:Geometry, ?updatable:Bool) : Void;
	function updateMesh(mesh:Mesh, ?updateExtends:Bool, ?makeItUnique:Bool) : Void;
	function updateGeometry(geometry:Geometry, ?updateExtends:Bool, ?makeItUnique:Bool) : Void;
	private function _applyTo(meshOrGeometry, ?updatable);
	private function _update(meshOrGeometry, ?updateExtends, makeItUnique?);
	function transform(matrix:Matrix) : Void;
	function merge(other:VertexData) : Void;
	private function _mergeElement(source, other);
	function serialize() : Dynamic;
	static function ExtractFromMesh(mesh:Mesh, ?copyWhenShared:Bool) : VertexData;
	static function ExtractFromGeometry(geometry:Geometry, ?copyWhenShared:Bool) : VertexData;
	private static function _ExtractFrom(meshOrGeometry, ?copyWhenShared);
	static function CreateRibbon(options:
	{
		pathArray : Array<Array<Vector3>>,
		@:optional closeArray : Bool,
		@:optional closePath : Bool,
		@:optional offset : Float,
		@:optional sideOrientation : Float,
		@:optional invertUV : Bool
	}) : VertexData;
	static function CreateBox(options:
	{
		@:optional size : Float,
		@:optional width : Float,
		@:optional height : Float,
		@:optional depth : Float,
		@:optional faceUV : Array<Vector4>,
		@:optional faceColors : Array<Color4>,
		@:optional sideOrientation : Float
	}) : VertexData;
	static function CreateSphere(options:
	{
		@:optional segments : Float,
		@:optional diameter : Float,
		@:optional diameterX : Float,
		@:optional diameterY : Float,
		@:optional diameterZ : Float,
		@:optional arc : Float,
		@:optional slice : Float,
		@:optional sideOrientation : Float
	}) : VertexData;
	static function CreateCylinder(options:
	{
		@:optional height : Float,
		@:optional diameterTop : Float,
		@:optional diameterBottom : Float,
		@:optional diameter : Float,
		@:optional tessellation : Float,
		@:optional subdivisions : Float,
		@:optional arc : Float,
		@:optional faceColors : Array<Color4>,
		@:optional faceUV : Array<Vector4>,
		@:optional hasRings : Bool,
		@:optional enclose : Bool,
		@:optional sideOrientation : Float
	}) : VertexData;
	static function CreateTorus(options:
	{
		@:optional diameter : Float,
		@:optional thickness : Float,
		@:optional tessellation : Float,
		@:optional sideOrientation : Float
	}) : VertexData;
	static function CreateLineSystem(options:
	{
		lines : Array<Array<Vector3>>
	}) : VertexData;
	static function CreateDashedLines(options:
	{
		points : Array<Vector3>,
		@:optional dashSize : Float,
		@:optional gapSize : Float,
		@:optional dashNb : Float
	}) : VertexData;
	static function CreateGround(options:
	{
		@:optional width : Float,
		@:optional height : Float,
		@:optional subdivisions : Float,
		@:optional subdivisionsX : Float,
		@:optional subdivisionsY : Float
	}) : VertexData;
	static function CreateTiledGround(options:
	{
		xmin : Float,
		zmin : Float,
		xmax : Float,
		zmax : Float,
		@:optional subdivisions :
		{
			w : Float,
			h : Float
		},
		@:optional precision :
		{
			w : Float,
			h : Float
		}
	}) : VertexData;
	static function CreateGroundFromHeightMap(options:
	{
		width : Float,
		height : Float,
		subdivisions : Float,
		minHeight : Float,
		maxHeight : Float,
		buffer : Uint8Array,
		bufferWidth : Float,
		bufferHeight : Float
	}) : VertexData;
	static function CreatePlane(options:
	{
		@:optional size : Float,
		@:optional width : Float,
		@:optional height : Float,
		@:optional sideOrientation : Float
	}) : VertexData;
	static function CreateDisc(options:
	{
		@:optional radius : Float,
		@:optional tessellation : Float,
		@:optional arc : Float,
		@:optional sideOrientation : Float
	}) : VertexData;
	static function CreateIcoSphere(options:
	{
		@:optional radius : Float,
		@:optional radiusX : Float,
		@:optional radiusY : Float,
		@:optional radiusZ : Float,
		@:optional flat : Bool,
		@:optional subdivisions : Float,
		@:optional sideOrientation : Float
	}) : VertexData;
	static function CreatePolyhedron(options:
	{
		@:optional type : Float,
		@:optional size : Float,
		@:optional sizeX : Float,
		@:optional sizeY : Float,
		@:optional sizeZ : Float,
		@:optional custom : Dynamic,
		@:optional faceUV : Array<Vector4>,
		@:optional faceColors : Array<Color4>,
		@:optional flat : Bool,
		@:optional sideOrientation : Float
	}) : VertexData;
	static function CreateTorusKnot(options:
	{
		@:optional radius : Float,
		@:optional tube : Float,
		@:optional radialSegments : Float,
		@:optional tubularSegments : Float,
		@:optional p : Float,
		@:optional q : Float,
		@:optional sideOrientation : Float
	}) : VertexData;
	/**
	 * @param {any} - positions (number[] or Float32Array)
	 * @param {any} - indices   (number[] or Uint16Array)
	 * @param {any} - normals   (number[] or Float32Array)
	 */
	static function ComputeNormals(positions:Dynamic, indices:Dynamic, normals:Dynamic) : Void;
	private static function _ComputeSides(sideOrientation, positions, indices, normals, uvs);
	static function ImportVertexData(parsedVertexData:Dynamic, geometry:Geometry) : Void;
}