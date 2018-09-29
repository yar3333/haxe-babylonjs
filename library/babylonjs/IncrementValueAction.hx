package babylonjs;

@:native("BABYLON.IncrementValueAction")
extern class IncrementValueAction extends Action
{
	var propertyPath : String;
	var value : Dynamic;
	private var _target : Dynamic;
	private var _effectiveTarget : Dynamic;
	private var _property : Dynamic;

	@:overload(function(triggerOptions:Dynamic, target:Dynamic, propertyPath:String, value:Dynamic,?condition:Condition): Void{})
	function new(triggerOptions:Dynamic, ?condition:Condition) : Void;
	override function _prepare() : Void;
	@:overload(function(): Void{})
	override function execute(?evt:ActionEvent) : Void;
	override function serialize(parent:Dynamic) : Dynamic;
}