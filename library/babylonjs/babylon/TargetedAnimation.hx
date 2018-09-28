package babylonjs.babylon;

/**
 * This class defines the direct association between an animation and a target
 */
@:native("BABYLON.TargetedAnimation")
extern class TargetedAnimation
{
	var animation : Animation;
	var target : Dynamic;
}