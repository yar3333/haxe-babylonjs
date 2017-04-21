package babylon;

extern class DoNothingAction extends Action
{
	function new(?triggerOptions:Dynamic, ?condition:Condition) : Void;
	function execute() : Void;
	function serialize(parent:Dynamic) : Dynamic;
}