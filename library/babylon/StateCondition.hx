package babylon;

extern class StateCondition extends Condition
{
	var value : String;
	var _actionManager : ActionManager;
	private var _target : Dynamic/*UNKNOW_TYPE*/;
	function new(actionManager:ActionManager, target:Dynamic, value:String) : Void;
	function isValid() : Bool;
	function serialize() : Dynamic;
}