package babylon;

extern class Ray
{
	var origin : Vector3;
	var direction : Vector3;
	var length : Float;
	private var _edge1 : Dynamic/*UNKNOW_TYPE*/;
	private var _edge2 : Dynamic/*UNKNOW_TYPE*/;
	private var _pvec : Dynamic/*UNKNOW_TYPE*/;
	private var _tvec : Dynamic/*UNKNOW_TYPE*/;
	private var _qvec : Dynamic/*UNKNOW_TYPE*/;
	private var _renderPoints : Dynamic/*UNKNOW_TYPE*/;
	private var _renderLine : Dynamic/*UNKNOW_TYPE*/;
	private var _renderFunction : Dynamic/*UNKNOW_TYPE*/;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _show : Dynamic/*UNKNOW_TYPE*/;
	private var _tmpRay : Dynamic/*UNKNOW_TYPE*/;
	function new(origin:Vector3, direction:Vector3, ?length:Float) : Void;
	function intersectsBoxMinMax(minimum:Vector3, maximum:Vector3) : Bool;
	function intersectsBox(box:BoundingBox) : Bool;
	function intersectsSphere(sphere:BoundingSphere) : Bool;
	function intersectsTriangle(vertex0:Vector3, vertex1:Vector3, vertex2:Vector3) : IntersectionInfo;
	function intersectsPlane(plane:Plane) : Float;
	function intersectsMesh(mesh:AbstractMesh, ?fastCheck:Bool) : PickingInfo;
	function show(scene:Scene, color:Color3) : Void;
	function hide() : Void;
	private function _render() : Void;
	private static var smallnum : Dynamic/*UNKNOW_TYPE*/;
	private static var rayl : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * Intersection test between the ray and a given segment whithin a given tolerance (threshold)
	 * @param sega the first point of the segment to test the intersection against
	 * @param segb the second point of the segment to test the intersection against
	 * @param threshold the tolerance margin, if the ray doesn't intersect the segment but is close to the given threshold, the intersection is successful
	 * @return the distance from the ray origin to the intersection point if there's intersection, or -1 if there's no intersection
	 */
	function intersectionSegment(sega:Vector3, segb:Vector3, threshold:Float) : Float;
	static function CreateNew(x:Float, y:Float, viewportWidth:Float, viewportHeight:Float, world:Matrix, view:Matrix, projection:Matrix) : Ray;
	/**
	* Function will create a new transformed ray starting from origin and ending at the end point. Ray's length will be set, and ray will be
	* transformed to the given world matrix.
	* @param origin The origin point
	* @param end The end point
	* @param world a matrix to transform the ray to. Default is the identity matrix.
	*/
	static function CreateNewFromTo(origin:Vector3, end:Vector3, ?world:Matrix) : Ray;
	static function Transform(ray:Ray, matrix:Matrix) : Ray;
	static function TransformToRef(ray:Ray, matrix:Matrix, result:Ray) : Void;
}