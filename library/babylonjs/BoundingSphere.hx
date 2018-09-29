package babylonjs;

@:native("BABYLON.BoundingSphere")
extern class BoundingSphere
{
	var center : Vector3;
	var radius : Float;
	var centerWorld : Vector3;
	var radiusWorld : Float;
	var minimum : Vector3;
	var maximum : Vector3;
	private var _tempRadiusVector : Dynamic;

	function new(min:Vector3, max:Vector3) : Void;
	/**
	 * Recreates the entire bounding sphere from scratch
	 */
	function reConstruct(min:Vector3, max:Vector3) : Void;
	function _update(world:Matrix) : Void;
	function isInFrustum(frustumPlanes:Array<Plane>) : Bool;
	function intersectsPoint(point:Vector3) : Bool;
	static function Intersects(sphere0:BoundingSphere, sphere1:BoundingSphere) : Bool;
}