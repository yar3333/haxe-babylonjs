package babylonjs.babylon;

/**
 * The BoneAxesViewer will attach 3 axes to a specific bone of a specific mesh
 */
@:native("BABYLON.BoneAxesViewer")
extern class BoneAxesViewer extends AxesViewer
{
	var mesh : Null<Mesh>;
	var bone : Null<Bone>;
	var pos : Vector3;
	var xaxis : Vector3;
	var yaxis : Vector3;
	var zaxis : Vector3;

	/**
	 * The BoneAxesViewer will attach 3 axes to a specific bone of a specific mesh
	 */
	@:overload(function(scene:Scene, bone:Bone, mesh:Mesh,?scaleLines:Float): Void{})
	function new(scene:Scene, ?scaleLines:Float) : Void;
	@:overload(function(): Void{})
	override function update(position:Vector3, xaxis:Vector3, yaxis:Vector3, zaxis:Vector3) : Void;
	override function dispose() : Void;
}