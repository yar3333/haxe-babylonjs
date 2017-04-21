package babylon;

extern class ActionManager
{
	private static var _NothingTrigger : Dynamic/*UNKNOW_TYPE*/;
	private static var _OnPickTrigger : Dynamic/*UNKNOW_TYPE*/;
	private static var _OnLeftPickTrigger : Dynamic/*UNKNOW_TYPE*/;
	private static var _OnRightPickTrigger : Dynamic/*UNKNOW_TYPE*/;
	private static var _OnCenterPickTrigger : Dynamic/*UNKNOW_TYPE*/;
	private static var _OnPickDownTrigger : Dynamic/*UNKNOW_TYPE*/;
	private static var _OnPickUpTrigger : Dynamic/*UNKNOW_TYPE*/;
	private static var _OnLongPressTrigger : Dynamic/*UNKNOW_TYPE*/;
	private static var _OnPointerOverTrigger : Dynamic/*UNKNOW_TYPE*/;
	private static var _OnPointerOutTrigger : Dynamic/*UNKNOW_TYPE*/;
	private static var _OnEveryFrameTrigger : Dynamic/*UNKNOW_TYPE*/;
	private static var _OnIntersectionEnterTrigger : Dynamic/*UNKNOW_TYPE*/;
	private static var _OnIntersectionExitTrigger : Dynamic/*UNKNOW_TYPE*/;
	private static var _OnKeyDownTrigger : Dynamic/*UNKNOW_TYPE*/;
	private static var _OnKeyUpTrigger : Dynamic/*UNKNOW_TYPE*/;
	private static var _OnPickOutTrigger : Dynamic/*UNKNOW_TYPE*/;
	static var NothingTrigger : Float;
	static var OnPickTrigger : Float;
	static var OnLeftPickTrigger : Float;
	static var OnRightPickTrigger : Float;
	static var OnCenterPickTrigger : Float;
	static var OnPickDownTrigger : Float;
	static var OnPickUpTrigger : Float;
	static var OnPickOutTrigger : Float;
	static var OnLongPressTrigger : Float;
	static var OnPointerOverTrigger : Float;
	static var OnPointerOutTrigger : Float;
	static var OnEveryFrameTrigger : Float;
	static var OnIntersectionEnterTrigger : Float;
	static var OnIntersectionExitTrigger : Float;
	static var OnKeyDownTrigger : Float;
	static var OnKeyUpTrigger : Float;
	static var DragMovementThreshold : Float;
	static var LongPressDelay : Float;
	var actions : Array<Action>;
	var hoverCursor : String;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	function new(scene:Scene) : Void;
	function dispose() : Void;
	function getScene() : Scene;
	/**
	 * Does this action manager handles actions of any of the given triggers
	 * @param {number[]} triggers - the triggers to be tested
	 * @return {boolean} whether one (or more) of the triggers is handeled
	 */
	function hasSpecificTriggers(triggers:Array<Float>) : Bool;
	/**
	 * Does this action manager handles actions of a given trigger
	 * @param {number} trigger - the trigger to be tested
	 * @return {boolean} whether the trigger is handeled
	 */
	function hasSpecificTrigger(trigger:Float) : Bool;
	/**
	 * Does this action manager has pointer triggers
	 * @return {boolean} whether or not it has pointer triggers
	 */
	var hasPointerTriggers : Bool;
	/**
	 * Does this action manager has pick triggers
	 * @return {boolean} whether or not it has pick triggers
	 */
	var hasPickTriggers : Bool;
	/**
	 * Registers an action to this action manager
	 * @param {BABYLON.Action} action - the action to be registered
	 * @return {BABYLON.Action} the action amended (prepared) after registration
	 */
	function registerAction(action:Action) : Action;
	/**
	 * Process a specific trigger
	 * @param {number} trigger - the trigger to process
	 * @param evt {BABYLON.ActionEvent} the event details to be processed
	 */
	function processTrigger(trigger:Float, evt:ActionEvent) : Void;
	function _getEffectiveTarget(target:Dynamic, propertyPath:String) : Dynamic;
	function _getProperty(propertyPath:String) : String;
	function serialize(name:String) : Dynamic;
	static function Parse(parsedActions:Dynamic, object:AbstractMesh, scene:Scene) : Void;
	static function GetTriggerName(trigger:Float) : String;
}