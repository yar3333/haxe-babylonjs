package babylonjs.babylon;

@:native("BABYLON.DoNothingAction")
extern class DoNothingAction extends Action
{
	@:overload(function(?triggerOptions:Dynamic,?condition:Condition): Void{})
	function new(triggerOptions:Dynamic, ?condition:Condition) : Void;
	@:overload(function(): Void{})
	override function execute(?evt:ActionEvent) : Void;
	override function serialize(parent:Dynamic) : Dynamic;
}