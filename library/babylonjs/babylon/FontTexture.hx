package babylon;

extern class FontTexture extends Texture
{
	private var _canvas : Dynamic/*UNKNOW_TYPE*/;
	private var _context : Dynamic/*UNKNOW_TYPE*/;
	private var _lineHeight : Dynamic/*UNKNOW_TYPE*/;
	private var _lineHeightSuper : Dynamic/*UNKNOW_TYPE*/;
	private var _xMargin : Dynamic/*UNKNOW_TYPE*/;
	private var _yMargin : Dynamic/*UNKNOW_TYPE*/;
	private var _offset : Dynamic/*UNKNOW_TYPE*/;
	private var _currentFreePosition : Dynamic/*UNKNOW_TYPE*/;
	private var _charInfos : Dynamic/*UNKNOW_TYPE*/;
	private var _curCharCount : Dynamic/*UNKNOW_TYPE*/;
	private var _lastUpdateCharCount : Dynamic/*UNKNOW_TYPE*/;
	private var _spaceWidth : Dynamic/*UNKNOW_TYPE*/;
	private var _spaceWidthSuper : Dynamic/*UNKNOW_TYPE*/;
	private var _usedCounter : Dynamic/*UNKNOW_TYPE*/;
	private var _superSample : Dynamic/*UNKNOW_TYPE*/;
	private var _sdfCanvas : Dynamic/*UNKNOW_TYPE*/;
	private var _sdfContext : Dynamic/*UNKNOW_TYPE*/;
	private var _signedDistanceField : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedFontId : Dynamic/*UNKNOW_TYPE*/;
	private var _sdfScale : Dynamic/*UNKNOW_TYPE*/;
	var isSuperSampled : Bool;
	var isSignedDistanceField : Bool;
	var spaceWidth : Float;
	var lineHeight : Float;
	static function GetCachedFontTexture(scene:Scene, fontName:String, ?supersample:Bool, ?signedDistanceField:Bool) : FontTexture;
	static function ReleaseCachedFontTexture(scene:Scene, fontName:String, ?supersample:Bool, ?signedDistanceField:Bool) : Void;
	/**
	 * Create a new instance of the FontTexture class
	 * @param name the name of the texture
	 * @param font the font to use, use the W3C CSS notation
	 * @param scene the scene that owns the texture
	 * @param maxCharCount the approximative maximum count of characters that could fit in the texture. This is an approximation because most of the fonts are proportional (each char has its own Width). The 'W' character's width is used to compute the size of the texture based on the given maxCharCount
	 * @param samplingMode the texture sampling mode
	 * @param superSample if true the FontTexture will be created with a font of a size twice bigger than the given one but all properties (lineHeight, charWidth, etc.) will be according to the original size. This is made to improve the text quality.
	 */
	function new(name:String, font:String, scene:Scene, ?maxCharCount:Float, ?samplingMode:Float, ?superSample:Bool, ?signedDistanceField:Bool) : Void;
	/**
	 * Make sure the given char is present in the font map.
	 * @param char the character to get or add
	 * @return the CharInfo instance corresponding to the given character
	 */
	function getChar(char:String) : CharInfo;
	private function _computeSDFChar(source);
	function measureText(text:String, ?tabulationSize:Float) : Size;
	private function getSuperSampleFont(font);
	private function getFontHeight(font);
	var canRescale : Bool;
	function getContext() : CanvasRenderingContext2D;
	/**
	 * Call this method when you've call getChar() at least one time, this will update the texture if needed.
	 * Don't be afraid to call it, if no new character was added, this method simply does nothing.
	 */
	function update() : Void;
	function clone() : FontTexture;
	/**
	 * For FontTexture retrieved using GetCachedFontTexture, use this method when you transfer this object's lifetime to another party in order to share this resource.
	 * When the other party is done with this object, decCachedFontTextureCounter must be called.
	 */
	function incCachedFontTextureCounter() : Void;
	/**
	 * Use this method only in conjunction with incCachedFontTextureCounter, call it when you no longer need to use this shared resource.
	 */
	function decCachedFontTextureCounter() : Void;
}