package babylonjs.babylon;

/**
 * Class used to make a bone look toward a point in space
 * @see http://doc.babylonjs.com/how_to/how_to_use_bones_and_skeletons#bonelookcontroller
 */
@:native("BABYLON.BoneLookController")
extern class BoneLookController
{
	private static var _tmpVecs : Dynamic;
	private static var _tmpQuat : Dynamic;
	private static var _tmpMats : Dynamic;
	/**
	 * The target Vector3 that the bone will look at
	 */
	var target : Vector3;
	/**
	 * The mesh that the bone is attached to
	 */
	var mesh : AbstractMesh;
	/**
	 * The bone that will be looking to the target
	 */
	var bone : Bone;
	/**
	 * The up axis of the coordinate system that is used when the bone is rotated
	 */
	var upAxis : Vector3;
	/**
	 * The space that the up axis is in - BABYLON.Space.BONE, BABYLON.Space.LOCAL (default), or BABYLON.Space.WORLD
	 */
	var upAxisSpace : Space;
	/**
	 * Used to make an adjustment to the yaw of the bone
	 */
	var adjustYaw : Float;
	/**
	 * Used to make an adjustment to the pitch of the bone
	 */
	var adjustPitch : Float;
	/**
	 * Used to make an adjustment to the roll of the bone
	 */
	var adjustRoll : Float;
	/**
	 * The amount to slerp (spherical linear interpolation) to the target.  Set this to a value between 0 and 1 (a value of 1 disables slerp)
	 */
	var slerpAmount : Float;
	private var _minYaw : Dynamic;
	private var _maxYaw : Dynamic;
	private var _minPitch : Dynamic;
	private var _maxPitch : Dynamic;
	private var _minYawSin : Dynamic;
	private var _minYawCos : Dynamic;
	private var _maxYawSin : Dynamic;
	private var _maxYawCos : Dynamic;
	private var _midYawConstraint : Dynamic;
	private var _minPitchTan : Dynamic;
	private var _maxPitchTan : Dynamic;
	private var _boneQuat : Dynamic;
	private var _slerping : Dynamic;
	private var _transformYawPitch : Dynamic;
	private var _transformYawPitchInv : Dynamic;
	private var _firstFrameSkipped : Dynamic;
	private var _yawRange : Dynamic;
	private var _fowardAxis : Dynamic;
	/**
	 * Gets or sets the minimum yaw angle that the bone can look to
	 */
	var minYaw : Float;
	/**
	 * Gets or sets the maximum yaw angle that the bone can look to
	 */
	var maxYaw : Float;
	/**
	 * Gets or sets the minimum pitch angle that the bone can look to
	 */
	var minPitch : Float;
	/**
	 * Gets or sets the maximum pitch angle that the bone can look to
	 */
	var maxPitch : Float;

	/**
	 * Class used to make a bone look toward a point in space
	 * @see http://doc.babylonjs.com/how_to/how_to_use_bones_and_skeletons#bonelookcontroller
	 */
	function new(mesh:AbstractMesh, bone:Bone, target:Vector3, ?options:{ @:optional var maxYaw : Float; @:optional var minYaw : Float; @:optional var maxPitch : Float; @:optional var minPitch : Float; @:optional var slerpAmount : Float; @:optional var upAxis : Vector3; @:optional var upAxisSpace : Space; @:optional var yawAxis : Vector3; @:optional var pitchAxis : Vector3; @:optional var adjustYaw : Float; @:optional var adjustPitch : Float; @:optional var adjustRoll : Float; }) : Void;
	/**
	 * Update the bone to look at the target.  This should be called before the scene is rendered (use scene.registerBeforeRender())
	 */
	function update() : Void;
	private function _getAngleDiff(ang1:Dynamic, ang2:Dynamic) : Dynamic;
	private function _getAngleBetween(ang1:Dynamic, ang2:Dynamic) : Dynamic;
	private function _isAngleBetween(ang:Dynamic, ang1:Dynamic, ang2:Dynamic) : Dynamic;
}