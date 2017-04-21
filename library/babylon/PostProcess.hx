package babylon;

extern class PostProcess
{
	var name : String;
	var width : Float;
	var height : Float;
	var renderTargetSamplingMode : Float;
	var clearColor : Color4;
	var enablePixelPerfectMode : Bool;
	private var _camera : Dynamic/*UNKNOW_TYPE*/;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _engine : Dynamic/*UNKNOW_TYPE*/;
	private var _options : Dynamic/*UNKNOW_TYPE*/;
	private var _reusable : Dynamic/*UNKNOW_TYPE*/;
	private var _textureType : Dynamic/*UNKNOW_TYPE*/;
	var _textures : SmartArray<WebGLTexture>;
	var _currentRenderTextureInd : Float;
	private var _effect : Dynamic/*UNKNOW_TYPE*/;
	private var _samplers : Dynamic/*UNKNOW_TYPE*/;
	private var _fragmentUrl : Dynamic/*UNKNOW_TYPE*/;
	private var _parameters : Dynamic/*UNKNOW_TYPE*/;
	private var _scaleRatio : Dynamic/*UNKNOW_TYPE*/;
	/**
	* An event triggered when the postprocess is activated.
	* @type {BABYLON.Observable}
	*/
	var onActivateObservable : Observable<Camera>;
	private var _onActivateObserver : Dynamic/*UNKNOW_TYPE*/;
	var onActivate : Camera->Void;
	/**
	* An event triggered when the postprocess changes its size.
	* @type {BABYLON.Observable}
	*/
	var onSizeChangedObservable : Observable<PostProcess>;
	private var _onSizeChangedObserver : Dynamic/*UNKNOW_TYPE*/;
	var onSizeChanged : PostProcess->Void;
	/**
	* An event triggered when the postprocess applies its effect.
	* @type {BABYLON.Observable}
	*/
	var onApplyObservable : Observable<Effect>;
	private var _onApplyObserver : Dynamic/*UNKNOW_TYPE*/;
	var onApply : Effect->Void;
	/**
	* An event triggered before rendering the postprocess
	* @type {BABYLON.Observable}
	*/
	var onBeforeRenderObservable : Observable<Effect>;
	private var _onBeforeRenderObserver : Dynamic/*UNKNOW_TYPE*/;
	var onBeforeRender : Effect->Void;
	/**
	* An event triggered after rendering the postprocess
	* @type {BABYLON.Observable}
	*/
	var onAfterRenderObservable : Observable<Effect>;
	private var _onAfterRenderObserver : Dynamic/*UNKNOW_TYPE*/;
	var onAfterRender : Effect->Void;
	function new(name:String, fragmentUrl:String, parameters:Array<String>, samplers:Array<String>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Camera, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:String, ?textureType:Float) : Void;
	function updateEffect(?defines:String) : Void;
	function isReusable() : Bool;
	/** invalidate frameBuffer to hint the postprocess to create a depth buffer */
	function markTextureDirty() : Void;
	function activate(camera:Camera, ?sourceTexture:WebGLTexture) : Void;
	var isSupported : Bool;
	function apply() : Effect;
	function dispose(?camera:Camera) : Void;
}