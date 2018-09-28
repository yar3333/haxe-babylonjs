package babylonjs.babylon;

/**
 * Composed of a frame, and an action function
 */
@:native("BABYLON.AnimationEvent")
extern class AnimationEvent
{
	/**
	 * The frame for which the event is triggered *
	 */
	var frame : Float;
	/**
	 * The event to perform when triggered *
	 */
	var action : Void->Void;
	/**
	 * Specifies if the event should be triggered only once*
	 */
	var onlyOnce : haxe.extern.EitherType<Bool, {}>;
	/**
	 * Specifies if the animation event is done
	 */
	var isDone : Bool;

	/**
	 * Composed of a frame, and an action function
	 */
	function new(frame:Float, action:Void->Void, ?onlyOnce:haxe.extern.EitherType<Bool, {}>) : Void;
}