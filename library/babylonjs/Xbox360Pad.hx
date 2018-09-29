package babylonjs;

/**
 * Defines a XBox360 gamepad
 */
@:native("BABYLON.Xbox360Pad")
extern class Xbox360Pad extends Gamepad
{
	private var _leftTrigger : Dynamic;
	private var _rightTrigger : Dynamic;
	private var _onlefttriggerchanged : Dynamic;
	private var _onrighttriggerchanged : Dynamic;
	private var _onbuttondown : Dynamic;
	private var _onbuttonup : Dynamic;
	private var _ondpaddown : Dynamic;
	private var _ondpadup : Dynamic;
	/**
	 * Observable raised when a button is pressed 
	 */
	var onButtonDownObservable : Observable<Xbox360Button>;
	/**
	 * Observable raised when a button is released 
	 */
	var onButtonUpObservable : Observable<Xbox360Button>;
	/**
	 * Observable raised when a pad is pressed 
	 */
	var onPadDownObservable : Observable<Xbox360Dpad>;
	/**
	 * Observable raised when a pad is released 
	 */
	var onPadUpObservable : Observable<Xbox360Dpad>;
	private var _buttonA : Dynamic;
	private var _buttonB : Dynamic;
	private var _buttonX : Dynamic;
	private var _buttonY : Dynamic;
	private var _buttonBack : Dynamic;
	private var _buttonStart : Dynamic;
	private var _buttonLB : Dynamic;
	private var _buttonRB : Dynamic;
	private var _buttonLeftStick : Dynamic;
	private var _buttonRightStick : Dynamic;
	private var _dPadUp : Dynamic;
	private var _dPadDown : Dynamic;
	private var _dPadLeft : Dynamic;
	private var _dPadRight : Dynamic;
	private var _isXboxOnePad : Dynamic;
	/**
	 * Gets or sets left trigger value
	 */
	var leftTrigger : Float;
	/**
	 * Gets or sets right trigger value
	 */
	var rightTrigger : Float;
	/**
	 * Gets or sets value of A button 
	 */
	var buttonA : Float;
	/**
	 * Gets or sets value of B button 
	 */
	var buttonB : Float;
	/**
	 * Gets or sets value of X button 
	 */
	var buttonX : Float;
	/**
	 * Gets or sets value of Y button 
	 */
	var buttonY : Float;
	/**
	 * Gets or sets value of Start button  
	 */
	var buttonStart : Float;
	/**
	 * Gets or sets value of Back button  
	 */
	var buttonBack : Float;
	/**
	 * Gets or sets value of Left button  
	 */
	var buttonLB : Float;
	/**
	 * Gets or sets value of Right button  
	 */
	var buttonRB : Float;
	/**
	 * Gets or sets value of left stick 
	 */
	var buttonLeftStick : Float;
	/**
	 * Gets or sets value of right stick 
	 */
	var buttonRightStick : Float;
	/**
	 * Gets or sets value of DPad up 
	 */
	var dPadUp : Float;
	/**
	 * Gets or sets value of DPad down 
	 */
	var dPadDown : Float;
	/**
	 * Gets or sets value of DPad left 
	 */
	var dPadLeft : Float;
	/**
	 * Gets or sets value of DPad right 
	 */
	var dPadRight : Float;

	/**
	 * Defines a XBox360 gamepad
	 */
	@:overload(function(id:String, index:Float, gamepad:Dynamic,?xboxOne:Bool): Void{})
	function new(id:String, index:Float, browserGamepad:Dynamic, ?leftStickX:Float, ?leftStickY:Float, ?rightStickX:Float, ?rightStickY:Float) : Void;
	/**
	 * Defines the callback to call when left trigger is pressed
	 */
	function onlefttriggerchanged(callback:Float->Void) : Void;
	/**
	 * Defines the callback to call when right trigger is pressed
	 */
	function onrighttriggerchanged(callback:Float->Void) : Void;
	/**
	 * Defines the callback to call when a button is pressed
	 */
	function onbuttondown(callback:Xbox360Button->Void) : Void;
	/**
	 * Defines the callback to call when a button is released
	 */
	function onbuttonup(callback:Xbox360Button->Void) : Void;
	/**
	 * Defines the callback to call when a pad is pressed
	 */
	function ondpaddown(callback:Xbox360Dpad->Void) : Void;
	/**
	 * Defines the callback to call when a pad is released
	 */
	function ondpadup(callback:Xbox360Dpad->Void) : Void;
	private function _setButtonValue(newValue:Dynamic, currentValue:Dynamic, buttonType:Dynamic) : Dynamic;
	private function _setDPadValue(newValue:Dynamic, currentValue:Dynamic, buttonType:Dynamic) : Dynamic;
	/**
	 * Force the gamepad to synchronize with device values
	 */
	override function update() : Void;
	override function dispose() : Void;
}