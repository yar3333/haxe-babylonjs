package babylonjs;

@:native("BABYLON")
extern class BABYLON
{
	static var CollisionWorker : String;
	static var WorkerIncluded : Bool;
	static var CameraInputTypes : {};
	static var ToGammaSpace(default, null) : Float;
	static var ToLinearSpace(default, null) : Dynamic;
	static var Epsilon(default, null) : Dynamic;
}