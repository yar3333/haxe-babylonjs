package babylonjs;

/**
 * Defines a state condition as an extension of Condition
 */
@:native("BABYLON.StateCondition")
extern class StateCondition extends Condition
{
	var value : String;
	/**
	 * Internal only - manager for action
	 * @hidden
	 */
	//var _actionManager : ActionManager;
	/**
	 * Internal only
	 * @hidden
	 */
	private var _target : Dynamic;

	/**
	 * Defines a state condition as an extension of Condition
	 */
	@:overload(function(actionManager:ActionManager, target:Dynamic, value:String): Void{})
	function new(actionManager:ActionManager) : Void;
	/**
	 * @returns the validity of the state
	 */
	override function isValid() : Bool;
	/**
	 * Serialize the StateCondition into a JSON compatible object
	 * @returns serialization object
	 */
	override function serialize() : Dynamic;
}