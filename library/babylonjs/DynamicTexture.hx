package babylonjs;

/**
 * A class extending {BABYLON.Texture} allowing drawing on a texture
 * @see http://doc.babylonjs.com/how_to/dynamictexture
 */
@:native("BABYLON.DynamicTexture")
extern class DynamicTexture extends Texture
{
	private var _generateMipMaps : Dynamic;
	private var _canvas : Dynamic;
	private var _context : Dynamic;
	private var _engine : Dynamic;
	/**
	 * Gets the current state of canRescale
	 */
	//var canRescale(default, null) : Bool;

	/**
	 * A class extending {BABYLON.Texture} allowing drawing on a texture
	 * @see http://doc.babylonjs.com/how_to/dynamictexture
	 */
	function new(name:String, options:Dynamic, scene:haxe.extern.EitherType<Scene, {}>, generateMipMaps:Bool, ?samplingMode:Float, ?format:Float) : Void;
	private function _recreate(textureSize:Dynamic) : Dynamic;
	/**
	 * Scales the texture
	 */
	function scale(ratio:Float) : Void;
	/**
	 * Resizes the texture
	 */
	function scaleTo(width:Float, height:Float) : Void;
	/**
	 * Gets the context of the canvas used by the texture
	 * @returns the canvas context of the dynamic texture
	 */
	function getContext() : CanvasRenderingContext2D;
	/**
	 * Clears the texture
	 */
	function clear() : Void;
	/**
	 * Updates the texture
	 */
	function update(?invertY:Bool) : Void;
	/**
	 * Draws text onto the texture
	 */
	function drawText(text:String, x:Float, y:Float, font:String, color:String, clearColor:String, ?invertY:Bool, ?update:Bool) : Void;
	/**
	 * Clones the texture
	 * @returns the clone of the texture.
	 */
	function clone() : DynamicTexture;
	/**
	 * @hidden 
	 */
	function _rebuild() : Void;
}