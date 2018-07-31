package babylon;

extern class Gamepads
{
	private var babylonGamepads : Dynamic/*UNKNOW_TYPE*/;
	private var oneGamepadConnected : Dynamic/*UNKNOW_TYPE*/;
	private var isMonitoring : Dynamic/*UNKNOW_TYPE*/;
	private var gamepadEventSupported : Dynamic/*UNKNOW_TYPE*/;
	private var gamepadSupportAvailable : Dynamic/*UNKNOW_TYPE*/;
	private var _callbackGamepadConnected : Dynamic/*UNKNOW_TYPE*/;
	private var _onGamepadConnectedEvent : Dynamic/*UNKNOW_TYPE*/;
	private var _onGamepadDisonnectedEvent : Dynamic/*UNKNOW_TYPE*/;
	private static var gamepadDOMInfo : Dynamic/*UNKNOW_TYPE*/;
	function new(ongamedpadconnected:Gamepad->Void) : Void;
	function dispose() : Void;
	private function _onGamepadConnected(evt);
	private function _addNewGamepad(gamepad);
	private function _onGamepadDisconnected(evt);
	private function _startMonitoringGamepads();
	private function _stopMonitoringGamepads();
	private function _checkGamepadsStatus();
	private function _updateGamepadObjects();
}