package babylonjs;

@:native("BABYLON.VideoTexture")
extern class VideoTexture extends Texture
{
	/**
	 * Tells whether textures will be updated automatically or user is required to call `updateTexture` manually
	 */
	var autoUpdateTexture(default, null) : Bool;
	/**
	 * The video instance used by the texture internally
	 */
	var video(default, null) : js.html.VideoElement;
	private var _generateMipMaps : Dynamic;
	private var _engine : Dynamic;
	private var _stillImageCaptured : Dynamic;
	private var _createInternalTexture : Dynamic;
	private var reset : Dynamic;
	private var _updateInternalTexture : haxe.extern.EitherType<js.html.Event, {}>->Void;

	@:overload(function(name:Null<String>, src:haxe.extern.EitherType<String, haxe.extern.EitherType<Array<String>, js.html.VideoElement>>, scene:Null<Scene>,?generateMipMaps:Bool,?invertY:Bool,?samplingMode:Float,?settings:VideoTextureSettings): Void{})
	function new(scene:Null<Scene>) : Void;
	private function _getName(src:Dynamic) : Dynamic;
	private function _getVideo(src:Dynamic) : Dynamic;
	/**
	 * Internal method to initiate `update`.
	 */
	override function _rebuild() : Void;
	/**
	 * Update Texture in the `auto` mode. Does not do anything if `settings.autoUpdateTexture` is false.
	 */
	function update() : Void;
	/**
	 * Update Texture in `manual` mode. Does not do anything if not visible or paused.
	 */
	function updateTexture(isVisible:Bool) : Void;
	/**
	 * Change video content. Changing video instance or setting multiple urls (as in constructor) is not supported.
	 */
	override function updateURL(url:String) : Void;
	override function dispose() : Void;
	static function CreateFromWebCam(scene:Scene, onReady:VideoTexture->Void, constraints:{ var minWidth : Float; var maxWidth : Float; var minHeight : Float; var maxHeight : Float; var deviceId : String; }) : Void;
}