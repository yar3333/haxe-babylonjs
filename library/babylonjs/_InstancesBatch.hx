package babylonjs;

/**
 * @hidden
 */
@:native("BABYLON._InstancesBatch")
extern class _InstancesBatch
{
	var mustReturn : Bool;
	var visibleInstances : Array<Null<Array<InstancedMesh>>>;
	var renderSelf : Array<Bool>;
}