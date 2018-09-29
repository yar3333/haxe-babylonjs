package babylonjs;

extern interface BabylonMessage
{
	var taskType : WorkerTaskType;
	var payload : haxe.extern.EitherType<InitPayload, haxe.extern.EitherType<CollidePayload, UpdatePayload>>;
}