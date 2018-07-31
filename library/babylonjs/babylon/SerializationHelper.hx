package babylon;

extern class SerializationHelper
{
	static Serialize<T>(entity:T, ?serializationObject:Dynamic) : Dynamic;
	static Parse<T>(creationFunction:Void->T, source:Dynamic, scene:Scene, ?rootUrl:String) : T;
	static Clone<T>(creationFunction:Void->T, source:T) : T;
}