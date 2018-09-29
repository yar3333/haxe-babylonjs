package babylonjs;

extern interface IPhysicsEnabledObject
{
	var position : Vector3;
	var rotationQuaternion : Null<Quaternion>;
	var scaling : Vector3;
	@:optional var rotation : Vector3;
	@:optional var parent : Dynamic;

	function getBoundingInfo() : BoundingInfo;
	function computeWorldMatrix(force:Bool) : Matrix;
	function getWorldMatrix() : Matrix;
	function getChildMeshes(?directDescendantsOnly:Bool) : Array<AbstractMesh>;
	function getVerticesData(kind:String) : Null<haxe.extern.EitherType<Array<Float>, js.html.Float32Array>>;
	function getIndices() : Null<IndicesArray>;
	function getScene() : Scene;
	function getAbsolutePosition() : Vector3;
	function getAbsolutePivotPoint() : Vector3;
	function rotate(axis:Vector3, amount:Float, ?space:Space) : TransformNode;
	function translate(axis:Vector3, distance:Float, ?space:Space) : TransformNode;
	function setAbsolutePosition(absolutePosition:Vector3) : TransformNode;
	function getClassName() : String;
}