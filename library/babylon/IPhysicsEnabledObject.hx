package babylon;

extern interface IPhysicsEnabledObject
{
	var position : Vector3;
	var rotationQuaternion : Quaternion;
	var scaling : Vector3;
	@:optional var rotation : Vector3;
	@:optional var parent : Dynamic;
	@:optional function getBoundingInfo() : BoundingInfo;
	@:optional function computeWorldMatrix(force:Bool) : Void;
	@:optional function getChildMeshes() : Array<AbstractMesh>;
	@:optional function getVerticesData(kind:String) : haxe.extern.EitherType<Array<Float>, Float32Array>;
	@:optional function getIndices() : haxe.extern.EitherType<Array<Float>, Int32Array>;
	@:optional function getScene() : Scene;
}