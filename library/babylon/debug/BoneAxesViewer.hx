package babylon/debug;

extern class BoneAxesViewer extends Debug.AxesViewer
{
	var mesh : Mesh;
	var bone : Bone;
	var pos : Vector3;
	var xaxis : Vector3;
	var yaxis : Vector3;
	var zaxis : Vector3;
	function new(scene:Scene, bone:Bone, mesh:Mesh, ?scaleLines:Float) : Void;
	function update() : Void;
	function dispose() : Void;
}