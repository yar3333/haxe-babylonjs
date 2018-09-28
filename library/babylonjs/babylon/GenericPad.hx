package babylonjs.babylon;

@:native("BABYLON.GenericPad")
extern class GenericPad extends Gamepad
{
	private var _buttons : Dynamic;
	private var _onbuttondown : Dynamic;
	private var _onbuttonup : Dynamic;
	var onButtonDownObservable : Observable<Float>;
	var onButtonUpObservable : Observable<Float>;

	function onbuttondown(callback:Float->Void) : Void;
	function onbuttonup(callback:Float->Void) : Void;
	@:overload(function(id:String, index:Float, browserGamepad:Dynamic): Void{})
	function new(id:String, index:Float, browserGamepad:Dynamic, ?leftStickX:Float, ?leftStickY:Float, ?rightStickX:Float, ?rightStickY:Float) : Void;
	private function _setButtonValue(newValue:Dynamic, currentValue:Dynamic, buttonIndex:Dynamic) : Dynamic;
	override function update() : Void;
	override function dispose() : Void;
}