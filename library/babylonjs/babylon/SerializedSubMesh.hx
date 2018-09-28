package babylonjs.babylon;

extern interface SerializedSubMesh
{
	var position : Float;
	var verticesStart : Float;
	var verticesCount : Float;
	var indexStart : Float;
	var indexCount : Float;
	var hasMaterial : Bool;
	var sphereCenter : Array<Float>;
	var sphereRadius : Float;
	var boxMinimum : Array<Float>;
	var boxMaximum : Array<Float>;
}