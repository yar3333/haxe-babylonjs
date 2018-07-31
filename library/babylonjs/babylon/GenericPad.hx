package babylon;

extern class GenericPad extends Gamepad
{
	var id : String;
	var index : Float;
	var gamepad : Dynamic;
	private var _buttons : Dynamic/*UNKNOW_TYPE*/;
	private var _onbuttondown : Dynamic/*UNKNOW_TYPE*/;
	private var _onbuttonup : Dynamic/*UNKNOW_TYPE*/;
	function onbuttondown(callback:Float->Void) : Void;
	function onbuttonup(callback:Float->Void) : Void;
	function new(id:String, index:Float, gamepad:Dynamic) : Void;
	private function _setButtonValue(newValue, currentValue, buttonIndex);
	function update() : Void;
}