package babylon;

extern class SimplificationQueue
{
	private var _simplificationArray : Dynamic/*UNKNOW_TYPE*/;
	var running : Dynamic;
	function new() : Void;
	function addTask(task:ISimplificationTask) : Void;
	function executeNext() : Void;
	function runSimplification(task:ISimplificationTask) : Void;
	private function getSimplifier(task);
}