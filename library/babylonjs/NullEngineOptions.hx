package babylonjs;

@:native("BABYLON.NullEngineOptions")
extern class NullEngineOptions
{
	var renderWidth : Float;
	var renderHeight : Float;
	var textureSize : Float;
	var deterministicLockstep : Bool;
	var lockstepMaxSteps : Float;
}