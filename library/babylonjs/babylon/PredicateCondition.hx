package babylonjs.babylon;

/**
 * Defines a predicate condition as an extension of Condition
 */
@:native("BABYLON.PredicateCondition")
extern class PredicateCondition extends Condition
{
	/**
	 * defines the predicate function used to validate the condition 
	 */
	var predicate : Void->Bool;
	/**
	 * Internal only - manager for action
	 * @hidden
	 */
	//var _actionManager : ActionManager;

	/**
	 * Defines a predicate condition as an extension of Condition
	 */
	@:overload(function(actionManager:ActionManager, predicate:Void->Bool): Void{})
	function new(actionManager:ActionManager) : Void;
	/**
	 * @returns the validity of the predicate condition
	 */
	override function isValid() : Bool;
}