package babylon;

extern class SetParentAction extends Action
{
	private var _parent : Dynamic/*UNKNOW_TYPE*/;
	private var _target : Dynamic/*UNKNOW_TYPE*/;
	function new(triggerOptions:Dynamic, target:Dynamic, parent:Dynamic, ?condition:Condition) : Void;
	function _prepare() : Void;
	function execute() : Void;
	function serialize(parent:Dynamic) : Dynamic;
}