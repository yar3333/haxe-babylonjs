package babylon;

extern class BoundingSphere
{
	var minimum : Vector3;
	var maximum : Vector3;
	var center : Vector3;
	var radius : Float;
	var centerWorld : Vector3;
	var radiusWorld : Float;
	private var _tempRadiusVector : Dynamic/*UNKNOW_TYPE*/;
	function new(minimum:Vector3, maximum:Vector3) : Void;
	function _update(world:Matrix) : Void;
	function isInFrustum(frustumPlanes:Array<Plane>) : Bool;
	function intersectsPoint(point:Vector3) : Bool;
	static function Intersects(sphere0:BoundingSphere, sphere1:BoundingSphere) : Bool;
}