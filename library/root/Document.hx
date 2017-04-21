package root;

extern interface Document
{
function exitFullscreen() : Void;
function webkitCancelFullScreen() : Void;
function mozCancelFullScreen() : Void;
function msCancelFullScreen() : Void;
var mozFullScreen : Bool;
var msIsFullScreen : Bool;
var fullscreen : Bool;
var mozPointerLockElement : HtmlElement;
var msPointerLockElement : HtmlElement;
var webkitPointerLockElement : HtmlElement;
}