package babylon;

extern class ColorGradingTexture extends BaseTexture
{
	/**
	 * The current internal texture size.
	 */
	private var _size : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * The current texture matrix. (will always be identity in color grading texture)
	 */
	private var _textureMatrix : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * The texture URL.
	 */
	var url : String;
	/**
	 * Empty line regex stored for GC.
	 */
	private static var _noneEmptyLineRegex : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * Instantiates a ColorGradingTexture from the following parameters.
	 *
	 * @param url The location of the color gradind data (currently only supporting 3dl)
	 * @param scene The scene the texture will be used in
	 */
	function new(url:String, scene:Scene) : Void;
	/**
	 * Returns the texture matrix used in most of the material.
	 * This is not used in color grading but keep for troubleshooting purpose (easily swap diffuse by colorgrading to look in).
	 */
	function getTextureMatrix() : Matrix;
	/**
	 * Occurs when the file being loaded is a .3dl LUT file.
	 */
	private function load3dlTexture();
	/**
	 * Starts the loading process of the texture.
	 */
	private function loadTexture();
	/**
	 * Clones the color gradind texture.
	 */
	function clone() : ColorGradingTexture;
	/**
	 * Called during delayed load for textures.
	 */
	function delayLoad() : Void;
	/**
	* Binds the color grading to the shader.
	* @param colorGrading The texture to bind
	* @param effect The effect to bind to
	*/
	static function Bind(colorGrading:BaseTexture, effect:Effect) : Void;
	/**
	 * Prepare the list of uniforms associated with the ColorGrading effects.
	 * @param uniformsList The list of uniforms used in the effect
	 * @param samplersList The list of samplers used in the effect
	 */
	static function PrepareUniformsAndSamplers(uniformsList:Array<String>, samplersList:Array<String>) : Void;
	/**
	 * Parses a color grading texture serialized by Babylon.
	 * @param parsedTexture The texture information being parsedTexture
	 * @param scene The scene to load the texture in
	 * @param rootUrl The root url of the data assets to load
	 * @return A color gradind texture
	 */
	static function Parse(parsedTexture:Dynamic, scene:Scene, rootUrl:String) : ColorGradingTexture;
	/**
	 * Serializes the LUT texture to json format.
	 */
	function serialize() : Dynamic;
}