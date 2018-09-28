package babylonjs.babylon;

/**
 * The Axes viewer will show 3 axes in a specific point in space
 */
@:native("BABYLON.AxesViewer")
extern class AxesViewer
{
	private var _xline : Dynamic;
	private var _yline : Dynamic;
	private var _zline : Dynamic;
	private var _xmesh : Dynamic;
	private var _ymesh : Dynamic;
	private var _zmesh : Dynamic;
	var scene : Null<Scene>;
	var scaleLines : Float;

	/**
	 * The Axes viewer will show 3 axes in a specific point in space
	 */
	function new(scene:Scene, ?scaleLines:Float) : Void;
	function update(position:Vector3, xaxis:Vector3, yaxis:Vector3, zaxis:Vector3) : Void;
	function dispose() : Void;
}