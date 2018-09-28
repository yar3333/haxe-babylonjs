package babylonjs.babylon;

/**
 * A Condition applied to an Action
 */
@:native("BABYLON.Condition")
extern class Condition
{
	/**
	 * Internal only - manager for action
	 * @hidden
	 */
	var _actionManager : ActionManager;
	/**
	 * Internal only
	 * @hidden
	 */
	var _evaluationId : Float;
	/**
	 * Internal only
	 * @hidden
	 */
	var _currentResult : Bool;

	/**
	 * A Condition applied to an Action
	 */
	function new(actionManager:ActionManager) : Void;
	/**
	 * Check if the current condition is valid
	 * @returns a boolean
	 */
	function isValid() : Bool;
	/**
	 * Internal only
	 * @hidden
	 */
	function _getProperty(propertyPath:String) : String;
	/**
	 * Internal only
	 * @hidden
	 */
	function _getEffectiveTarget(target:Dynamic, propertyPath:String) : Dynamic;
	/**
	 * Serialize placeholder for child classes
	 * @returns the serialized object
	 */
	function serialize() : Dynamic;
	/**
	 * Internal only
	 * @hidden
	 */
	function _serialize(serializedCondition:Dynamic) : Dynamic;
}