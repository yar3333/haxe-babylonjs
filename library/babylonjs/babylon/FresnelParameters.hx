package babylon;

extern class FresnelParameters
{
	var isEnabled : Bool;
	var leftColor : Color3;
	var rightColor : Color3;
	var bias : Float;
	var power : Float;
	function clone() : FresnelParameters;
	function serialize() : Dynamic;
	static function Parse(parsedFresnelParameters:Dynamic) : FresnelParameters;
}