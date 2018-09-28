package babylonjs.babylon;

@:native("BABYLON.Ray")
extern class Ray
{
	var origin : Vector3;
	var direction : Vector3;
	var length : Float;
	private var _edge1 : Dynamic;
	private var _edge2 : Dynamic;
	private var _pvec : Dynamic;
	private var _tvec : Dynamic;
	private var _qvec : Dynamic;
	private var _tmpRay : Dynamic;
	private static var smallnum : Dynamic;
	private static var rayl : Dynamic;

	function new(origin:Vector3, direction:Vector3, ?length:Float) : Void;
	function intersectsBoxMinMax(minimum:Vector3, maximum:Vector3) : Bool;
	function intersectsBox(box:BoundingBox) : Bool;
	function intersectsSphere(sphere:BoundingSphere) : Bool;
	function intersectsTriangle(vertex0:Vector3, vertex1:Vector3, vertex2:Vector3) : Null<IntersectionInfo>;
	function intersectsPlane(plane:Plane) : Null<Float>;
	function intersectsMesh(mesh:AbstractMesh, ?fastCheck:Bool) : PickingInfo;
	function intersectsMeshes(meshes:Array<AbstractMesh>, ?fastCheck:Bool, ?results:Array<PickingInfo>) : Array<PickingInfo>;
	private function _comparePickingInfo(pickingInfoA:Dynamic, pickingInfoB:Dynamic) : Dynamic;
	/**
	 * Intersection test between the ray and a given segment whithin a given tolerance (threshold)
	 * @return the distance from the ray origin to the intersection point if there's intersection, or -1 if there's no intersection
	 */
	function intersectionSegment(sega:Vector3, segb:Vector3, threshold:Float) : Float;
	function update(x:Float, y:Float, viewportWidth:Float, viewportHeight:Float, world:Matrix, view:Matrix, projection:Matrix) : Ray;
	static function Zero() : Ray;
	static function CreateNew(x:Float, y:Float, viewportWidth:Float, viewportHeight:Float, world:Matrix, view:Matrix, projection:Matrix) : Ray;
	/**
	 * Function will create a new transformed ray starting from origin and ending at the end point. Ray's length will be set, and ray will be
	 * transformed to the given world matrix.
	 */
	static function CreateNewFromTo(origin:Vector3, end:Vector3, ?world:Matrix) : Ray;
	static function Transform(ray:Ray, matrix:Matrix) : Ray;
	static function TransformToRef(ray:Ray, matrix:Matrix, result:Ray) : Void;
}