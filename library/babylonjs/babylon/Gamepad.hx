package babylonjs.babylon;

@:native("BABYLON.Gamepad")
extern class Gamepad
{
	var id : String;
	var index : Float;
	var browserGamepad : Dynamic;
	var type : Float;
	private var _leftStick : Dynamic;
	private var _rightStick : Dynamic;
	var _isConnected : Bool;
	private var _leftStickAxisX : Dynamic;
	private var _leftStickAxisY : Dynamic;
	private var _rightStickAxisX : Dynamic;
	private var _rightStickAxisY : Dynamic;
	private var _onleftstickchanged : Dynamic;
	private var _onrightstickchanged : Dynamic;
	static var GAMEPAD : Float;
	static var GENERIC : Float;
	static var XBOX : Float;
	static var POSE_ENABLED : Float;
	private var _invertLeftStickY : Bool;
	var isConnected(default, null) : Bool;
	var leftStick : StickValues;
	var rightStick : StickValues;

	function new(id:String, index:Float, browserGamepad:Dynamic, ?leftStickX:Float, ?leftStickY:Float, ?rightStickX:Float, ?rightStickY:Float) : Void;
	function onleftstickchanged(callback:StickValues->Void) : Void;
	function onrightstickchanged(callback:StickValues->Void) : Void;
	function update() : Void;
	function dispose() : Void;
}