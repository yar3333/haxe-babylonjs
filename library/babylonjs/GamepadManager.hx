package babylonjs;

@:native("BABYLON.GamepadManager")
extern class GamepadManager
{
	private var _scene : Dynamic;
	private var _babylonGamepads : Dynamic;
	private var _oneGamepadConnected : Dynamic;
	var _isMonitoring : Bool;
	private var _gamepadEventSupported : Dynamic;
	private var _gamepadSupport : Dynamic;
	var onGamepadConnectedObservable : Observable<Gamepad>;
	var onGamepadDisconnectedObservable : Observable<Gamepad>;
	private var _onGamepadConnectedEvent : Dynamic;
	private var _onGamepadDisconnectedEvent : Dynamic;
	var gamepads(default, null) : Array<Gamepad>;

	function new(?_scene:haxe.extern.EitherType<Scene, {}>) : Void;
	function getGamepadByType(?type:Float) : Null<Gamepad>;
	function dispose() : Void;
	private function _addNewGamepad(gamepad:Dynamic) : Dynamic;
	private function _startMonitoringGamepads() : Dynamic;
	private function _stopMonitoringGamepads() : Dynamic;
	function _checkGamepadsStatus() : Void;
	private function _updateGamepadObjects() : Dynamic;
}