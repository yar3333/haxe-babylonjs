package babylonjs;

extern interface WebGLRenderingContext
{
	var MAX_SAMPLES : Float;
	var RGBA8 : Float;
	var READ_FRAMEBUFFER : Float;
	var DRAW_FRAMEBUFFER : Float;
	var UNIFORM_BUFFER : Float;
	var HALF_FLOAT_OES : Float;
	var RGBA16F : Float;
	var RGBA32F : Float;
	var R32F : Float;
	var RG32F : Float;
	var RGB32F : Float;
	var RED : Float;
	var RG : Float;
	var UNSIGNED_INT_24_8 : Float;
	var DEPTH24_STENCIL8 : Float;
	var COLOR_ATTACHMENT0(default, null) : Float;
	var COLOR_ATTACHMENT1(default, null) : Float;
	var COLOR_ATTACHMENT2(default, null) : Float;
	var COLOR_ATTACHMENT3(default, null) : Float;
	var ANY_SAMPLES_PASSED_CONSERVATIVE : Float;
	var ANY_SAMPLES_PASSED : Float;
	var QUERY_RESULT_AVAILABLE : Float;
	var QUERY_RESULT : Float;
	var RASTERIZER_DISCARD(default, null) : Float;
	var DEPTH_COMPONENT24(default, null) : Float;
	var TEXTURE_3D(default, null) : Float;
	var TEXTURE_2D_ARRAY(default, null) : Float;
	var TEXTURE_COMPARE_FUNC(default, null) : Float;
	var TEXTURE_COMPARE_MODE(default, null) : Float;
	var COMPARE_REF_TO_TEXTURE(default, null) : Float;
	var TEXTURE_WRAP_R(default, null) : Float;
	var TRANSFORM_FEEDBACK(default, null) : Float;
	var INTERLEAVED_ATTRIBS(default, null) : Float;
	var TRANSFORM_FEEDBACK_BUFFER(default, null) : Float;

	function drawArraysInstanced(mode:Float, first:Float, count:Float, primcount:Float) : Void;
	function drawElementsInstanced(mode:Float, count:Float, type:Float, offset:Float, primcount:Float) : Void;
	function vertexAttribDivisor(index:Float, divisor:Float) : Void;
	function createVertexArray() : Dynamic;
	function bindVertexArray(?vao:WebGLVertexArrayObject) : Void;
	function deleteVertexArray(vao:WebGLVertexArrayObject) : Void;
	function blitFramebuffer(srcX0:Float, srcY0:Float, srcX1:Float, srcY1:Float, dstX0:Float, dstY0:Float, dstX1:Float, dstY1:Float, mask:Float, filter:Float) : Void;
	function renderbufferStorageMultisample(target:Float, samples:Float, internalformat:Float, width:Float, height:Float) : Void;
	function bindBufferBase(target:Float, index:Float, buffer:WebGLBuffer) : Void;
	function getUniformBlockIndex(program:WebGLProgram, uniformBlockName:String) : Float;
	function uniformBlockBinding(program:WebGLProgram, uniformBlockIndex:Float, uniformBlockBinding:Float) : Void;
	function createQuery() : WebGLQuery;
	function deleteQuery(query:WebGLQuery) : Void;
	function beginQuery(target:Float, query:WebGLQuery) : Void;
	function endQuery(target:Float) : Void;
	function getQueryParameter(query:WebGLQuery, pname:Float) : Dynamic;
	function getQuery(target:Float, pname:Float) : Dynamic;
	function drawBuffers(buffers:Array<Float>) : Void;
	function readBuffer(src:Float) : Void;
	@:overload(function(target:Float, level:Float, internalformat:Float, width:Float, height:Float, depth:Float, border:Float, format:Float, type:Float, pixels:js.html.ArrayBufferView, offset:Float):Void{})
	@:overload(function(target:Float, level:Float, internalformat:Float, width:Float, height:Float, depth:Float, border:Float, format:Float, type:Float, pixels:haxe.extern.EitherType<ImageBitmap, haxe.extern.EitherType<js.html.ImageData, haxe.extern.EitherType<js.html.VideoElement, haxe.extern.EitherType<js.html.ImageElement, js.html.CanvasElement>>>>):Void{})
	function texImage3D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, depth:Float, border:Float, format:Float, type:Float, pixels:js.html.ArrayBufferView) : Void;
	function compressedTexImage3D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, depth:Float, border:Float, data:js.html.ArrayBufferView, ?offset:Float, ?length:Float) : Void;
	function createTransformFeedback() : WebGLTransformFeedback;
	function deleteTransformFeedback(transformFeedbac:WebGLTransformFeedback) : Void;
	function bindTransformFeedback(target:Float, transformFeedback:WebGLTransformFeedback) : Void;
	function beginTransformFeedback(primitiveMode:Float) : Void;
	function endTransformFeedback() : Void;
	function transformFeedbackVaryings(program:WebGLProgram, varyings:Array<String>, bufferMode:Float) : Void;
}