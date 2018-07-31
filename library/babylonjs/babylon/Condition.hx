package babylon;

extern class Condition
{
	var _actionManager : ActionManager;
	var _evaluationId : Float;
	var _currentResult : Bool;
	function new(actionManager:ActionManager) : Void;
	function isValid() : Bool;
	function _getProperty(propertyPath:String) : String;
	function _getEffectiveTarget(target:Dynamic, propertyPath:String) : Dynamic;
	function serialize() : Dynamic;
	protected function _serialize(serializedCondition:Dynamic) : Dynamic;
}