package root;

extern interface Window
{
function mozIndexedDB(func:Dynamic) : Dynamic;
function webkitIndexedDB(func:Dynamic) : Dynamic;
var msIndexedDB : IDBFactory;
function IDBTransaction(func:Dynamic) : Dynamic;
function webkitIDBTransaction(func:Dynamic) : Dynamic;
function msIDBTransaction(func:Dynamic) : Dynamic;
function IDBKeyRange(func:Dynamic) : Dynamic;
function webkitIDBKeyRange(func:Dynamic) : Dynamic;
function msIDBKeyRange(func:Dynamic) : Dynamic;
var webkitURL : HTMLURL;
function webkitRequestAnimationFrame(func:Dynamic) : Dynamic;
function mozRequestAnimationFrame(func:Dynamic) : Dynamic;
function oRequestAnimationFrame(func:Dynamic) : Dynamic;
var WebGLRenderingContext : js.html.webgl.RenderingContext;
var MSGesture : MSGesture;
var CANNON : Dynamic;
var SIMD : Dynamic;
var AudioContext : js.html.audio.AudioContext;
var webkitAudioContext : js.html.audio.AudioContext;
var PointerEvent : Dynamic;
var Math : Math;
var Uint8Array : Uint8ArrayConstructor;
var Float32Array : Float32ArrayConstructor;
}