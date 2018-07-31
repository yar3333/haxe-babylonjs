package babylon;

extern class BoneIKController
{
	var targetMesh : AbstractMesh;
	var poleTargetMesh : AbstractMesh;
	var poleTargetBone : Bone;
	var targetPosition : Vector3;
	var poleTargetPosition : Vector3;
	var poleTargetLocalOffset : Vector3;
	var poleAngle : Float;
	var mesh : AbstractMesh;
	var slerpAmount : Float;
	private var _bone1Quat : Dynamic/*UNKNOW_TYPE*/;
	private var _bone1Mat : Dynamic/*UNKNOW_TYPE*/;
	private var _bone2Ang : Dynamic/*UNKNOW_TYPE*/;
	private var _bone1 : Dynamic/*UNKNOW_TYPE*/;
	private var _bone2 : Dynamic/*UNKNOW_TYPE*/;
	private var _bone1Length : Dynamic/*UNKNOW_TYPE*/;
	private var _bone2Length : Dynamic/*UNKNOW_TYPE*/;
	private var _maxAngle : Dynamic/*UNKNOW_TYPE*/;
	private var _maxReach : Dynamic/*UNKNOW_TYPE*/;
	private var _tmpVec1 : Dynamic/*UNKNOW_TYPE*/;
	private var _tmpVec2 : Dynamic/*UNKNOW_TYPE*/;
	private var _tmpVec3 : Dynamic/*UNKNOW_TYPE*/;
	private var _tmpVec4 : Dynamic/*UNKNOW_TYPE*/;
	private var _tmpVec5 : Dynamic/*UNKNOW_TYPE*/;
	private var _tmpMat1 : Dynamic/*UNKNOW_TYPE*/;
	private var _tmpMat2 : Dynamic/*UNKNOW_TYPE*/;
	private var _tmpQuat1 : Dynamic/*UNKNOW_TYPE*/;
	private var _rightHandedSystem : Dynamic/*UNKNOW_TYPE*/;
	private var _bendAxis : Dynamic/*UNKNOW_TYPE*/;
	private var _slerping : Dynamic/*UNKNOW_TYPE*/;
	var maxAngle : Float;
	function new(mesh:AbstractMesh, bone:Bone, ?options:
	{
		@:optional targetMesh : AbstractMesh,
		@:optional poleTargetMesh : AbstractMesh,
		@:optional poleTargetBone : Bone,
		@:optional poleTargetLocalOffset : Vector3,
		@:optional poleAngle : Float,
		@:optional bendAxis : Vector3,
		@:optional maxAngle : Float,
		@:optional slerpAmount : Float
	}) : Void;
	private function _setMaxAngle(ang);
	function update() : Void;
}