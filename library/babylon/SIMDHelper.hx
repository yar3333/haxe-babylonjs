package babylon;

extern class SIMDHelper
{
	private static var _isEnabled : Dynamic/*UNKNOW_TYPE*/;
	static var IsEnabled : Bool;
	static function DisableSIMD() : Void;
	static function EnableSIMD() : Void;
}