package babylonjs;

@:native("BABYLON.SceneLoaderProgressEvent")
extern class SceneLoaderProgressEvent
{
	var lengthComputable(default, null) : Bool;
	var loaded(default, null) : Float;
	var total(default, null) : Float;

	function new(lengthComputable:Bool, loaded:Float, total:Float) : Void;
	static function FromProgressEvent(event:js.html.ProgressEvent) : SceneLoaderProgressEvent;
}