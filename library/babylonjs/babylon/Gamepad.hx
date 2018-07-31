package babylon;

extern class Gamepad
{
	var id : String;
	var index : Float;
	var browserGamepad : Dynamic;
	private var _leftStick : Dynamic/*UNKNOW_TYPE*/;
	private var _rightStick : Dynamic/*UNKNOW_TYPE*/;
	private var _leftStickAxisX : Dynamic/*UNKNOW_TYPE*/;
	private var _leftStickAxisY : Dynamic/*UNKNOW_TYPE*/;
	private var _rightStickAxisX : Dynamic/*UNKNOW_TYPE*/;
	private var _rightStickAxisY : Dynamic/*UNKNOW_TYPE*/;
	private var _onleftstickchanged : Dynamic/*UNKNOW_TYPE*/;
	private var _onrightstickchanged : Dynamic/*UNKNOW_TYPE*/;
	function new(id:String, index:Float, browserGamepad:Dynamic, ?leftStickX:Float, ?leftStickY:Float, ?rightStickX:Float, ?rightStickY:Float) : Void;
	function onleftstickchanged(callback:StickValues->Void) : Void;
	function onrightstickchanged(callback:StickValues->Void) : Void;
	var leftStick : StickValues;
	var rightStick : StickValues;
	function update() : Void;
}