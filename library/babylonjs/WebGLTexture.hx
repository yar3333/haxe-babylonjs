package root;

extern interface WebGLTexture
{
var isReady : Bool;
var isCube : Bool;
var url : String;
var noMipmap : Bool;
var samplingMode : Float;
var references : Float;
var generateMipMaps : Bool;
var type : Float;
var onLoadedCallbacks : Array<Dynamic>;
var _size : Float;
var _baseWidth : Float;
var _baseHeight : Float;
var _width : Float;
var _height : Float;
var _workingCanvas : js.html.CanvasElement;
var _workingContext : CanvasRenderingContext2D;
var _framebuffer : WebGLFramebuffer;
var _depthBuffer : WebGLRenderbuffer;
var _cachedCoordinatesMode : Float;
var _cachedWrapU : Float;
var _cachedWrapV : Float;
var _isDisabled : Bool;
}