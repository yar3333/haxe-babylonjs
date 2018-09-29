package babylonjs;

@:native("BABYLON.Viewport")
extern class Viewport
{
	var x : Float;
	var y : Float;
	var width : Float;
	var height : Float;

	function new(x:Float, y:Float, width:Float, height:Float) : Void;
	function toGlobal(renderWidthOrEngine:haxe.extern.EitherType<Float, Engine>, renderHeight:Float) : Viewport;
	/**
	 * Returns a new Viewport copied from the current one.
	 */
	function clone() : Viewport;
}