package babylon;

extern class VideoTexture extends Texture
{
	var video : VideoElement;
	private var _autoLaunch : Dynamic/*UNKNOW_TYPE*/;
	private var _lastUpdate : Dynamic/*UNKNOW_TYPE*/;
	private var _generateMipMaps : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * Creates a video texture.
	 * Sample : https://doc.babylonjs.com/tutorials/01._Advanced_Texturing
	 * @param {Array} urlsOrVideo can be used to provide an array of urls or an already setup HTML video element.
	 * @param {BABYLON.Scene} scene is obviously the current scene.
	 * @param {boolean} generateMipMaps can be used to turn on mipmaps (Can be expensive for videoTextures because they are often updated).
	 * @param {boolean} invertY is false by default but can be used to invert video on Y axis
	 * @param {number} samplingMode controls the sampling method and is set to TRILINEAR_SAMPLINGMODE by default
	 */
	function new(name:String, urlsOrVideo:haxe.extern.EitherType<Array<String>, VideoElement>, scene:Scene, ?generateMipMaps:Bool, ?invertY:Bool, ?samplingMode:Float) : Void;
	private function _createTexture();
	function update() : Bool;
}