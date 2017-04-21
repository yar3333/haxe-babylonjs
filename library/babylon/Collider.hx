package babylon;

extern class Collider
{
	var radius : Vector3;
	var retry : Float;
	var velocity : Vector3;
	var basePoint : Vector3;
	var epsilon : Float;
	var collisionFound : Bool;
	var velocityWorldLength : Float;
	var basePointWorld : Vector3;
	var velocityWorld : Vector3;
	var normalizedVelocity : Vector3;
	var initialVelocity : Vector3;
	var initialPosition : Vector3;
	var nearestDistance : Float;
	var intersectionPoint : Vector3;
	var collidedMesh : AbstractMesh;
	private var _collisionPoint : Dynamic/*UNKNOW_TYPE*/;
	private var _planeIntersectionPoint : Dynamic/*UNKNOW_TYPE*/;
	private var _tempVector : Dynamic/*UNKNOW_TYPE*/;
	private var _tempVector2 : Dynamic/*UNKNOW_TYPE*/;
	private var _tempVector3 : Dynamic/*UNKNOW_TYPE*/;
	private var _tempVector4 : Dynamic/*UNKNOW_TYPE*/;
	private var _edge : Dynamic/*UNKNOW_TYPE*/;
	private var _baseToVertex : Dynamic/*UNKNOW_TYPE*/;
	private var _destinationPoint : Dynamic/*UNKNOW_TYPE*/;
	private var _slidePlaneNormal : Dynamic/*UNKNOW_TYPE*/;
	private var _displacementVector : Dynamic/*UNKNOW_TYPE*/;
	function _initialize(source:Vector3, dir:Vector3, e:Float) : Void;
	function _checkPointInTriangle(point:Vector3, pa:Vector3, pb:Vector3, pc:Vector3, n:Vector3) : Bool;
	function _canDoCollision(sphereCenter:Vector3, sphereRadius:Float, vecMin:Vector3, vecMax:Vector3) : Bool;
	function _testTriangle(faceIndex:Float, trianglePlaneArray:Array<Plane>, p1:Vector3, p2:Vector3, p3:Vector3, hasMaterial:Bool) : Void;
	function _collide(trianglePlaneArray:Array<Plane>, pts:Array<Vector3>, indices:haxe.extern.EitherType<Array<Float>, Int32Array>, indexStart:Float, indexEnd:Float, decal:Float, hasMaterial:Bool) : Void;
	function _getResponse(pos:Vector3, vel:Vector3) : Void;
}