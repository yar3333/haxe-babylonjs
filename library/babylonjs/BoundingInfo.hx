package babylonjs;

@:native("BABYLON.BoundingInfo")
extern class BoundingInfo
	implements ICullable
{
	var minimum : Vector3;
	var maximum : Vector3;
	var boundingBox : BoundingBox;
	var boundingSphere : BoundingSphere;
	private var _isLocked : Dynamic;
	var isLocked : Bool;
	/**
	 * Gets the world distance between the min and max points of the bounding box
	 */
	var diagonalLength(default, null) : Float;

	function new(minimum:Vector3, maximum:Vector3) : Void;
	function update(world:Matrix) : Void;
	/**
	 * Recreate the bounding info to be centered around a specific point given a specific extend.
	 */
	function centerOn(center:Vector3, extend:Vector3) : BoundingInfo;
	function isInFrustum(frustumPlanes:Array<Plane>) : Bool;
	function isCompletelyInFrustum(frustumPlanes:Array<Plane>) : Bool;
	function _checkCollision(collider:Collider) : Bool;
	function intersectsPoint(point:Vector3) : Bool;
	function intersects(boundingInfo:BoundingInfo, precise:Bool) : Bool;
}