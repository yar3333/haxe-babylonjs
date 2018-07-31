package babylon/debug;

extern class AxesViewer
{
	private var _xline : Dynamic/*UNKNOW_TYPE*/;
	private var _yline : Dynamic/*UNKNOW_TYPE*/;
	private var _zline : Dynamic/*UNKNOW_TYPE*/;
	private var _xmesh : Dynamic/*UNKNOW_TYPE*/;
	private var _ymesh : Dynamic/*UNKNOW_TYPE*/;
	private var _zmesh : Dynamic/*UNKNOW_TYPE*/;
	var scene : Scene;
	var scaleLines : Float;
	function new(scene:Scene, ?scaleLines:Float) : Void;
	function update(position:Vector3, xaxis:Vector3, yaxis:Vector3, zaxis:Vector3) : Void;
	function dispose() : Void;
}