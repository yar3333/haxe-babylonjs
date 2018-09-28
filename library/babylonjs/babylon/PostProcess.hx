package babylonjs.babylon;

/**
 * PostProcess can be used to apply a shader to a texture after it has been rendered
 * See https://doc.babylonjs.com/how_to/how_to_use_postprocesses
 */
@:native("BABYLON.PostProcess")
extern class PostProcess
{
	/**
	 * Name of the PostProcess. 
	 */
	var name : String;
	/**
	 * Width of the texture to apply the post process on
	 */
	var width : Float;
	/**
	 * Height of the texture to apply the post process on
	 */
	var height : Float;
	/**
	 * Internal, reference to the location where this postprocess was output to. (Typically the texture on the next postprocess in the chain)
	 */
	var _outputTexture : Null<InternalTexture>;
	/**
	 * Sampling mode used by the shader
	 * See https://doc.babylonjs.com/classes/3.1/texture
	 */
	var renderTargetSamplingMode : Float;
	/**
	 * Clear color to use when screen clearing
	 */
	var clearColor : Color4;
	/**
	 * If the buffer needs to be cleared before applying the post process. (default: true)
	 * Should be set to false if shader will overwrite all previous pixels.
	 */
	var autoClear : Bool;
	/**
	 * Type of alpha mode to use when performing the post process (default: Engine.ALPHA_DISABLE)
	 */
	var alphaMode : Float;
	/**
	 * Sets the setAlphaBlendConstants of the babylon engine
	 */
	var alphaConstants : Color4;
	/**
	 * Animations to be used for the post processing
	 */
	var animations : Array<Animation>;
	/**
	 * Enable Pixel Perfect mode where texture is not scaled to be power of 2.
	 * Can only be used on a single postprocess or on the last one of a chain. (default: false)
	 */
	var enablePixelPerfectMode : Bool;
	/**
	 * Scale mode for the post process (default: Engine.SCALEMODE_FLOOR)
	 */
	var scaleMode : Float;
	/**
	 * Force textures to be a power of two (default: false)
	 */
	var alwaysForcePOT : Bool;
	/**
	 * Number of sample textures (default: 1)
	 */
	var samples : Float;
	/**
	 * Modify the scale of the post process to be the same as the viewport (default: false)
	 */
	var adaptScaleToCurrentViewport : Bool;
	private var _camera : Dynamic;
	private var _scene : Dynamic;
	private var _engine : Dynamic;
	private var _options : Dynamic;
	private var _reusable : Dynamic;
	private var _textureType : Dynamic;
	/**
	 * Smart array of input and output textures for the post process.
	 */
	var _textures : SmartArray<InternalTexture>;
	/**
	 * The index in _textures that corresponds to the output texture.
	 */
	var _currentRenderTextureInd : Float;
	private var _effect : Dynamic;
	private var _samplers : Dynamic;
	private var _fragmentUrl : Dynamic;
	private var _vertexUrl : Dynamic;
	private var _parameters : Dynamic;
	private var _scaleRatio : Dynamic;
	private var _indexParameters : Dynamic;
	private var _shareOutputWithPostProcess : Dynamic;
	private var _texelSize : Dynamic;
	private var _forcedOutputTexture : Dynamic;
	/**
	 * An event triggered when the postprocess is activated.
	 */
	var onActivateObservable : Observable<Camera>;
	private var _onActivateObserver : Dynamic;
	/**
	 * A function that is added to the onActivateObservable
	 */
	var onActivate : Null<Camera->Void>;
	/**
	 * An event triggered when the postprocess changes its size.
	 */
	var onSizeChangedObservable : Observable<PostProcess>;
	private var _onSizeChangedObserver : Dynamic;
	/**
	 * A function that is added to the onSizeChangedObservable
	 */
	var onSizeChanged : PostProcess->Void;
	/**
	 * An event triggered when the postprocess applies its effect.
	 */
	var onApplyObservable : Observable<Effect>;
	private var _onApplyObserver : Dynamic;
	/**
	 * A function that is added to the onApplyObservable
	 */
	var onApply : Effect->Void;
	/**
	 * An event triggered before rendering the postprocess
	 */
	var onBeforeRenderObservable : Observable<Effect>;
	private var _onBeforeRenderObserver : Dynamic;
	/**
	 * A function that is added to the onBeforeRenderObservable
	 */
	var onBeforeRender : Effect->Void;
	/**
	 * An event triggered after rendering the postprocess
	 */
	var onAfterRenderObservable : Observable<Effect>;
	private var _onAfterRenderObserver : Dynamic;
	/**
	 * A function that is added to the onAfterRenderObservable
	 */
	var onAfterRender : Effect->Void;
	/**
	 * The input texture for this post process and the output texture of the previous post process. When added to a pipeline the previous post process will
	 * render it's output into this texture and this texture will be used as textureSampler in the fragment shader of this post process.
	 */
	var inputTexture : InternalTexture;
	/**
	 * Gets the texel size of the postprocess.
	 * See https://en.wikipedia.org/wiki/Texel_(graphics)
	 */
	var texelSize(default, null) : Vector2;
	/**
	 * If the post process is supported.
	 */
	var isSupported(default, null) : Bool;
	/**
	 * The aspect ratio of the output texture.
	 */
	var aspectRatio(default, null) : Float;

	/**
	 * Gets the camera which post process is applied to.
	 * @returns The camera the post process is applied to.
	 */
	function getCamera() : Camera;
	/**
	 * PostProcess can be used to apply a shader to a texture after it has been rendered
	 * See https://doc.babylonjs.com/how_to/how_to_use_postprocesses
	 */
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
	/**
	 * Gets the engine which this post process belongs to.
	 * @returns The engine the post process was enabled with.
	 */
	function getEngine() : Engine;
	/**
	 * The effect that is created when initializing the post process.
	 * @returns The created effect corrisponding the the postprocess.
	 */
	function getEffect() : Effect;
	/**
	 * To avoid multiple redundant textures for multiple post process, the output the output texture for this post process can be shared with another.
	 * @returns This post process.
	 */
	function shareOutputWith(postProcess:PostProcess) : PostProcess;
	/**
	 * Reverses the effect of calling shareOutputWith and returns the post process back to its original state.
	 * This should be called if the post process that shares output with this post process is disabled/disposed.
	 */
	function useOwnOutput() : Void;
	/**
	 * Updates the effect with the current post process compile time values and recompiles the shader.
	 */
	function updateEffect(?defines:Null<String>, ?uniforms:Null<Array<String>>, ?samplers:Null<Array<String>>, ?indexParameters:Dynamic, ?onCompiled:Effect->Void, ?onError:Effect->String->Void) : Void;
	/**
	 * The post process is reusable if it can be used multiple times within one frame.
	 * @returns If the post process is reusable
	 */
	function isReusable() : Bool;
	/**
	 * invalidate frameBuffer to hint the postprocess to create a depth buffer 
	 */
	function markTextureDirty() : Void;
	/**
	 * Activates the post process by intializing the textures to be used when executed. Notifies onActivateObservable.
	 * When this post process is used in a pipeline, this is call will bind the input texture of this post process to the output of the previous.
	 * @returns The target texture that was bound to be written to.
	 */
	function activate(camera:Null<Camera>, ?sourceTexture:Null<InternalTexture>, ?forceDepthStencil:Bool) : InternalTexture;
	/**
	 * Get a value indicating if the post-process is ready to be used
	 * @returns true if the post-process is ready (shader is compiled)
	 */
	function isReady() : Bool;
	/**
	 * Binds all textures and uniforms to the shader, this will be run on every pass.
	 * @returns the effect corrisponding to this post process. Null if not compiled or not ready.
	 */
	function apply() : Null<Effect>;
	private function _disposeTextures() : Dynamic;
	/**
	 * Disposes the post process.
	 */
	function dispose(?camera:Camera) : Void;
}