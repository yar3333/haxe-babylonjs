package babylonjs;

/**
 * ActionEvent is the event being sent when an action is triggered.
 */
@:native("BABYLON.ActionEvent")
extern class ActionEvent
{
	/**
	 * The mesh or sprite that triggered the action 
	 */
	var source : Dynamic;
	/**
	 * The X mouse cursor position at the time of the event 
	 */
	var pointerX : Float;
	/**
	 * The Y mouse cursor position at the time of the event 
	 */
	var pointerY : Float;
	/**
	 * The mesh that is currently pointed at (can be null) 
	 */
	var meshUnderPointer : Null<AbstractMesh>;
	/**
	 * the original (browser) event that triggered the ActionEvent 
	 */
	var sourceEvent : Dynamic;
	/**
	 * additional data for the event 
	 */
	var additionalData : Dynamic;

	/**
	 * ActionEvent is the event being sent when an action is triggered.
	 */
	function new(source:Dynamic, pointerX:Float, pointerY:Float, meshUnderPointer:Null<AbstractMesh>, ?sourceEvent:Dynamic, ?additionalData:Dynamic) : Void;
	/**
	 * Helper function to auto-create an ActionEvent from a source mesh.
	 * @returns the new ActionEvent
	 */
	static function CreateNew(source:AbstractMesh, ?evt:js.html.Event, ?additionalData:Dynamic) : ActionEvent;
	/**
	 * Helper function to auto-create an ActionEvent from a source sprite
	 * @returns the new ActionEvent
	 */
	static function CreateNewFromSprite(source:Sprite, scene:Scene, ?evt:js.html.Event, ?additionalData:Dynamic) : ActionEvent;
	/**
	 * Helper function to auto-create an ActionEvent from a scene. If triggered by a mesh use ActionEvent.CreateNew
	 * @returns the new ActionEvent
	 */
	static function CreateNewFromScene(scene:Scene, evt:js.html.Event) : ActionEvent;
	/**
	 * Helper function to auto-create an ActionEvent from a primitive
	 * @returns the new ActionEvent
	 */
	static function CreateNewFromPrimitive(prim:Dynamic, pointerPos:Vector2, ?evt:js.html.Event, ?additionalData:Dynamic) : ActionEvent;
}