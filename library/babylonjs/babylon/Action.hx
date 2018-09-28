package babylonjs.babylon;

/**
 * The action to be carried out following a trigger
 * @see http://doc.babylonjs.com/how_to/how_to_use_actions#available-actions
 */
@:native("BABYLON.Action")
extern class Action
{
	/**
	 * the trigger, with or without parameters, for the action 
	 */
	var triggerOptions : Dynamic;
	/**
	 * Trigger for the action
	 */
	var trigger : Float;
	/**
	 * Internal only - manager for action
	 * @hidden
	 */
	var _actionManager : ActionManager;
	private var _nextActiveAction : Dynamic;
	private var _child : Dynamic;
	@:optional private var _condition : Dynamic;
	private var _triggerParameter : Dynamic;
	/**
	 * An event triggered prior to action being executed.
	 */
	var onBeforeExecuteObservable : Observable<Action>;
	/**
	 * Internal only
	 * @hidden
	 */
	static var _SerializeValueAsString : Dynamic->String;
	/**
	 * Internal only
	 * @hidden
	 */
	static var _GetTargetProperty : haxe.extern.EitherType<Scene, Node>->{ var name : String; var targetType : String; var value : String; };

	/**
	 * The action to be carried out following a trigger
	 * @see http://doc.babylonjs.com/how_to/how_to_use_actions#available-actions
	 */
	function new(triggerOptions:Dynamic, ?condition:Condition) : Void;
	/**
	 * Internal only
	 * @hidden
	 */
	function _prepare() : Void;
	/**
	 * Gets the trigger parameters
	 * @returns the trigger parameters
	 */
	function getTriggerParameter() : Dynamic;
	/**
	 * Internal only - executes current action event
	 * @hidden
	 */
	function _executeCurrent(?evt:ActionEvent) : Void;
	/**
	 * Execute placeholder for child classes
	 */
	function execute(?evt:ActionEvent) : Void;
	/**
	 * Skips to next active action
	 */
	function skipToNextActiveAction() : Void;
	/**
	 * Adds action to chain of actions, may be a DoNothingAction
	 * @returns The action passed in
	 * @see https://www.babylonjs-playground.com/#1T30HR#0
	 */
	function then(action:Action) : Action;
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
	function serialize(parent:Dynamic) : Dynamic;
	/**
	 * Internal only called by serialize
	 * @hidden
	 */
	function _serialize(serializedAction:Dynamic, ?parent:Dynamic) : Dynamic;
}