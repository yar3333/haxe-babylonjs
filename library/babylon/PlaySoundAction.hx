package babylon;

extern class PlaySoundAction extends Action
{
	private var _sound : Dynamic/*UNKNOW_TYPE*/;
	function new(triggerOptions:Dynamic, sound:Sound, ?condition:Condition) : Void;
	function _prepare() : Void;
	function execute() : Void;
	function serialize(parent:Dynamic) : Dynamic;
}