package babylon;

extern class ActionEvent
{
	var source : Dynamic;
	var pointerX : Float;
	var pointerY : Float;
	var meshUnderPointer : AbstractMesh;
	var sourceEvent : Dynamic;
	var additionalData : Dynamic;
	/**
	 * @constructor
	 * @param source The mesh or sprite that triggered the action.
	 * @param pointerX The X mouse cursor position at the time of the event
	 * @param pointerY The Y mouse cursor position at the time of the event
	 * @param meshUnderPointer The mesh that is currently pointed at (can be null)
	 * @param sourceEvent the original (browser) event that triggered the ActionEvent
	 */
	function new(source:Dynamic, pointerX:Float, pointerY:Float, meshUnderPointer:AbstractMesh, ?sourceEvent:Dynamic, ?additionalData:Dynamic) : Void;
	/**
	 * Helper function to auto-create an ActionEvent from a source mesh.
	 * @param source The source mesh that triggered the event
	 * @param evt {Event} The original (browser) event
	 */
	static function CreateNew(source:AbstractMesh, ?evt:Event, ?additionalData:Dynamic) : ActionEvent;
	/**
	 * Helper function to auto-create an ActionEvent from a source mesh.
	 * @param source The source sprite that triggered the event
	 * @param scene Scene associated with the sprite
	 * @param evt {Event} The original (browser) event
	 */
	static function CreateNewFromSprite(source:Sprite, scene:Scene, ?evt:Event, ?additionalData:Dynamic) : ActionEvent;
	/**
	 * Helper function to auto-create an ActionEvent from a scene. If triggered by a mesh use ActionEvent.CreateNew
	 * @param scene the scene where the event occurred
	 * @param evt {Event} The original (browser) event
	 */
	static function CreateNewFromScene(scene:Scene, evt:Event) : ActionEvent;
	static function CreateNewFromPrimitive(prim:Dynamic, pointerPos:Vector2, ?evt:Event, ?additionalData:Dynamic) : ActionEvent;
}