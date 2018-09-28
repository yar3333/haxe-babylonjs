package babylonjs.babylon;

/**
 * Action Manager manages all events to be triggered on a given mesh or the global scene.
 * A single scene can have many Action Managers to handle predefined actions on specific meshes.
 * @see http://doc.babylonjs.com/how_to/how_to_use_actions
 */
@:native("BABYLON.ActionManager")
extern class ActionManager
{
	private static var _NothingTrigger : Dynamic;
	private static var _OnPickTrigger : Dynamic;
	private static var _OnLeftPickTrigger : Dynamic;
	private static var _OnRightPickTrigger : Dynamic;
	private static var _OnCenterPickTrigger : Dynamic;
	private static var _OnPickDownTrigger : Dynamic;
	private static var _OnDoublePickTrigger : Dynamic;
	private static var _OnPickUpTrigger : Dynamic;
	private static var _OnLongPressTrigger : Dynamic;
	private static var _OnPointerOverTrigger : Dynamic;
	private static var _OnPointerOutTrigger : Dynamic;
	private static var _OnEveryFrameTrigger : Dynamic;
	private static var _OnIntersectionEnterTrigger : Dynamic;
	private static var _OnIntersectionExitTrigger : Dynamic;
	private static var _OnKeyDownTrigger : Dynamic;
	private static var _OnKeyUpTrigger : Dynamic;
	private static var _OnPickOutTrigger : Dynamic;
	/**
	 * Nothing
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions#triggers
	 */
	static var NothingTrigger(default, null) : Float;
	/**
	 * On pick
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions#triggers
	 */
	static var OnPickTrigger(default, null) : Float;
	/**
	 * On left pick
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions#triggers
	 */
	static var OnLeftPickTrigger(default, null) : Float;
	/**
	 * On right pick
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions#triggers
	 */
	static var OnRightPickTrigger(default, null) : Float;
	/**
	 * On center pick
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions#triggers
	 */
	static var OnCenterPickTrigger(default, null) : Float;
	/**
	 * On pick down
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions#triggers
	 */
	static var OnPickDownTrigger(default, null) : Float;
	/**
	 * On double pick
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions#triggers
	 */
	static var OnDoublePickTrigger(default, null) : Float;
	/**
	 * On pick up
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions#triggers
	 */
	static var OnPickUpTrigger(default, null) : Float;
	/**
	 * On pick out.
	 * This trigger will only be raised if you also declared a OnPickDown
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions#triggers
	 */
	static var OnPickOutTrigger(default, null) : Float;
	/**
	 * On long press
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions#triggers
	 */
	static var OnLongPressTrigger(default, null) : Float;
	/**
	 * On pointer over
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions#triggers
	 */
	static var OnPointerOverTrigger(default, null) : Float;
	/**
	 * On pointer out
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions#triggers
	 */
	static var OnPointerOutTrigger(default, null) : Float;
	/**
	 * On every frame
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions#triggers
	 */
	static var OnEveryFrameTrigger(default, null) : Float;
	/**
	 * On intersection enter
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions#triggers
	 */
	static var OnIntersectionEnterTrigger(default, null) : Float;
	/**
	 * On intersection exit
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions#triggers
	 */
	static var OnIntersectionExitTrigger(default, null) : Float;
	/**
	 * On key down
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions#triggers
	 */
	static var OnKeyDownTrigger(default, null) : Float;
	/**
	 * On key up
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions#triggers
	 */
	static var OnKeyUpTrigger(default, null) : Float;
	/**
	 * Gets the list of active triggers 
	 */
	static var Triggers : Dynamic<Float>;
	/**
	 * Gets the list of actions 
	 */
	var actions : Array<Action>;
	/**
	 * Gets the cursor to use when hovering items 
	 */
	var hoverCursor : String;
	private var _scene : Dynamic;
	/**
	 * Does this action manager has pointer triggers
	 */
	var hasPointerTriggers(default, null) : Bool;
	/**
	 * Does this action manager has pick triggers
	 */
	var hasPickTriggers(default, null) : Bool;
	/**
	 * Does exist one action manager with at least one trigger
	 */
	static var HasTriggers(default, null) : Bool;
	/**
	 * Does exist one action manager with at least one pick trigger
	 */
	static var HasPickTriggers(default, null) : Bool;

	/**
	 * Action Manager manages all events to be triggered on a given mesh or the global scene.
	 * A single scene can have many Action Managers to handle predefined actions on specific meshes.
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions
	 */
	function new(scene:Scene) : Void;
	/**
	 * Releases all associated resources
	 */
	function dispose() : Void;
	/**
	 * Gets hosting scene
	 * @returns the hosting scene
	 */
	function getScene() : Scene;
	/**
	 * Does this action manager handles actions of any of the given triggers
	 * @return a boolean indicating whether one (or more) of the triggers is handled
	 */
	function hasSpecificTriggers(triggers:Array<Float>) : Bool;
	/**
	 * Does this action manager handles actions of a given trigger
	 * @return whether the trigger is handled
	 */
	function hasSpecificTrigger(trigger:Float, ?parameterPredicate:Dynamic->Bool) : Bool;
	/**
	 * Does exist one action manager that handles actions of a given trigger
	 * @return a boolean indicating whether the trigger is handeled by at least one action manager
	 */
	static function HasSpecificTrigger(trigger:Float) : Bool;
	/**
	 * Registers an action to this action manager
	 * @return the action amended (prepared) after registration
	 */
	function registerAction(action:Action) : Null<Action>;
	/**
	 * Unregisters an action to this action manager
	 * @return a boolean indicating whether the action has been unregistered
	 */
	function unregisterAction(action:Action) : Bool;
	/**
	 * Process a specific trigger
	 */
	function processTrigger(trigger:Float, ?evt:ActionEvent) : Void;
	/**
	 * @hidden 
	 */
	function _getEffectiveTarget(target:Dynamic, propertyPath:String) : Dynamic;
	/**
	 * @hidden 
	 */
	function _getProperty(propertyPath:String) : String;
	/**
	 * Serialize this manager to a JSON object
	 * @returns a JSON representation of this manager
	 */
	function serialize(name:String) : Dynamic;
	/**
	 * Creates a new ActionManager from a JSON data
	 */
	static function Parse(parsedActions:Dynamic, object:Null<AbstractMesh>, scene:Scene) : Void;
	/**
	 * Get a trigger name by index
	 * @returns a trigger name
	 */
	static function GetTriggerName(trigger:Float) : String;
}