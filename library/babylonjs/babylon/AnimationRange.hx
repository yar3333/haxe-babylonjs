package babylonjs.babylon;

/**
 * Represents the range of an animation
 */
@:native("BABYLON.AnimationRange")
extern class AnimationRange
{
	/**
	 * The name of the animation range*
	 */
	var name : String;
	/**
	 * The starting frame of the animation 
	 */
	var from : Float;
	/**
	 * The ending frame of the animation
	 */
	var to : Float;

	/**
	 * Represents the range of an animation
	 */
	function new(name:String, from:Float, to:Float) : Void;
	/**
	 * Makes a copy of the animation range
	 * @returns A copy of the animation range
	 */
	function clone() : AnimationRange;
}