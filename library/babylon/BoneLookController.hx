package babylon;

extern class BoneLookController
{
	var target : Vector3;
	var mesh : AbstractMesh;
	var bone : Bone;
	var upAxis : Vector3;
	var adjustYaw : Float;
	var adjustPitch : Float;
	var adjustRoll : Float;
	private var _tmpVec1 : Dynamic/*UNKNOW_TYPE*/;
	private var _tmpVec2 : Dynamic/*UNKNOW_TYPE*/;
	private var _tmpVec3 : Dynamic/*UNKNOW_TYPE*/;
	private var _tmpVec4 : Dynamic/*UNKNOW_TYPE*/;
	private var _tmpMat1 : Dynamic/*UNKNOW_TYPE*/;
	private var _tmpMat2 : Dynamic/*UNKNOW_TYPE*/;
	function new(mesh:AbstractMesh, bone:Bone, target:Vector3, ?options:
	{
		@:optional adjustYaw : Float,
		@:optional adjustPitch : Float,
		@:optional adjustRoll : Float
	}) : Void;
	function update() : Void;
}