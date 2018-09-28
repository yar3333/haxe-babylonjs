package babylonjs.babylon;

/**
 * This represents a color grading texture. This acts as a lookup table LUT, useful during post process
 * It can help converting any input color in a desired output one. This can then be used to create effects
 * from sepia, black and white to sixties or futuristic rendering...
 * 
 * The only supported format is currently 3dl.
 * More information on LUT: https://en.wikipedia.org/wiki/3D_lookup_table/
 */
@:native("BABYLON.ColorGradingTexture")
extern class ColorGradingTexture extends BaseTexture
{
	/**
	 * The current texture matrix. (will always be identity in color grading texture)
	 */
	private var _textureMatrix : Dynamic;
	/**
	 * The texture URL.
	 */
	var url : String;
	/**
	 * Empty line regex stored for GC.
	 */
	private static var _noneEmptyLineRegex : Dynamic;
	private var _engine : Dynamic;

	/**
	 * This represents a color grading texture. This acts as a lookup table LUT, useful during post process
	 * It can help converting any input color in a desired output one. This can then be used to create effects
	 * from sepia, black and white to sixties or futuristic rendering...
	 * 
	 * The only supported format is currently 3dl.
	 * More information on LUT: https://en.wikipedia.org/wiki/3D_lookup_table/
	 */
	@:overload(function(url:String, scene:Scene): Void{})
	function new(scene:Null<Scene>) : Void;
	/**
	 * Returns the texture matrix used in most of the material.
	 * This is not used in color grading but keep for troubleshooting purpose (easily swap diffuse by colorgrading to look in).
	 */
	override function getTextureMatrix() : Matrix;
	/**
	 * Occurs when the file being loaded is a .3dl LUT file.
	 */
	private function load3dlTexture() : Dynamic;
	/**
	 * Starts the loading process of the texture.
	 */
	private function loadTexture() : Dynamic;
	/**
	 * Clones the color gradind texture.
	 */
	@:overload(function(): ColorGradingTexture{})
	override function clone() : Null<BaseTexture>;
	/**
	 * Called during delayed load for textures.
	 */
	override function delayLoad() : Void;
	/**
	 * Parses a color grading texture serialized by Babylon.
	 * @return A color gradind texture
	 */
	static function Parse(parsedTexture:Dynamic, scene:Scene, rootUrl:String) : Null<ColorGradingTexture>;
	/**
	 * Serializes the LUT texture to json format.
	 */
	override function serialize() : Dynamic;
}