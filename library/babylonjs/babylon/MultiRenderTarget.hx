package babylonjs.babylon;

@:native("BABYLON.MultiRenderTarget")
extern class MultiRenderTarget extends RenderTargetTexture
{
	private var _internalTextures : Dynamic;
	private var _textures : Dynamic;
	var isSupported(default, null) : Bool;
	private var _multiRenderTargetOptions : Dynamic;
	var textures(default, null) : Array<Texture>;
	var depthTexture(default, null) : Texture;
	//var wrapU : Float;
	//var wrapV : Float;
	//var samples : Float;

	@:overload(function(name:String, size:Dynamic, count:Float, scene:Scene,?options:IMultiRenderTargetOptions): Void{})
	function new(scene:Null<Scene>) : Void;
	override function _rebuild() : Void;
	private function _createInternalTextures() : Dynamic;
	private function _createTextures() : Dynamic;
	@:overload(function(size:Dynamic): Void{})
	override function resize(size:haxe.extern.EitherType<Float, haxe.extern.EitherType<{ var width : Float; var height : Float; }, { var ratio : Float; }>>) : Void;
	override function unbindFrameBuffer(engine:Engine, faceIndex:Float) : Void;
	override function dispose() : Void;
	function releaseInternalTextures() : Void;
}