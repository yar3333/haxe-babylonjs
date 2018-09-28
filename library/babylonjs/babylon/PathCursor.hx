package babylonjs.babylon;

/**
 * A cursor which tracks a point on a path
 */
@:native("BABYLON.PathCursor")
extern class PathCursor
{
	private var path : Dynamic;
	/**
	 * Stores path cursor callbacks for when an onchange event is triggered
	 */
	private var _onchange : Dynamic;
	/**
	 * The value of the path cursor
	 */
	var value : Float;
	/**
	 * The animation array of the path cursor
	 */
	var animations : Array<Animation>;

	/**
	 * A cursor which tracks a point on a path
	 */
	function new(path:Path2) : Void;
	/**
	 * Gets the cursor point on the path
	 * @returns A point on the path cursor at the cursor location
	 */
	function getPoint() : Vector3;
	/**
	 * Moves the cursor ahead by the step amount
	 * @returns This path cursor
	 */
	function moveAhead(?step:Float) : PathCursor;
	/**
	 * Moves the cursor behind by the step amount
	 * @returns This path cursor
	 */
	function moveBack(?step:Float) : PathCursor;
	/**
	 * Moves the cursor by the step amount
	 * If the step amount is greater than one, an exception is thrown
	 * @returns This path cursor
	 */
	function move(step:Float) : PathCursor;
	/**
	 * Ensures that the value is limited between zero and one
	 * @returns This path cursor
	 */
	private function ensureLimits() : Dynamic;
	/**
	 * Runs onchange callbacks on change (used by the animation engine)
	 * @returns This path cursor
	 */
	private function raiseOnChange() : Dynamic;
	/**
	 * Executes a function on change
	 * @returns This path cursor
	 */
	function onchange(f:PathCursor->Void) : PathCursor;
}