package babylonjs;

extern interface Document
{
	var mozFullScreen : Bool;
	var msIsFullScreen : Bool;
	var fullscreen : Bool;
	var mozPointerLockElement : js.html.Element;
	var msPointerLockElement : js.html.Element;
	var webkitPointerLockElement : js.html.Element;

	function mozCancelFullScreen() : Void;
	function msCancelFullScreen() : Void;
}