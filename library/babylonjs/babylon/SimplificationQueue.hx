package babylonjs.babylon;

@:native("BABYLON.SimplificationQueue")
extern class SimplificationQueue
{
	private var _simplificationArray : Dynamic;
	var running : Bool;

	function new() : Void;
	function addTask(task:ISimplificationTask) : Void;
	function executeNext() : Void;
	function runSimplification(task:ISimplificationTask) : Void;
	private function getSimplifier(task:Dynamic) : Dynamic;
}