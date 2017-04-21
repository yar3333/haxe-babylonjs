package babylon;

extern class ExecuteCodeAction extends Action
{
	var func : ActionEvent->Void;
	function new(triggerOptions:Dynamic, func:ActionEvent->Void, ?condition:Condition) : Void;
	function execute(evt:ActionEvent) : Void;
}