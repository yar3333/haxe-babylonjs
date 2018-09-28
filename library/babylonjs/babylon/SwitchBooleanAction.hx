package babylonjs.babylon;

@:native("BABYLON.SwitchBooleanAction")
extern class SwitchBooleanAction extends Action
{
	var propertyPath : String;
	private var _target : Dynamic;
	private var _effectiveTarget : Dynamic;
	private var _property : Dynamic;

	@:overload(function(triggerOptions:Dynamic, target:Dynamic, propertyPath:String,?condition:Condition): Void{})
	function new(triggerOptions:Dynamic, ?condition:Condition) : Void;
	override function _prepare() : Void;
	@:overload(function(): Void{})
	override function execute(?evt:ActionEvent) : Void;
	override function serialize(parent:Dynamic) : Dynamic;
}