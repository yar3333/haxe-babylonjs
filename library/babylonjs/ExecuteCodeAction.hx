package babylonjs;

@:native("BABYLON.ExecuteCodeAction")
extern class ExecuteCodeAction extends Action
{
	var func : ActionEvent->Void;

	@:overload(function(triggerOptions:Dynamic, func:ActionEvent->Void,?condition:Condition): Void{})
	function new(triggerOptions:Dynamic, ?condition:Condition) : Void;
	@:overload(function(evt:ActionEvent): Void{})
	override function execute(?evt:ActionEvent) : Void;
}