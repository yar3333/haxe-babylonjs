package babylon;

extern class OutlineRenderer
{
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _effect : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedDefines : Dynamic/*UNKNOW_TYPE*/;
	function new(scene:Scene) : Void;
	function render(subMesh:SubMesh, batch:_InstancesBatch, ?useOverlay:Bool) : Void;
	function isReady(subMesh:SubMesh, useInstances:Bool) : Bool;
}