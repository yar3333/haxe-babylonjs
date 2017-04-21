package babylon;

extern class DynamicTexture extends Texture
{
	private var _generateMipMaps : Dynamic/*UNKNOW_TYPE*/;
	private var _canvas : Dynamic/*UNKNOW_TYPE*/;
	private var _context : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, options:Dynamic, scene:Scene, generateMipMaps:Bool, ?samplingMode:Float) : Void;
	var canRescale : Bool;
	function scale(ratio:Float) : Void;
	function getContext() : CanvasRenderingContext2D;
	function clear() : Void;
	function update(?invertY:Bool) : Void;
	function drawText(text:String, x:Float, y:Float, font:String, color:String, clearColor:String, ?invertY:Bool, ?update:Bool) : Void;
	function clone() : DynamicTexture;
}