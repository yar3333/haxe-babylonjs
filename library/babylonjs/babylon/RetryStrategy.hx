package babylonjs.babylon;

@:native("BABYLON.RetryStrategy")
extern class RetryStrategy
{
	static function ExponentialBackoff(?maxRetries:Float, ?baseInterval:Float) : String->js.html.XMLHttpRequest->Float->Float;
}