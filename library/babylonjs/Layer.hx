package babylonjs;

@:native("BABYLON.Layer")
extern class Layer
{
	var name : String;
	var texture : Null<Texture>;
	var isBackground : Bool;
	var color : Color4;
	var scale : Vector2;
	var offset : Vector2;
	var alphaBlendingMode : Float;
	var alphaTest : Bool;
	var layerMask : Float;
	private var _scene : Dynamic;
	private var _vertexBuffers : Dynamic;
	private var _indexBuffer : Dynamic;
	private var _effect : Dynamic;
	private var _alphaTestEffect : Dynamic;
	/**
	 * An event triggered when the layer is disposed.
	 */
	var onDisposeObservable : Observable<Layer>;
	private var _onDisposeObserver : Dynamic;
	var onDispose : Void->Void;
	/**
	 * An event triggered before rendering the scene
	 */
	var onBeforeRenderObservable : Observable<Layer>;
	private var _onBeforeRenderObserver : Dynamic;
	var onBeforeRender : Void->Void;
	/**
	 * An event triggered after rendering the scene
	 */
	var onAfterRenderObservable : Observable<Layer>;
	private var _onAfterRenderObserver : Dynamic;
	var onAfterRender : Void->Void;

	function new(name:String, imgUrl:Null<String>, scene:Null<Scene>, ?isBackground:Bool, ?color:Color4) : Void;
	private function _createIndexBuffer() : Dynamic;
	function _rebuild() : Void;
	function render() : Void;
	function dispose() : Void;
}