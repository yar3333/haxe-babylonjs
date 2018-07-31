package babylon;

extern class SwitchBooleanAction extends Action
{
	var propertyPath : String;
	private var _target : Dynamic/*UNKNOW_TYPE*/;
	private var _effectiveTarget : Dynamic/*UNKNOW_TYPE*/;
	private var _property : Dynamic/*UNKNOW_TYPE*/;
	function new(triggerOptions:Dynamic, target:Dynamic, propertyPath:String, ?condition:Condition) : Void;
	function _prepare() : Void;
	function execute() : Void;
	function serialize(parent:Dynamic) : Dynamic;
}