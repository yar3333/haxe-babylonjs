package babylonjs.babylon;

@:native("BABYLON.Frustum")
extern class Frustum
{
	/**
	 * Returns a new array of 6 Frustum planes computed by the given transformation matrix.
	 */
	static function GetPlanes(transform:Matrix) : Array<Plane>;
	static function GetNearPlaneToRef(transform:Matrix, frustumPlane:Plane) : Void;
	static function GetFarPlaneToRef(transform:Matrix, frustumPlane:Plane) : Void;
	static function GetLeftPlaneToRef(transform:Matrix, frustumPlane:Plane) : Void;
	static function GetRightPlaneToRef(transform:Matrix, frustumPlane:Plane) : Void;
	static function GetTopPlaneToRef(transform:Matrix, frustumPlane:Plane) : Void;
	static function GetBottomPlaneToRef(transform:Matrix, frustumPlane:Plane) : Void;
	/**
	 * Sets the given array "frustumPlanes" with the 6 Frustum planes computed by the given transformation matrix.
	 */
	static function GetPlanesToRef(transform:Matrix, frustumPlanes:Array<Plane>) : Void;
}