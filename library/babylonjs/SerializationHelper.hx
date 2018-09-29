package babylonjs;

@:native("BABYLON.SerializationHelper")
extern class SerializationHelper
{
	static function Serialize<T:Dynamic>(entity:T, ?serializationObject:Dynamic) : Dynamic;
	static function Parse<T:Dynamic>(creationFunction:Void->T, source:Dynamic, scene:Null<Scene>, ?rootUrl:Null<String>) : T;
	static function Clone<T:Dynamic>(creationFunction:Void->T, source:T) : T;
	static function Instanciate<T:Dynamic>(creationFunction:Void->T, source:T) : T;
}