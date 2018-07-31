package babylon;

extern interface BabylonMessage
{
	var taskType : WorkerTaskType;
	payload: haxe.extern.EitherType<haxe.extern.EitherType<InitPayload, CollidePayload >, UpdatePayload>;
}