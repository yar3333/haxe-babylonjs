package babylon;

extern class BoundingInfo implements ICullable
{
	var minimum : Vector3;
	var maximum : Vector3;
	var boundingBox : BoundingBox;
	var boundingSphere : BoundingSphere;
	private var _isLocked : Dynamic/*UNKNOW_TYPE*/;
	function new(minimum:Vector3, maximum:Vector3) : Void;
	var isLocked : Bool;
	function update(world:Matrix) : Void;
	function isInFrustum(frustumPlanes:Array<Plane>) : Bool;
	function isCompletelyInFrustum(frustumPlanes:Array<Plane>) : Bool;
	function _checkCollision(collider:Collider) : Bool;
	function intersectsPoint(point:Vector3) : Bool;
	function intersects(boundingInfo:BoundingInfo, precise:Bool) : Bool;
}