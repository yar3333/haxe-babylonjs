package babylonjs;

/**
 * Class used to evalaute queries containing `and` and `or` operators
 */
@:native("BABYLON.AndOrNotEvaluator")
extern class AndOrNotEvaluator
{
	/**
	 * Evaluate a query
	 * @returns true if the query matches
	 */
	static function Eval(query:String, evaluateCallback:Dynamic->Bool) : Bool;
	private static function _HandleParenthesisContent(parenthesisContent:Dynamic, evaluateCallback:Dynamic) : Dynamic;
	private static function _SimplifyNegation(booleanString:Dynamic) : Dynamic;
}