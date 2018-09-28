package babylonjs.babylon;

/**
 * Class used to apply inverse kinematics to bones
 * @see http://doc.babylonjs.com/how_to/how_to_use_bones_and_skeletons#boneikcontroller
 */
@:native("BABYLON.BoneIKController")
extern class BoneIKController
{
	private static var _tmpVecs : Dynamic;
	private static var _tmpQuat : Dynamic;
	private static var _tmpMats : Dynamic;
	/**
	 * Gets or sets the target mesh
	 */
	var targetMesh : AbstractMesh;
	/**
	 * Gets or sets the mesh used as pole 
	 */
	var poleTargetMesh : AbstractMesh;
	/**
	 * Gets or sets the bone used as pole
	 */
	var poleTargetBone : Null<Bone>;
	/**
	 * Gets or sets the target position
	 */
	var targetPosition : Vector3;
	/**
	 * Gets or sets the pole target position
	 */
	var poleTargetPosition : Vector3;
	/**
	 * Gets or sets the pole target local offset
	 */
	var poleTargetLocalOffset : Vector3;
	/**
	 * Gets or sets the pole angle
	 */
	var poleAngle : Float;
	/**
	 * Gets or sets the mesh associated with the controller
	 */
	var mesh : AbstractMesh;
	/**
	 * The amount to slerp (spherical linear interpolation) to the target.  Set this to a value between 0 and 1 (a value of 1 disables slerp)
	 */
	var slerpAmount : Float;
	private var _bone1Quat : Dynamic;
	private var _bone1Mat : Dynamic;
	private var _bone2Ang : Dynamic;
	private var _bone1 : Dynamic;
	private var _bone2 : Dynamic;
	private var _bone1Length : Dynamic;
	private var _bone2Length : Dynamic;
	private var _maxAngle : Dynamic;
	private var _maxReach : Dynamic;
	private var _rightHandedSystem : Dynamic;
	private var _bendAxis : Dynamic;
	private var _slerping : Dynamic;
	private var _adjustRoll : Dynamic;
	/**
	 * Gets or sets maximum allowed angle
	 */
	var maxAngle : Float;

	/**
	 * Class used to apply inverse kinematics to bones
	 * @see http://doc.babylonjs.com/how_to/how_to_use_bones_and_skeletons#boneikcontroller
	 */
	function new(mesh:AbstractMesh, bone:Bone, ?options:{ @:optional var targetMesh : AbstractMesh; @:optional var poleTargetMesh : AbstractMesh; @:optional var poleTargetBone : Bone; @:optional var poleTargetLocalOffset : Vector3; @:optional var poleAngle : Float; @:optional var bendAxis : Vector3; @:optional var maxAngle : Float; @:optional var slerpAmount : Float; }) : Void;
	private function _setMaxAngle(ang:Dynamic) : Dynamic;
	/**
	 * Force the controller to update the bones
	 */
	function update() : Void;
}