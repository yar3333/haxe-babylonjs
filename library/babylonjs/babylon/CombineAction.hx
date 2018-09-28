package babylonjs.babylon;

@:native("BABYLON.CombineAction")
extern class CombineAction extends Action
{
	var children : Array<Action>;

	@:overload(function(triggerOptions:Dynamic, children:Array<Action>,?condition:Condition): Void{})
	function new(triggerOptions:Dynamic, ?condition:Condition) : Void;
	override function _prepare() : Void;
	@:overload(function(evt:ActionEvent): Void{})
	override function execute(?evt:ActionEvent) : Void;
	override function serialize(parent:Dynamic) : Dynamic;
}