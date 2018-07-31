package babylon;

extern class CombineAction extends Action
{
	var children : Array<Action>;
	function new(triggerOptions:Dynamic, children:Array<Action>, ?condition:Condition) : Void;
	function _prepare() : Void;
	function execute(evt:ActionEvent) : Void;
	function serialize(parent:Dynamic) : Dynamic;
}