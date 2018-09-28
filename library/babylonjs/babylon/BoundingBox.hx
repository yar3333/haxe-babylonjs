package babylonjs.babylon;

@:native("BABYLON.BoundingBox")
extern class BoundingBox
	implements ICullable
{
	var vectors : Array<Vector3>;
	var center : Vector3;
	var centerWorld : Vector3;
	var extendSize : Vector3;
	var extendSizeWorld : Vector3;
	var directions : Array<Vector3>;
	var vectorsWorld : Array<Vector3>;
	var minimumWorld : Vector3;
	var maximumWorld : Vector3;
	var minimum : Vector3;
	var maximum : Vector3;
	private var _worldMatrix : Dynamic;

	function new(min:Vector3, max:Vector3) : Void;
	/**
	 * Recreates the entire bounding box from scratch
	 */
	function reConstruct(min:Vector3, max:Vector3) : Void;
	function getWorldMatrix() : Matrix;
	function setWorldMatrix(matrix:Matrix) : BoundingBox;
	function _update(world:Matrix) : Void;
	function isInFrustum(frustumPlanes:Array<Plane>) : Bool;
	function isCompletelyInFrustum(frustumPlanes:Array<Plane>) : Bool;
	function intersectsPoint(point:Vector3) : Bool;
	function intersectsSphere(sphere:BoundingSphere) : Bool;
	function intersectsMinMax(min:Vector3, max:Vector3) : Bool;
	static function Intersects(box0:BoundingBox, box1:BoundingBox) : Bool;
	static function IntersectsSphere(minPoint:Vector3, maxPoint:Vector3, sphereCenter:Vector3, sphereRadius:Float) : Bool;
	static function IsCompletelyInFrustum(boundingVectors:Array<Vector3>, frustumPlanes:Array<Plane>) : Bool;
	static function IsInFrustum(boundingVectors:Array<Vector3>, frustumPlanes:Array<Plane>) : Bool;
}