package babylonjs.babylon;

@:native("BABYLON.SceneSerializer")
extern class SceneSerializer
{
	static function ClearCache() : Void;
	static function Serialize(scene:Scene) : Dynamic;
	static function SerializeMesh(toSerialize:Dynamic, ?withParents:Bool, ?withChildren:Bool) : Dynamic;
}