package babylonjs.babylon;

/**
 * for description see https://www.khronos.org/opengles/sdk/tools/KTX/
 * for file layout see https://www.khronos.org/opengles/sdk/tools/KTX/file_format_spec/
 */
@:native("BABYLON.KhronosTextureContainer")
extern class KhronosTextureContainer
{
	var arrayBuffer : Dynamic;
	static var HEADER_LEN : Float;
	static var COMPRESSED_2D : Float;
	static var COMPRESSED_3D : Float;
	static var TEX_2D : Float;
	static var TEX_3D : Float;
	var glType : Float;
	var glTypeSize : Float;
	var glFormat : Float;
	var glInternalFormat : Float;
	var glBaseInternalFormat : Float;
	var pixelWidth : Float;
	var pixelHeight : Float;
	var pixelDepth : Float;
	var numberOfArrayElements : Float;
	var numberOfFaces : Float;
	var numberOfMipmapLevels : Float;
	var bytesOfKeyValueData : Float;
	var loadType : Float;

	/**
	 * for description see https://www.khronos.org/opengles/sdk/tools/KTX/
	 * for file layout see https://www.khronos.org/opengles/sdk/tools/KTX/file_format_spec/
	 */
	function new(arrayBuffer:Dynamic, facesExpected:Float, ?threeDExpected:Bool, ?textureArrayExpected:Bool) : Void;
	function switchEndainness(val:Float) : Float;
	/**
	 * It is assumed that the texture has already been created & is currently bound
	 */
	function uploadLevels(gl:js.html.webgl.RenderingContext, loadMipmaps:Bool) : Void;
	private function _upload2DCompressedLevels(gl:Dynamic, loadMipmaps:Dynamic) : Dynamic;
}