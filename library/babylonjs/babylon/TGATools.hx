package babylonjs.babylon;

@:native("BABYLON.TGATools")
extern class TGATools
{
	private static var _TYPE_INDEXED : Dynamic;
	private static var _TYPE_RGB : Dynamic;
	private static var _TYPE_GREY : Dynamic;
	private static var _TYPE_RLE_INDEXED : Dynamic;
	private static var _TYPE_RLE_RGB : Dynamic;
	private static var _TYPE_RLE_GREY : Dynamic;
	private static var _ORIGIN_MASK : Dynamic;
	private static var _ORIGIN_SHIFT : Dynamic;
	private static var _ORIGIN_BL : Dynamic;
	private static var _ORIGIN_BR : Dynamic;
	private static var _ORIGIN_UL : Dynamic;
	private static var _ORIGIN_UR : Dynamic;

	static function GetTGAHeader(data:js.html.Uint8Array) : Dynamic;
	static function UploadContent(gl:js.html.webgl.RenderingContext, data:js.html.Uint8Array) : Void;
	static function _getImageData8bits(header:Dynamic, palettes:js.html.Uint8Array, pixel_data:js.html.Uint8Array, y_start:Float, y_step:Float, y_end:Float, x_start:Float, x_step:Float, x_end:Float) : js.html.Uint8Array;
	static function _getImageData16bits(header:Dynamic, palettes:js.html.Uint8Array, pixel_data:js.html.Uint8Array, y_start:Float, y_step:Float, y_end:Float, x_start:Float, x_step:Float, x_end:Float) : js.html.Uint8Array;
	static function _getImageData24bits(header:Dynamic, palettes:js.html.Uint8Array, pixel_data:js.html.Uint8Array, y_start:Float, y_step:Float, y_end:Float, x_start:Float, x_step:Float, x_end:Float) : js.html.Uint8Array;
	static function _getImageData32bits(header:Dynamic, palettes:js.html.Uint8Array, pixel_data:js.html.Uint8Array, y_start:Float, y_step:Float, y_end:Float, x_start:Float, x_step:Float, x_end:Float) : js.html.Uint8Array;
	static function _getImageDataGrey8bits(header:Dynamic, palettes:js.html.Uint8Array, pixel_data:js.html.Uint8Array, y_start:Float, y_step:Float, y_end:Float, x_start:Float, x_step:Float, x_end:Float) : js.html.Uint8Array;
	static function _getImageDataGrey16bits(header:Dynamic, palettes:js.html.Uint8Array, pixel_data:js.html.Uint8Array, y_start:Float, y_step:Float, y_end:Float, x_start:Float, x_step:Float, x_end:Float) : js.html.Uint8Array;
}