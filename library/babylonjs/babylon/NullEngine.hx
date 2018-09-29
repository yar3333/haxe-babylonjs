package babylonjs.babylon;

/**
 * The null engine class provides support for headless version of babylon.js.
 * This can be used in server side scenario or for testing purposes
 */
@:native("BABYLON.NullEngine")
extern class NullEngine extends Engine
{
	private var _options : Dynamic;

	override function isDeterministicLockStep() : Bool;
	override function getLockstepMaxSteps() : Float;
	override function getHardwareScalingLevel() : Float;
	/**
	 * The null engine class provides support for headless version of babylon.js.
	 * This can be used in server side scenario or for testing purposes
	 */
	@:overload(function(?options:NullEngineOptions): Void{})
	function new(canvasOrContext:Null<haxe.extern.EitherType<js.html.CanvasElement, js.html.webgl.RenderingContext>>, ?antialias:Bool, ?options:EngineOptions, ?adaptToDeviceRatio:Bool) : Void;
	@:overload(function(vertices:FloatArray): WebGLBuffer{})
	override function createVertexBuffer(data:DataArray) : WebGLBuffer;
	@:overload(function(indices:IndicesArray): WebGLBuffer{})
	override function createIndexBuffer(indices:IndicesArray, ?updatable:Bool) : WebGLBuffer;
	@:overload(function(color:Color4, backBuffer:Bool, depth:Bool,?stencil:Bool): Void{})
	override function clear(color:Null<Color4>, backBuffer:Bool, depth:Bool, ?stencil:Bool) : Void;
	override function getRenderWidth(?useScreen:Bool) : Float;
	override function getRenderHeight(?useScreen:Bool) : Float;
	override function setViewport(viewport:Viewport, ?requiredWidth:Float, ?requiredHeight:Float) : Void;
	@:overload(function(vertexCode:String, fragmentCode:String, defines:String,?context:js.html.webgl.RenderingContext): WebGLProgram{})
	override function createShaderProgram(vertexCode:String, fragmentCode:String, defines:Null<String>, ?context:js.html.webgl.RenderingContext, ?transformFeedbackVaryings:Null<Array<String>>) : WebGLProgram;
	override function getUniforms(shaderProgram:WebGLProgram, uniformsNames:Array<String>) : Array<WebGLUniformLocation>;
	override function getAttributes(shaderProgram:WebGLProgram, attributesNames:Array<String>) : Array<Float>;
	override function bindSamplers(effect:Effect) : Void;
	@:overload(function(effect:Effect): Void{})
	override function enableEffect(effect:Null<Effect>) : Void;
	override function setState(culling:Bool, ?zOffset:Float, ?force:Bool, ?reverseSide:Bool) : Void;
	@:overload(function(uniform:WebGLUniformLocation, array:js.html.Int32Array): Void{})
	override function setIntArray(uniform:Null<WebGLUniformLocation>, array:js.html.Int32Array) : Void;
	@:overload(function(uniform:WebGLUniformLocation, array:js.html.Int32Array): Void{})
	override function setIntArray2(uniform:Null<WebGLUniformLocation>, array:js.html.Int32Array) : Void;
	@:overload(function(uniform:WebGLUniformLocation, array:js.html.Int32Array): Void{})
	override function setIntArray3(uniform:Null<WebGLUniformLocation>, array:js.html.Int32Array) : Void;
	@:overload(function(uniform:WebGLUniformLocation, array:js.html.Int32Array): Void{})
	override function setIntArray4(uniform:Null<WebGLUniformLocation>, array:js.html.Int32Array) : Void;
	@:overload(function(uniform:WebGLUniformLocation, array:js.html.Float32Array): Void{})
	override function setFloatArray(uniform:Null<WebGLUniformLocation>, array:js.html.Float32Array) : Void;
	@:overload(function(uniform:WebGLUniformLocation, array:js.html.Float32Array): Void{})
	override function setFloatArray2(uniform:Null<WebGLUniformLocation>, array:js.html.Float32Array) : Void;
	@:overload(function(uniform:WebGLUniformLocation, array:js.html.Float32Array): Void{})
	override function setFloatArray3(uniform:Null<WebGLUniformLocation>, array:js.html.Float32Array) : Void;
	@:overload(function(uniform:WebGLUniformLocation, array:js.html.Float32Array): Void{})
	override function setFloatArray4(uniform:Null<WebGLUniformLocation>, array:js.html.Float32Array) : Void;
	@:overload(function(uniform:WebGLUniformLocation, array:Array<Float>): Void{})
	override function setArray(uniform:Null<WebGLUniformLocation>, array:Array<Float>) : Void;
	@:overload(function(uniform:WebGLUniformLocation, array:Array<Float>): Void{})
	override function setArray2(uniform:Null<WebGLUniformLocation>, array:Array<Float>) : Void;
	@:overload(function(uniform:WebGLUniformLocation, array:Array<Float>): Void{})
	override function setArray3(uniform:Null<WebGLUniformLocation>, array:Array<Float>) : Void;
	@:overload(function(uniform:WebGLUniformLocation, array:Array<Float>): Void{})
	override function setArray4(uniform:Null<WebGLUniformLocation>, array:Array<Float>) : Void;
	@:overload(function(uniform:WebGLUniformLocation, matrices:js.html.Float32Array): Void{})
	override function setMatrices(uniform:Null<WebGLUniformLocation>, matrices:js.html.Float32Array) : Void;
	@:overload(function(uniform:WebGLUniformLocation, matrix:Matrix): Void{})
	override function setMatrix(uniform:Null<WebGLUniformLocation>, matrix:Matrix) : Void;
	@:overload(function(uniform:WebGLUniformLocation, matrix:js.html.Float32Array): Void{})
	override function setMatrix3x3(uniform:Null<WebGLUniformLocation>, matrix:js.html.Float32Array) : Void;
	@:overload(function(uniform:WebGLUniformLocation, matrix:js.html.Float32Array): Void{})
	override function setMatrix2x2(uniform:Null<WebGLUniformLocation>, matrix:js.html.Float32Array) : Void;
	@:overload(function(uniform:WebGLUniformLocation, value:Float): Void{})
	override function setFloat(uniform:Null<WebGLUniformLocation>, value:Float) : Void;
	@:overload(function(uniform:WebGLUniformLocation, x:Float, y:Float): Void{})
	override function setFloat2(uniform:Null<WebGLUniformLocation>, x:Float, y:Float) : Void;
	@:overload(function(uniform:WebGLUniformLocation, x:Float, y:Float, z:Float): Void{})
	override function setFloat3(uniform:Null<WebGLUniformLocation>, x:Float, y:Float, z:Float) : Void;
	@:overload(function(uniform:WebGLUniformLocation, bool:Float): Void{})
	override function setBool(uniform:Null<WebGLUniformLocation>, bool:Float) : Void;
	@:overload(function(uniform:WebGLUniformLocation, x:Float, y:Float, z:Float, w:Float): Void{})
	override function setFloat4(uniform:Null<WebGLUniformLocation>, x:Float, y:Float, z:Float, w:Float) : Void;
	@:overload(function(uniform:WebGLUniformLocation, color3:Color3): Void{})
	override function setColor3(uniform:Null<WebGLUniformLocation>, color3:Color3) : Void;
	@:overload(function(uniform:WebGLUniformLocation, color3:Color3, alpha:Float): Void{})
	override function setColor4(uniform:Null<WebGLUniformLocation>, color3:Color3, alpha:Float) : Void;
	override function setAlphaMode(mode:Float, ?noDepthWriteChange:Bool) : Void;
	@:overload(function(vertexBuffers:Dynamic<VertexBuffer>, indexBuffer:WebGLBuffer, effect:Effect): Void{})
	override function bindBuffers(vertexBuffers:Dynamic<Null<VertexBuffer>>, indexBuffer:Null<WebGLBuffer>, effect:Effect) : Void;
	override function wipeCaches(?bruteForce:Bool) : Void;
	override function draw(useTriangles:Bool, indexStart:Float, indexCount:Float, ?instancesCount:Float) : Void;
	override function drawElementsType(fillMode:Float, indexStart:Float, indexCount:Float, ?instancesCount:Float) : Void;
	override function drawArraysType(fillMode:Float, verticesStart:Float, verticesCount:Float, ?instancesCount:Float) : Void;
	override function _createTexture() : js.html.webgl.Texture;
	override function _releaseTexture(texture:InternalTexture) : Void;
	@:overload(function(urlArg:String, noMipmap:Bool, invertY:Bool, scene:Scene,?samplingMode:Float,?onLoad:Null<Void->Void>,?onError:Null<String->Dynamic->Void>,?buffer:Null<haxe.extern.EitherType<js.html.ArrayBuffer, js.html.ImageElement>>,?fallBack:InternalTexture,?format:Float): InternalTexture{})
	override function createTexture(urlArg:Null<String>, noMipmap:Bool, invertY:Bool, scene:Null<Scene>, ?samplingMode:Float, ?onLoad:Null<Void->Void>, ?onError:Null<String->Dynamic->Void>, ?buffer:Null<haxe.extern.EitherType<js.html.ArrayBuffer, js.html.ImageElement>>, ?fallback:Null<InternalTexture>, ?format:Null<Float>) : InternalTexture;
	@:overload(function(size:Dynamic, options:haxe.extern.EitherType<Bool, RenderTargetCreationOptions>): InternalTexture{})
	override function createRenderTargetTexture(size:haxe.extern.EitherType<Float, { var width : Float; var height : Float; }>, options:haxe.extern.EitherType<Bool, RenderTargetCreationOptions>) : InternalTexture;
	override function updateTextureSamplingMode(samplingMode:Float, texture:InternalTexture) : Void;
	@:overload(function(texture:InternalTexture,?faceIndex:Float,?requiredWidth:Float,?requiredHeight:Float,?forceFullscreenViewport:Bool): Void{})
	override function bindFramebuffer(texture:InternalTexture, ?faceIndex:Float, ?requiredWidth:Float, ?requiredHeight:Float, ?forceFullscreenViewport:Bool, ?depthStencilTexture:InternalTexture) : Void;
	override function unBindFramebuffer(texture:InternalTexture, ?disableGenerateMipMaps:Bool, ?onBeforeUnbind:Void->Void) : Void;
	@:overload(function(vertices:FloatArray): WebGLBuffer{})
	override function createDynamicVertexBuffer(data:DataArray) : WebGLBuffer;
	override function updateDynamicIndexBuffer(indexBuffer:WebGLBuffer, indices:IndicesArray, ?offset:Float) : Void;
	/**
	 * Updates a dynamic vertex buffer.
	 */
	@:overload(function(vertexBuffer:WebGLBuffer, vertices:FloatArray,?byteOffset:Float,?byteLength:Float): Void{})
	override function updateDynamicVertexBuffer(vertexBuffer:WebGLBuffer, data:DataArray, ?byteOffset:Float, ?byteLength:Float) : Void;
	@:overload(function(target:Float, texture:InternalTexture): Void{})
	override function _bindTextureDirectly(target:Float, texture:Null<InternalTexture>, ?forTextureDataUpdate:Bool, ?force:Bool) : Void;
	@:overload(function(channel:Float, texture:InternalTexture): Void{})
	override function _bindTexture(channel:Float, texture:Null<InternalTexture>) : Void;
	override function _releaseBuffer(buffer:WebGLBuffer) : Bool;
	override function releaseEffects() : Void;
}