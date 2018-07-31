package babylon;

extern class Angle
{
	private var _radians : Dynamic/*UNKNOW_TYPE*/;
	function new(radians:Float) : Void;
	var degrees : Void->Float;
	var radians : Void->Float;
	static function BetweenTwoPoints(a:Vector2, b:Vector2) : Angle;
	static function FromRadians(radians:Float) : Angle;
	static function FromDegrees(degrees:Float) : Angle;
}