package babylon;

extern class Frustum
{
	static function GetPlanes(transform:Matrix) : Array<Plane>;
	static function GetPlanesToRef(transform:Matrix, frustumPlanes:Array<Plane>) : Void;
}