package babylon;

extern class Viewport
{
	var x : Float;
	var y : Float;
	var width : Float;
	var height : Float;
	function new(x:Float, y:Float, width:Float, height:Float) : Void;
	function toGlobal(renderWidth:Float, renderHeight:Float) : Viewport;
}