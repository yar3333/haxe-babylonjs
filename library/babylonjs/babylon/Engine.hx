package babylon;

extern class Engine
{
	private static var _ALPHA_DISABLE : Dynamic/*UNKNOW_TYPE*/;
	private static var _ALPHA_ADD : Dynamic/*UNKNOW_TYPE*/;
	private static var _ALPHA_COMBINE : Dynamic/*UNKNOW_TYPE*/;
	private static var _ALPHA_SUBTRACT : Dynamic/*UNKNOW_TYPE*/;
	private static var _ALPHA_MULTIPLY : Dynamic/*UNKNOW_TYPE*/;
	private static var _ALPHA_MAXIMIZED : Dynamic/*UNKNOW_TYPE*/;
	private static var _ALPHA_ONEONE : Dynamic/*UNKNOW_TYPE*/;
	private static var _DELAYLOADSTATE_NONE : Dynamic/*UNKNOW_TYPE*/;
	private static var _DELAYLOADSTATE_LOADED : Dynamic/*UNKNOW_TYPE*/;
	private static var _DELAYLOADSTATE_LOADING : Dynamic/*UNKNOW_TYPE*/;
	private static var _DELAYLOADSTATE_NOTLOADED : Dynamic/*UNKNOW_TYPE*/;
	private static var _TEXTUREFORMAT_ALPHA : Dynamic/*UNKNOW_TYPE*/;
	private static var _TEXTUREFORMAT_LUMINANCE : Dynamic/*UNKNOW_TYPE*/;
	private static var _TEXTUREFORMAT_LUMINANCE_ALPHA : Dynamic/*UNKNOW_TYPE*/;
	private static var _TEXTUREFORMAT_RGB : Dynamic/*UNKNOW_TYPE*/;
	private static var _TEXTUREFORMAT_RGBA : Dynamic/*UNKNOW_TYPE*/;
	private static var _TEXTURETYPE_UNSIGNED_INT : Dynamic/*UNKNOW_TYPE*/;
	private static var _TEXTURETYPE_FLOAT : Dynamic/*UNKNOW_TYPE*/;
	private static var _TEXTURETYPE_HALF_FLOAT : Dynamic/*UNKNOW_TYPE*/;
	private static var _NEVER : Dynamic/*UNKNOW_TYPE*/;
	private static var _ALWAYS : Dynamic/*UNKNOW_TYPE*/;
	private static var _LESS : Dynamic/*UNKNOW_TYPE*/;
	private static var _EQUAL : Dynamic/*UNKNOW_TYPE*/;
	private static var _LEQUAL : Dynamic/*UNKNOW_TYPE*/;
	private static var _GREATER : Dynamic/*UNKNOW_TYPE*/;
	private static var _GEQUAL : Dynamic/*UNKNOW_TYPE*/;
	private static var _NOTEQUAL : Dynamic/*UNKNOW_TYPE*/;
	static var NEVER : Float;
	static var ALWAYS : Float;
	static var LESS : Float;
	static var EQUAL : Float;
	static var LEQUAL : Float;
	static var GREATER : Float;
	static var GEQUAL : Float;
	static var NOTEQUAL : Float;
	private static var _KEEP : Dynamic/*UNKNOW_TYPE*/;
	private static var _REPLACE : Dynamic/*UNKNOW_TYPE*/;
	private static var _INCR : Dynamic/*UNKNOW_TYPE*/;
	private static var _DECR : Dynamic/*UNKNOW_TYPE*/;
	private static var _INVERT : Dynamic/*UNKNOW_TYPE*/;
	private static var _INCR_WRAP : Dynamic/*UNKNOW_TYPE*/;
	private static var _DECR_WRAP : Dynamic/*UNKNOW_TYPE*/;
	static var KEEP : Float;
	static var REPLACE : Float;
	static var INCR : Float;
	static var DECR : Float;
	static var INVERT : Float;
	static var INCR_WRAP : Float;
	static var DECR_WRAP : Float;
	static var ALPHA_DISABLE : Float;
	static var ALPHA_ONEONE : Float;
	static var ALPHA_ADD : Float;
	static var ALPHA_COMBINE : Float;
	static var ALPHA_SUBTRACT : Float;
	static var ALPHA_MULTIPLY : Float;
	static var ALPHA_MAXIMIZED : Float;
	static var DELAYLOADSTATE_NONE : Float;
	static var DELAYLOADSTATE_LOADED : Float;
	static var DELAYLOADSTATE_LOADING : Float;
	static var DELAYLOADSTATE_NOTLOADED : Float;
	static var TEXTUREFORMAT_ALPHA : Float;
	static var TEXTUREFORMAT_LUMINANCE : Float;
	static var TEXTUREFORMAT_LUMINANCE_ALPHA : Float;
	static var TEXTUREFORMAT_RGB : Float;
	static var TEXTUREFORMAT_RGBA : Float;
	static var TEXTURETYPE_UNSIGNED_INT : Float;
	static var TEXTURETYPE_FLOAT : Float;
	static var TEXTURETYPE_HALF_FLOAT : Float;
	static var Version : String;
	static var CollisionsEpsilon : Float;
	static var CodeRepository : String;
	static var ShadersRepository : String;
	var isFullscreen : Bool;
	var isPointerLock : Bool;
	var cullBackFaces : Bool;
	var renderEvenInBackground : Bool;
	var enableOfflineSupport : Bool;
	var scenes : Array<Scene>;
	var vrDisplaysPromise : Dynamic;
	private var _vrDisplays : Dynamic/*UNKNOW_TYPE*/;
	private var _vrDisplayEnabled : Dynamic/*UNKNOW_TYPE*/;
	private var _oldSize : Dynamic/*UNKNOW_TYPE*/;
	private var _oldHardwareScaleFactor : Dynamic/*UNKNOW_TYPE*/;
	private var _vrAnimationFrameHandler : Dynamic/*UNKNOW_TYPE*/;
	var _gl : js.html.webgl.RenderingContext;
	private var _renderingCanvas : Dynamic/*UNKNOW_TYPE*/;
	private var _windowIsBackground : Dynamic/*UNKNOW_TYPE*/;
	private var _webGLVersion : Dynamic/*UNKNOW_TYPE*/;
	private var _badOS : Dynamic/*UNKNOW_TYPE*/;
	static var audioEngine : AudioEngine;
	private var _onBlur : Dynamic/*UNKNOW_TYPE*/;
	private var _onFocus : Dynamic/*UNKNOW_TYPE*/;
	private var _onFullscreenChange : Dynamic/*UNKNOW_TYPE*/;
	private var _onPointerLockChange : Dynamic/*UNKNOW_TYPE*/;
	private var _hardwareScalingLevel : Dynamic/*UNKNOW_TYPE*/;
	private var _caps : Dynamic/*UNKNOW_TYPE*/;
	private var _pointerLockRequested : Dynamic/*UNKNOW_TYPE*/;
	private var _alphaTest : Dynamic/*UNKNOW_TYPE*/;
	private var _isStencilEnable : Dynamic/*UNKNOW_TYPE*/;
	private var _loadingScreen : Dynamic/*UNKNOW_TYPE*/;
	var _drawCalls : PerfCounter;
	private var _glVersion : Dynamic/*UNKNOW_TYPE*/;
	private var _glRenderer : Dynamic/*UNKNOW_TYPE*/;
	private var _glVendor : Dynamic/*UNKNOW_TYPE*/;
	private var _videoTextureSupported : Dynamic/*UNKNOW_TYPE*/;
	private var _renderingQueueLaunched : Dynamic/*UNKNOW_TYPE*/;
	private var _activeRenderLoops : Dynamic/*UNKNOW_TYPE*/;
	private var fpsRange : Dynamic/*UNKNOW_TYPE*/;
	private var previousFramesDuration : Dynamic/*UNKNOW_TYPE*/;
	private var fps : Dynamic/*UNKNOW_TYPE*/;
	private var deltaTime : Dynamic/*UNKNOW_TYPE*/;
	private var _depthCullingState : Dynamic/*UNKNOW_TYPE*/;
	private var _stencilState : Dynamic/*UNKNOW_TYPE*/;
	private var _alphaState : Dynamic/*UNKNOW_TYPE*/;
	private var _alphaMode : Dynamic/*UNKNOW_TYPE*/;
	private var _loadedTexturesCache : Dynamic/*UNKNOW_TYPE*/;
	private var _maxTextureChannels : Dynamic/*UNKNOW_TYPE*/;
	private var _activeTexture : Dynamic/*UNKNOW_TYPE*/;
	private var _activeTexturesCache : Dynamic/*UNKNOW_TYPE*/;
	private var _currentEffect : Dynamic/*UNKNOW_TYPE*/;
	private var _currentProgram : Dynamic/*UNKNOW_TYPE*/;
	private var _compiledEffects : Dynamic/*UNKNOW_TYPE*/;
	private var _vertexAttribArraysEnabled : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedViewport : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedVertexBuffers : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedIndexBuffer : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedEffectForVertexBuffers : Dynamic/*UNKNOW_TYPE*/;
	private var _currentRenderTarget : Dynamic/*UNKNOW_TYPE*/;
	private var _uintIndicesCurrentlySet : Dynamic/*UNKNOW_TYPE*/;
	private var _currentBoundBuffer : Dynamic/*UNKNOW_TYPE*/;
	private var _currentFramebuffer : Dynamic/*UNKNOW_TYPE*/;
	private var _currentBufferPointers : Dynamic/*UNKNOW_TYPE*/;
	private var _currentInstanceLocations : Dynamic/*UNKNOW_TYPE*/;
	private var _currentInstanceBuffers : Dynamic/*UNKNOW_TYPE*/;
	private var _textureUnits : Dynamic/*UNKNOW_TYPE*/;
	private var _workingCanvas : Dynamic/*UNKNOW_TYPE*/;
	private var _workingContext : Dynamic/*UNKNOW_TYPE*/;
	private var _externalData : Dynamic/*UNKNOW_TYPE*/;
	private var _bindedRenderFunction : Dynamic/*UNKNOW_TYPE*/;
	private var _texturesSupported : Dynamic/*UNKNOW_TYPE*/;
	private var _textureFormatInUse : Dynamic/*UNKNOW_TYPE*/;
	var texturesSupported : Array<String>;
	var textureFormatInUse : String;
	/**
	 * @constructor
	 * @param {HTMLCanvasElement} canvas - the canvas to be used for rendering
	 * @param {boolean} [antialias] - enable antialias
	 * @param options - further options to be sent to the getContext function
	 */
	function new(canvas:js.html.CanvasElement, ?antialias:Bool, ?options:EngineOptions, ?adaptToDeviceRatio:Bool) : Void;
	var webGLVersion : String;
	/**
	 * Returns true if the stencil buffer has been enabled through the creation option of the context.
	 */
	var isStencilEnable : Bool;
	private function _prepareWorkingCanvas();
	function resetTextureCache() : Void;
	function getGlInfo() :
	{
		vendor : String,
		renderer : String,
		version : String
	};
	function getAspectRatio(camera:Camera, ?useScreen:Bool) : Float;
	function getRenderWidth(?useScreen:Bool) : Float;
	function getRenderHeight(?useScreen:Bool) : Float;
	function getRenderingCanvas() : js.html.CanvasElement;
	function getRenderingCanvasClientRect() : ClientRect;
	function setHardwareScalingLevel(level:Float) : Void;
	function getHardwareScalingLevel() : Float;
	function getLoadedTexturesCache() : Array<WebGLTexture>;
	function getCaps() : EngineCapabilities;
	var drawCalls : Float;
	var drawCallsPerfCounter : PerfCounter;
	function getDepthFunction() : Float;
	function setDepthFunction(depthFunc:Float) : Void;
	function setDepthFunctionToGreater() : Void;
	function setDepthFunctionToGreaterOrEqual() : Void;
	function setDepthFunctionToLess() : Void;
	function setDepthFunctionToLessOrEqual() : Void;
	function getStencilBuffer() : Bool;
	function setStencilBuffer(enable:Bool) : Void;
	function getStencilMask() : Float;
	function setStencilMask(mask:Float) : Void;
	function getStencilFunction() : Float;
	function getStencilFunctionReference() : Float;
	function getStencilFunctionMask() : Float;
	function setStencilFunction(stencilFunc:Float) : Void;
	function setStencilFunctionReference(reference:Float) : Void;
	function setStencilFunctionMask(mask:Float) : Void;
	function getStencilOperationFail() : Float;
	function getStencilOperationDepthFail() : Float;
	function getStencilOperationPass() : Float;
	function setStencilOperationFail(operation:Float) : Void;
	function setStencilOperationDepthFail(operation:Float) : Void;
	function setStencilOperationPass(operation:Float) : Void;
	/**
	 * stop executing a render loop function and remove it from the execution array
	 * @param {Function} [renderFunction] the function to be removed. If not provided all functions will be removed.
	 */
	function stopRenderLoop(?renderFunction:Void->Void) : Void;
	function _renderLoop() : Void;
	/**
	 * Register and execute a render loop. The engine can have more than one render function.
	 * @param {Function} renderFunction - the function to continuously execute starting the next render loop.
	 * @example
	 * engine.runRenderLoop(function () {
	 *      scene.render()
	 * })
	 */
	function runRenderLoop(renderFunction:Void->Void) : Void;
	/**
	 * Toggle full screen mode.
	 * @param {boolean} requestPointerLock - should a pointer lock be requested from the user
	 * @param {any} options - an options object to be sent to the requestFullscreen function
	 */
	function switchFullscreen(requestPointerLock:Bool) : Void;
	function clear(color:Dynamic, backBuffer:Bool, depth:Bool, ?stencil:Bool) : Void;
	function scissorClear(x:Float, y:Float, width:Float, height:Float, clearColor:Color4) : Void;
	/**
	 * Set the WebGL's viewport
	 * @param {BABYLON.Viewport} viewport - the viewport element to be used.
	 * @param {number} [requiredWidth] - the width required for rendering. If not provided the rendering canvas' width is used.
	 * @param {number} [requiredHeight] - the height required for rendering. If not provided the rendering canvas' height is used.
	 */
	function setViewport(viewport:Viewport, ?requiredWidth:Float, ?requiredHeight:Float) : Void;
	/**
	 * Directly set the WebGL Viewport
	 * The x, y, width & height are directly passed to the WebGL call
	 * @return the current viewport Object (if any) that is being replaced by this call. You can restore this viewport later on to go back to the original state.
	 */
	function setDirectViewport(x:Float, y:Float, width:Float, height:Float) : Viewport;
	function beginFrame() : Void;
	function endFrame() : Void;
	/**
	 * resize the view according to the canvas' size.
	 * @example
	 *   window.addEventListener("resize", function () {
	 *      engine.resize();
	 *   });
	 */
	function resize() : Void;
	/**
	 * force a specific size of the canvas
	 * @param {number} width - the new canvas' width
	 * @param {number} height - the new canvas' height
	 */
	function setSize(width:Float, height:Float) : Void;
	function initWebVR() : Void;
	function enableVR(vrDevice:Dynamic) : Void;
	function disableVR() : Void;
	private var _onVRFullScreenTriggered : Dynamic/*UNKNOW_TYPE*/;
	private function _getVRDisplays();
	function bindFramebuffer(texture:WebGLTexture, ?faceIndex:Float, ?requiredWidth:Float, ?requiredHeight:Float) : Void;
	private function bindUnboundFramebuffer(framebuffer);
	function unBindFramebuffer(texture:WebGLTexture, ?disableGenerateMipMaps:Bool) : Void;
	function generateMipMapsForCubemap(texture:WebGLTexture) : Void;
	function flushFramebuffer() : Void;
	function restoreDefaultFramebuffer() : Void;
	private function _resetVertexBufferBinding();
	function createVertexBuffer(vertices:haxe.extern.EitherType<Array<Float>, Float32Array>) : WebGLBuffer;
	function createDynamicVertexBuffer(vertices:haxe.extern.EitherType<Array<Float>, Float32Array>) : WebGLBuffer;
	function updateDynamicVertexBuffer(vertexBuffer:WebGLBuffer, vertices:haxe.extern.EitherType<Array<Float>, Float32Array>, ?offset:Float, ?count:Float) : Void;
	private function _resetIndexBufferBinding();
	function createIndexBuffer(indices:haxe.extern.EitherType<Array<Float>, Int32Array>) : WebGLBuffer;
	function bindArrayBuffer(buffer:WebGLBuffer) : Void;
	private function bindIndexBuffer(buffer);
	private function bindBuffer(buffer, target);
	function updateArrayBuffer(data:Float32Array) : Void;
	private function vertexAttribPointer(buffer, indx, size, type, normalized, stride, offset);
	function bindBuffersDirectly(vertexBuffer:WebGLBuffer, indexBuffer:WebGLBuffer, vertexDeclaration:Array<Float>, vertexStrideSize:Float, effect:Effect) : Void;
	function bindBuffers(vertexBuffers:Dynamic<VertexBuffer>, indexBuffer:WebGLBuffer, effect:Effect) : Void;
	function unbindInstanceAttributes() : Void;
	function _releaseBuffer(buffer:WebGLBuffer) : Bool;
	function createInstancesBuffer(capacity:Float) : WebGLBuffer;
	function deleteInstancesBuffer(buffer:WebGLBuffer) : Void;
	function updateAndBindInstancesBuffer(instancesBuffer:WebGLBuffer, data:Float32Array, offsetLocations:haxe.extern.EitherType<Array<Float>, Array<InstancingAttributeInfo>>) : Void;
	function applyStates() : Void;
	function draw(useTriangles:Bool, indexStart:Float, indexCount:Float, ?instancesCount:Float) : Void;
	function drawPointClouds(verticesStart:Float, verticesCount:Float, ?instancesCount:Float) : Void;
	function drawUnIndexed(useTriangles:Bool, verticesStart:Float, verticesCount:Float, ?instancesCount:Float) : Void;
	function _releaseEffect(effect:Effect) : Void;
	function createEffect(baseName:Dynamic, attributesNames:Array<String>, uniformsNames:Array<String>, samplers:Array<String>, defines:String, ?fallbacks:EffectFallbacks, ?onCompiled:Effect->Void, ?onError:Effect->String->Void, ?indexParameters:Dynamic) : Effect;
	function createEffectForParticles(fragmentName:String, ?uniformsNames:Array<String>, ?samplers:Array<String>, ?defines:String, ?fallbacks:EffectFallbacks, ?onCompiled:Effect->Void, ?onError:Effect->String->Void) : Effect;
	function createShaderProgram(vertexCode:String, fragmentCode:String, defines:String, ?context:js.html.webgl.RenderingContext) : WebGLProgram;
	function getUniforms(shaderProgram:WebGLProgram, uniformsNames:Array<String>) : Array<WebGLUniformLocation>;
	function getAttributes(shaderProgram:WebGLProgram, attributesNames:Array<String>) : Array<Float>;
	function enableEffect(effect:Effect) : Void;
	function setIntArray(uniform:WebGLUniformLocation, array:Int32Array) : Void;
	function setIntArray2(uniform:WebGLUniformLocation, array:Int32Array) : Void;
	function setIntArray3(uniform:WebGLUniformLocation, array:Int32Array) : Void;
	function setIntArray4(uniform:WebGLUniformLocation, array:Int32Array) : Void;
	function setFloatArray(uniform:WebGLUniformLocation, array:Float32Array) : Void;
	function setFloatArray2(uniform:WebGLUniformLocation, array:Float32Array) : Void;
	function setFloatArray3(uniform:WebGLUniformLocation, array:Float32Array) : Void;
	function setFloatArray4(uniform:WebGLUniformLocation, array:Float32Array) : Void;
	function setArray(uniform:WebGLUniformLocation, array:Array<Float>) : Void;
	function setArray2(uniform:WebGLUniformLocation, array:Array<Float>) : Void;
	function setArray3(uniform:WebGLUniformLocation, array:Array<Float>) : Void;
	function setArray4(uniform:WebGLUniformLocation, array:Array<Float>) : Void;
	function setMatrices(uniform:WebGLUniformLocation, matrices:Float32Array) : Void;
	function setMatrix(uniform:WebGLUniformLocation, matrix:Matrix) : Void;
	function setMatrix3x3(uniform:WebGLUniformLocation, matrix:Float32Array) : Void;
	function setMatrix2x2(uniform:WebGLUniformLocation, matrix:Float32Array) : Void;
	function setFloat(uniform:WebGLUniformLocation, value:Float) : Void;
	function setFloat2(uniform:WebGLUniformLocation, x:Float, y:Float) : Void;
	function setFloat3(uniform:WebGLUniformLocation, x:Float, y:Float, z:Float) : Void;
	function setBool(uniform:WebGLUniformLocation, bool:Float) : Void;
	function setFloat4(uniform:WebGLUniformLocation, x:Float, y:Float, z:Float, w:Float) : Void;
	function setColor3(uniform:WebGLUniformLocation, color3:Color3) : Void;
	function setColor4(uniform:WebGLUniformLocation, color3:Color3, alpha:Float) : Void;
	function setState(culling:Bool, ?zOffset:Float, ?force:Bool, ?reverseSide:Bool) : Void;
	function setDepthBuffer(enable:Bool) : Void;
	function getDepthWrite() : Bool;
	function setDepthWrite(enable:Bool) : Void;
	function setColorWrite(enable:Bool) : Void;
	function setAlphaMode(mode:Float, ?noDepthWriteChange:Bool) : Void;
	function getAlphaMode() : Float;
	function setAlphaTesting(enable:Bool) : Void;
	function getAlphaTesting() : Bool;
	function wipeCaches() : Void;
	function setSamplingMode(texture:WebGLTexture, samplingMode:Float) : Void;
	/**
	 * Set the compressed texture format to use, based on the formats you have,
	 * the formats supported by the hardware / browser, and those currently implemented
	 * in BJS.
	 *
	 * Note: The result of this call is not taken into account texture is base64 or when
	 * using a database / manifest.
	 *
	 * @param {Array<String>} formatsAvailable - Extension names including dot.  Case
	 * and order do not matter.
	 * @returns The extension selected.
	 */
	function setTextureFormatToUse(formatsAvailable:Array<String>) : String;
	function createTexture(url:String, noMipmap:Bool, invertY:Bool, scene:Scene, ?samplingMode:Float, ?onLoad:Void->Void, ?onError:Void->Void, ?buffer:Dynamic) : WebGLTexture;
	private function _getInternalFormat(format);
	function updateRawTexture(texture:WebGLTexture, data:ArrayBufferView, format:Float, invertY:Bool, ?compression:String) : Void;
	function createRawTexture(data:ArrayBufferView, width:Float, height:Float, format:Float, generateMipMaps:Bool, invertY:Bool, samplingMode:Float, ?compression:String) : WebGLTexture;
	function createDynamicTexture(width:Float, height:Float, generateMipMaps:Bool, samplingMode:Float) : WebGLTexture;
	function updateTextureSamplingMode(samplingMode:Float, texture:WebGLTexture) : Void;
	function updateDynamicTexture(texture:WebGLTexture, canvas:js.html.CanvasElement, invertY:Bool, ?premulAlpha:Bool) : Void;
	function updateVideoTexture(texture:WebGLTexture, video:VideoElement, invertY:Bool) : Void;
	function createRenderTargetTexture(size:Dynamic, options:Dynamic) : WebGLTexture;
	function createRenderTargetCubeTexture(size:Float, ?options:Dynamic) : WebGLTexture;
	function createCubeTexture(rootUrl:String, scene:Scene, files:Array<String>, ?noMipmap:Bool, ?onLoad:Void->Void, ?onError:Void->Void) : WebGLTexture;
	function updateTextureSize(texture:WebGLTexture, width:Float, height:Float) : Void;
	function createRawCubeTexture(url:String, scene:Scene, size:Float, format:Float, type:Float, noMipmap:Bool, callback: ArrayBuffer->Array<ArrayBufferView>, mipmmapGenerator: Array<ArrayBufferView>->Array<Array<ArrayBufferView>>) : WebGLTexture;
	function _releaseTexture(texture:WebGLTexture) : Void;
	private function setProgram(program);
	function bindSamplers(effect:Effect) : Void;
	private function activateTexture(texture);
	function _bindTextureDirectly(target:Float, texture:WebGLTexture) : Void;
	function _bindTexture(channel:Float, texture:WebGLTexture) : Void;
	function setTextureFromPostProcess(channel:Float, postProcess:PostProcess) : Void;
	function unbindAllTextures() : Void;
	function setTexture(channel:Float, uniform:WebGLUniformLocation, texture:BaseTexture) : Void;
	private function _setTexture(channel, texture);
	function setTextureArray(channel:Float, uniform:WebGLUniformLocation, textures:Array<BaseTexture>) : Void;
	function _setAnisotropicLevel(key:Float, texture:BaseTexture) : Void;
	function readPixels(x:Float, y:Float, width:Float, height:Float) : Uint8Array;
	/**
	 * Add an externaly attached data from its key.
	 * This method call will fail and return false, if such key already exists.
	 * If you don't care and just want to get the data no matter what, use the more convenient getOrAddExternalDataWithFactory() method.
	 * @param key the unique key that identifies the data
	 * @param data the data object to associate to the key for this Engine instance
	 * @return true if no such key were already present and the data was added successfully, false otherwise
	 */
	function addExternalData<T>(key:String, data:T) : Bool;
	/**
	 * Get an externaly attached data from its key
	 * @param key the unique key that identifies the data
	 * @return the associated data, if present (can be null), or undefined if not present
	 */
	function getExternalData<T>(key:String) : T;
	/**
	 * Get an externaly attached data from its key, create it using a factory if it's not already present
	 * @param key the unique key that identifies the data
	 * @param factory the factory that will be called to create the instance if and only if it doesn't exists
	 * @return the associated data, can be null if the factory returned null.
	 */
	function getOrAddExternalDataWithFactory<T>(key:String, factory:String->T) : T;
	/**
	 * Remove an externaly attached data from the Engine instance
	 * @param key the unique key that identifies the data
	 * @return true if the data was successfully removed, false if it doesn't exist
	 */
	function removeExternalData(key:Dynamic) : Bool;
	function releaseInternalTexture(texture:WebGLTexture) : Void;
	function unbindAllAttributes() : Void;
	function dispose() : Void;
	function displayLoadingUI() : Void;
	function hideLoadingUI() : Void;
	var loadingScreen : ILoadingScreen;
	var loadingUIText : String;
	var loadingUIBackgroundColor : String;
	function attachContextLostEvent(callback:WebGLContextEvent->Void) : Void;
	function attachContextRestoredEvent(callback:WebGLContextEvent->Void) : Void;
	function getVertexShaderSource(program:WebGLProgram) : String;
	function getFragmentShaderSource(program:WebGLProgram) : String;
	function getFps() : Float;
	function getDeltaTime() : Float;
	private function _measureFps();
	private function _canRenderToFloatTexture();
	private function _canRenderToHalfFloatTexture();
	private function _canRenderToTextureOfType(format, extension);
	static function isSupported() : Bool;
}