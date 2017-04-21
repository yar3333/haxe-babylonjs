package babylon;

extern class PlayAnimationAction extends Action
{
	var from : Float;
	var to : Float;
	var loop : Bool;
	private var _target : Dynamic/*UNKNOW_TYPE*/;
	function new(triggerOptions:Dynamic, target:Dynamic, from:Float, to:Float, ?loop:Bool, ?condition:Condition) : Void;
	function _prepare() : Void;
	function execute() : Void;
	function serialize(parent:Dynamic) : Dynamic;
}