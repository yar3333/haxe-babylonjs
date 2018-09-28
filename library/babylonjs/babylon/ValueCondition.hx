package babylonjs.babylon;

/**
 * Defines specific conditional operators as extensions of Condition
 */
@:native("BABYLON.ValueCondition")
extern class ValueCondition extends Condition
{
	/**
	 * path to specify the property of the target the conditional operator uses  
	 */
	var propertyPath : String;
	/**
	 * the value compared by the conditional operator against the current value of the property 
	 */
	var value : Dynamic;
	/**
	 * the conditional operator, default ValueCondition.IsEqual 
	 */
	var operator : Float;
	/**
	 * Internal only
	 * @hidden
	 */
	private static var _IsEqual : Dynamic;
	/**
	 * Internal only
	 * @hidden
	 */
	private static var _IsDifferent : Dynamic;
	/**
	 * Internal only
	 * @hidden
	 */
	private static var _IsGreater : Dynamic;
	/**
	 * Internal only
	 * @hidden
	 */
	private static var _IsLesser : Dynamic;
	/**
	 * returns the number for IsEqual
	 */
	static var IsEqual(default, null) : Float;
	/**
	 * Returns the number for IsDifferent
	 */
	static var IsDifferent(default, null) : Float;
	/**
	 * Returns the number for IsGreater
	 */
	static var IsGreater(default, null) : Float;
	/**
	 * Returns the number for IsLesser
	 */
	static var IsLesser(default, null) : Float;
	/**
	 * Internal only The action manager for the condition
	 * @hidden
	 */
	//var _actionManager : ActionManager;
	/**
	 * Internal only
	 * @hidden
	 */
	private var _target : Dynamic;
	/**
	 * Internal only
	 * @hidden
	 */
	private var _effectiveTarget : Dynamic;
	/**
	 * Internal only
	 * @hidden
	 */
	private var _property : Dynamic;

	/**
	 * Defines specific conditional operators as extensions of Condition
	 */
	@:overload(function(actionManager:ActionManager, target:Dynamic, propertyPath:String, value:Dynamic,?operator:Float): Void{})
	function new(actionManager:ActionManager) : Void;
	/**
	 * Compares the given value with the property value for the specified conditional operator
	 * @returns the result of the comparison
	 */
	override function isValid() : Bool;
	/**
	 * Serialize the ValueCondition into a JSON compatible object
	 * @returns serialization object
	 */
	override function serialize() : Dynamic;
	/**
	 * Gets the name of the conditional operator for the ValueCondition
	 * @returns the name
	 */
	static function GetOperatorName(operator:Float) : String;
}