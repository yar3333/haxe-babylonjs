package babylonjs.babylon;

extern interface WorkerReply
{
	var error : WorkerReplyType;
	var taskType : WorkerTaskType;
	@:optional var payload : Dynamic;
}