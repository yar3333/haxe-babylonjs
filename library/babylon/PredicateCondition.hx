package babylon;

extern class PredicateCondition extends Condition
{
	var predicate : Void->Bool;
	var _actionManager : ActionManager;
	function new(actionManager:ActionManager, predicate:Void->Bool) : Void;
	function isValid() : Bool;
}