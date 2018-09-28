package babylonjs;

@:native("window")
extern class BabylonDTs
{
	var mozIndexedDB : js.html.idb.Factory;
	var webkitIndexedDB : js.html.idb.Factory;
	var msIndexedDB : js.html.idb.Factory;
	var webkitURL : js.html.URL;
	var WebGLRenderingContext : js.html.webgl.RenderingContext;
	var MSGesture : MSGesture;
	var CANNON : Dynamic;
	var AudioContext : js.html.audio.AudioContext;
	var webkitAudioContext : js.html.audio.AudioContext;
	var PointerEvent : Dynamic;
	var Math : Math;
	var Uint8Array : Uint8ArrayConstructor;
	var Float32Array : Float32ArrayConstructor;
	var mozURL : js.html.URL;
	var msURL : js.html.URL;
	var VRFrameData : Dynamic;
	var DracoDecoderModule : Dynamic;
	var onvrdisplayconnected : (js.html.Window->js.html.Event->Dynamic);
	var onvrdisplaydisconnected : (js.html.Window->js.html.Event->Dynamic);
	var onvrdisplaypresentchange : (js.html.Window->js.html.Event->Dynamic);

	function mozRequestAnimationFrame(callback:FrameRequestCallback) : Float;
	function oRequestAnimationFrame(callback:FrameRequestCallback) : Float;
	/**
	   @param	type vrdisplayconnected | vrdisplaydisconnected | vrdisplaypresentchange
	**/
	function addEventListener(type:String, listener:js.html.Event->Dynamic, ?useCapture:Bool) : Void;
}