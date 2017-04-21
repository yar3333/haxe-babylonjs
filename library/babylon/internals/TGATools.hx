package babylon/internals;

extern class TGATools
{
	private static var _TYPE_NO_DATA : Dynamic/*UNKNOW_TYPE*/;
	private static var _TYPE_INDEXED : Dynamic/*UNKNOW_TYPE*/;
	private static var _TYPE_RGB : Dynamic/*UNKNOW_TYPE*/;
	private static var _TYPE_GREY : Dynamic/*UNKNOW_TYPE*/;
	private static var _TYPE_RLE_INDEXED : Dynamic/*UNKNOW_TYPE*/;
	private static var _TYPE_RLE_RGB : Dynamic/*UNKNOW_TYPE*/;
	private static var _TYPE_RLE_GREY : Dynamic/*UNKNOW_TYPE*/;
	private static var _ORIGIN_MASK : Dynamic/*UNKNOW_TYPE*/;
	private static var _ORIGIN_SHIFT : Dynamic/*UNKNOW_TYPE*/;
	private static var _ORIGIN_BL : Dynamic/*UNKNOW_TYPE*/;
	private static var _ORIGIN_BR : Dynamic/*UNKNOW_TYPE*/;
	private static var _ORIGIN_UL : Dynamic/*UNKNOW_TYPE*/;
	private static var _ORIGIN_UR : Dynamic/*UNKNOW_TYPE*/;
	static function GetTGAHeader(data:Uint8Array) : Dynamic;
	static function UploadContent(gl:js.html.webgl.RenderingContext, data:Uint8Array) : Void;
	static function _getImageData8bits(header:Dynamic, palettes:Uint8Array, pixel_data:Uint8Array, y_start:Float, y_step:Float, y_end:Float, x_start:Float, x_step:Float, x_end:Float) : Uint8Array;
	static function _getImageData16bits(header:Dynamic, palettes:Uint8Array, pixel_data:Uint8Array, y_start:Float, y_step:Float, y_end:Float, x_start:Float, x_step:Float, x_end:Float) : Uint8Array;
	static function _getImageData24bits(header:Dynamic, palettes:Uint8Array, pixel_data:Uint8Array, y_start:Float, y_step:Float, y_end:Float, x_start:Float, x_step:Float, x_end:Float) : Uint8Array;
	static function _getImageData32bits(header:Dynamic, palettes:Uint8Array, pixel_data:Uint8Array, y_start:Float, y_step:Float, y_end:Float, x_start:Float, x_step:Float, x_end:Float) : Uint8Array;
	static function _getImageDataGrey8bits(header:Dynamic, palettes:Uint8Array, pixel_data:Uint8Array, y_start:Float, y_step:Float, y_end:Float, x_start:Float, x_step:Float, x_end:Float) : Uint8Array;
	static function _getImageDataGrey16bits(header:Dynamic, palettes:Uint8Array, pixel_data:Uint8Array, y_start:Float, y_step:Float, y_end:Float, x_start:Float, x_step:Float, x_end:Float) : Uint8Array;
}