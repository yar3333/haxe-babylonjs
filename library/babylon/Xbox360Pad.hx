package babylon;

extern class Xbox360Pad extends Gamepad
{
	private var _leftTrigger : Dynamic/*UNKNOW_TYPE*/;
	private var _rightTrigger : Dynamic/*UNKNOW_TYPE*/;
	private var _onlefttriggerchanged : Dynamic/*UNKNOW_TYPE*/;
	private var _onrighttriggerchanged : Dynamic/*UNKNOW_TYPE*/;
	private var _onbuttondown : Dynamic/*UNKNOW_TYPE*/;
	private var _onbuttonup : Dynamic/*UNKNOW_TYPE*/;
	private var _ondpaddown : Dynamic/*UNKNOW_TYPE*/;
	private var _ondpadup : Dynamic/*UNKNOW_TYPE*/;
	private var _buttonA : Dynamic/*UNKNOW_TYPE*/;
	private var _buttonB : Dynamic/*UNKNOW_TYPE*/;
	private var _buttonX : Dynamic/*UNKNOW_TYPE*/;
	private var _buttonY : Dynamic/*UNKNOW_TYPE*/;
	private var _buttonBack : Dynamic/*UNKNOW_TYPE*/;
	private var _buttonStart : Dynamic/*UNKNOW_TYPE*/;
	private var _buttonLB : Dynamic/*UNKNOW_TYPE*/;
	private var _buttonRB : Dynamic/*UNKNOW_TYPE*/;
	private var _buttonLeftStick : Dynamic/*UNKNOW_TYPE*/;
	private var _buttonRightStick : Dynamic/*UNKNOW_TYPE*/;
	private var _dPadUp : Dynamic/*UNKNOW_TYPE*/;
	private var _dPadDown : Dynamic/*UNKNOW_TYPE*/;
	private var _dPadLeft : Dynamic/*UNKNOW_TYPE*/;
	private var _dPadRight : Dynamic/*UNKNOW_TYPE*/;
	private var _isXboxOnePad : Dynamic/*UNKNOW_TYPE*/;
	function new(id:String, index:Float, gamepad:Dynamic, ?xboxOne:Bool) : Void;
	function onlefttriggerchanged(callback:Float->Void) : Void;
	function onrighttriggerchanged(callback:Float->Void) : Void;
	var leftTrigger : Float;
	var rightTrigger : Float;
	function onbuttondown(callback:Xbox360Button->Void) : Void;
	function onbuttonup(callback:Xbox360Button->Void) : Void;
	function ondpaddown(callback:Xbox360Dpad->Void) : Void;
	function ondpadup(callback:Xbox360Dpad->Void) : Void;
	private function _setButtonValue(newValue, currentValue, buttonType);
	private function _setDPadValue(newValue, currentValue, buttonType);
	var buttonA : Float;
	var buttonB : Float;
	var buttonX : Float;
	var buttonY : Float;
	var buttonStart : Float;
	var buttonBack : Float;
	var buttonLB : Float;
	var buttonRB : Float;
	var buttonLeftStick : Float;
	var buttonRightStick : Float;
	var dPadUp : Float;
	var dPadDown : Float;
	var dPadLeft : Float;
	var dPadRight : Float;
	function update() : Void;
}