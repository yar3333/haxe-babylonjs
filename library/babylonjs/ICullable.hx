package babylonjs;

extern interface ICullable
{
	function isInFrustum(frustumPlanes:Array<Plane>) : Bool;
	function isCompletelyInFrustum(frustumPlanes:Array<Plane>) : Bool;
}