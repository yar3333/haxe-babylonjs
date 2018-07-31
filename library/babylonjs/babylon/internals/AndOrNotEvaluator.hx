package babylon/internals;

extern class AndOrNotEvaluator
{
	static function Eval(query:String, evaluateCallback:Dynamic->Bool) : Bool;
	private static function _HandleParenthesisContent(parenthesisContent, evaluateCallback);
	private static function _SimplifyNegation(booleanString);
}