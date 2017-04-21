package babylon;

extern class StopAnimationAction extends Action
{
	private var _target : Dynamic/*UNKNOW_TYPE*/;
	function new(triggerOptions:Dynamic, target:Dynamic, ?condition:Condition) : Void;
	function _prepare() : Void;
	function execute() : Void;
	function serialize(parent:Dynamic) : Dynamic;
}