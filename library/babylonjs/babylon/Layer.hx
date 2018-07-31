package babylon;

extern class Layer
{
	var name : String;
	var texture : Texture;
	var isBackground : Bool;
	var color : Color4;
	var scale : Vector2;
	var offset : Vector2;
	var alphaBlendingMode : Float;
	var alphaTest : Bool;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _vertexBuffers : Dynamic/*UNKNOW_TYPE*/;
	private var _indexBuffer : Dynamic/*UNKNOW_TYPE*/;
	private var _effect : Dynamic/*UNKNOW_TYPE*/;
	private var _alphaTestEffect : Dynamic/*UNKNOW_TYPE*/;
	/**
	* An event triggered when the layer is disposed.
	* @type {BABYLON.Observable}
	*/
	var onDisposeObservable : Observable<Layer>;
	private var _onDisposeObserver : Dynamic/*UNKNOW_TYPE*/;
	var onDispose : Void->Void;
	/**
	* An event triggered before rendering the scene
	* @type {BABYLON.Observable}
	*/
	var onBeforeRenderObservable : Observable<Layer>;
	private var _onBeforeRenderObserver : Dynamic/*UNKNOW_TYPE*/;
	var onBeforeRender : Void->Void;
	/**
	* An event triggered after rendering the scene
	* @type {BABYLON.Observable}
	*/
	var onAfterRenderObservable : Observable<Layer>;
	private var _onAfterRenderObserver : Dynamic/*UNKNOW_TYPE*/;
	var onAfterRender : Void->Void;
	function new(name:String, imgUrl:String, scene:Scene, ?isBackground:Bool, ?color:Color4) : Void;
	function render() : Void;
	function dispose() : Void;
}