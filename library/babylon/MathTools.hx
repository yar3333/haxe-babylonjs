package babylon;

extern class MathTools
{
	static function WithinEpsilon(a:Float, b:Float, ?epsilon:Float) : Bool;
	static function ToHex(i:Float) : String;
	static function Sign(value:Float) : Float;
	static function Clamp(value:Float, ?min:Float, ?max:Float) : Float;
}