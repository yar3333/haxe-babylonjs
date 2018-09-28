package babylonjs.babylon;

@:native("BABYLON.Collider")
extern class Collider
{
	/**
	 * Define if a collision was found 
	 */
	var collisionFound : Bool;
	/**
	 * Define last intersection point in local space
	 */
	var intersectionPoint : Vector3;
	/**
	 * Define last collided mesh
	 */
	var collidedMesh : Null<AbstractMesh>;
	private var _collisionPoint : Dynamic;
	private var _planeIntersectionPoint : Dynamic;
	private var _tempVector : Dynamic;
	private var _tempVector2 : Dynamic;
	private var _tempVector3 : Dynamic;
	private var _tempVector4 : Dynamic;
	private var _edge : Dynamic;
	private var _baseToVertex : Dynamic;
	private var _destinationPoint : Dynamic;
	private var _slidePlaneNormal : Dynamic;
	private var _displacementVector : Dynamic;
	var _radius : Vector3;
	var _retry : Float;
	private var _velocity : Dynamic;
	private var _basePoint : Dynamic;
	private var _epsilon : Dynamic;
	var _velocityWorldLength : Float;
	var _basePointWorld : Vector3;
	private var _velocityWorld : Dynamic;
	private var _normalizedVelocity : Dynamic;
	var _initialVelocity : Vector3;
	var _initialPosition : Vector3;
	private var _nearestDistance : Dynamic;
	private var _collisionMask : Dynamic;
	var collisionMask : Float;
	/**
	 * Gets the plane normal used to compute the sliding response (in local space)
	 */
	var slidePlaneNormal(default, null) : Vector3;

	function _initialize(source:Vector3, dir:Vector3, e:Float) : Void;
	function _checkPointInTriangle(point:Vector3, pa:Vector3, pb:Vector3, pc:Vector3, n:Vector3) : Bool;
	function _canDoCollision(sphereCenter:Vector3, sphereRadius:Float, vecMin:Vector3, vecMax:Vector3) : Bool;
	function _testTriangle(faceIndex:Float, trianglePlaneArray:Array<Plane>, p1:Vector3, p2:Vector3, p3:Vector3, hasMaterial:Bool) : Void;
	function _collide(trianglePlaneArray:Array<Plane>, pts:Array<Vector3>, indices:IndicesArray, indexStart:Float, indexEnd:Float, decal:Float, hasMaterial:Bool) : Void;
	function _getResponse(pos:Vector3, vel:Vector3) : Void;
}