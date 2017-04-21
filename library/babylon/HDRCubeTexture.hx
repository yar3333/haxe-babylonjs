package babylon;

extern class HDRCubeTexture extends BaseTexture
{
	private static var _facesMapping : Dynamic/*UNKNOW_TYPE*/;
	private var _useInGammaSpace : Dynamic/*UNKNOW_TYPE*/;
	private var _generateHarmonics : Dynamic/*UNKNOW_TYPE*/;
	private var _noMipmap : Dynamic/*UNKNOW_TYPE*/;
	private var _extensions : Dynamic/*UNKNOW_TYPE*/;
	private var _textureMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _size : Dynamic/*UNKNOW_TYPE*/;
	private var _usePMREMGenerator : Dynamic/*UNKNOW_TYPE*/;
	private var _isBABYLONPreprocessed : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * The texture URL.
	 */
	var url : String;
	/**
	 * The texture coordinates mode. As this texture is stored in a cube format, please modify carefully.
	 */
	var coordinatesMode : Float;
	/**
	 * The spherical polynomial data extracted from the texture.
	 */
	var sphericalPolynomial : SphericalPolynomial;
	/**
	 * Specifies wether the texture has been generated through the PMREMGenerator tool.
	 * This is usefull at run time to apply the good shader.
	 */
	var isPMREM : Bool;
	/**
	 * Instantiates an HDRTexture from the following parameters.
	 *
	 * @param url The location of the HDR raw data (Panorama stored in RGBE format)
	 * @param scene The scene the texture will be used in
	 * @param size The cubemap desired size (the more it increases the longer the generation will be) If the size is omitted this implies you are using a preprocessed cubemap.
	 * @param noMipmap Forces to not generate the mipmap if true
	 * @param generateHarmonics Specifies wether you want to extract the polynomial harmonics during the generation process
	 * @param useInGammaSpace Specifies if the texture will be use in gamma or linear space (the PBR material requires those texture in linear space, but the standard material would require them in Gamma space)
	 * @param usePMREMGenerator Specifies wether or not to generate the CubeMap through CubeMapGen to avoid seams issue at run time.
	 */
	function new(url:String, scene:Scene, ?size:Float, ?noMipmap:Bool, ?generateHarmonics:Bool, ?useInGammaSpace:Bool, ?usePMREMGenerator:Bool) : Void;
	/**
	 * Occurs when the file is a preprocessed .babylon.hdr file.
	 */
	private function loadBabylonTexture();
	/**
	 * Occurs when the file is raw .hdr file.
	 */
	private function loadHDRTexture();
	/**
	 * Starts the loading process of the texture.
	 */
	private function loadTexture();
	function clone() : HDRCubeTexture;
	function delayLoad() : Void;
	function getReflectionTextureMatrix() : Matrix;
	static function Parse(parsedTexture:Dynamic, scene:Scene, rootUrl:String) : HDRCubeTexture;
	function serialize() : Dynamic;
	/**
	 * Saves as a file the data contained in the texture in a binary format.
	 * This can be used to prevent the long loading tie associated with creating the seamless texture as well
	 * as the spherical used in the lighting.
	 * @param url The HDR file url.
	 * @param size The size of the texture data to generate (one of the cubemap face desired width).
	 * @param onError Method called if any error happens during download.
	 * @return The packed binary data.
	 */
	static function generateBabylonHDROnDisk(url:String, size:Float, onError?: (() => void)) : Void;
	/**
	 * Serializes the data contained in the texture in a binary format.
	 * This can be used to prevent the long loading tie associated with creating the seamless texture as well
	 * as the spherical used in the lighting.
	 * @param url The HDR file url.
	 * @param size The size of the texture data to generate (one of the cubemap face desired width).
	 * @param onError Method called if any error happens during download.
	 * @return The packed binary data.
	 */
	static function generateBabylonHDR(url:String, size:Float, callback: ((ArrayBuffer) => void), onError?: (() => void)) : Void;
}