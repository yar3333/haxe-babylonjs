package babylonjs;

@:native("BABYLON.OutlineRenderer")
extern class OutlineRenderer
{
	private var _scene : Dynamic;
	private var _effect : Dynamic;
	private var _cachedDefines : Dynamic;
	var zOffset : Float;

	function new(scene:Scene) : Void;
	function render(subMesh:SubMesh, batch:_InstancesBatch, ?useOverlay:Bool) : Void;
	function isReady(subMesh:SubMesh, useInstances:Bool) : Bool;
}