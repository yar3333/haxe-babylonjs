package babylon;

extern class SetStateAction extends Action
{
	var value : String;
	private var _target : Dynamic/*UNKNOW_TYPE*/;
	function new(triggerOptions:Dynamic, target:Dynamic, value:String, ?condition:Condition) : Void;
	function execute() : Void;
	function serialize(parent:Dynamic) : Dynamic;
}